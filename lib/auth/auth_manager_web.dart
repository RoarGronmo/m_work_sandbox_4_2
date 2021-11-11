import 'package:flutter/material.dart';

import 'auth_manager_interface.dart';
import 'package:m_work_sandbox_4_2/services/api_service.dart';
import 'package:msal_js/msal_js.dart';
import 'package:m_work_sandbox_4_2/common/m_work_config.dart' as m_work_config;

AuthManager getManager() => AuthManagerWeb();

class AuthManagerWeb extends AuthManager {
  static AccountInfo? _accountInfo;
  static String? _sessionId;

  static final PublicClientApplication publicClientApplication = init();

  static init(){

    print("AuthManagerWeb.init(): opening...");
    print("AuthManagerWeb.init(): clientId = ${m_work_config.mWorkAuthWebClientId}");
    print("AuthManagerWeb.init(): authority = ${m_work_config.mWorkAuthWebAuthority}");

    PublicClientApplication pca =
    PublicClientApplication(
      Configuration()
        ..auth = (BrowserAuthOptions()
          ..clientId = m_work_config.mWorkAuthWebClientId
          ..authority = m_work_config.mWorkAuthWebAuthority)
        ..system = (BrowserSystemOptions()
          ..loggerOptions = (LoggerOptions()
            ..loggerCallback = (LogLevel logLevel, String message, bool containsPii) {
              if(containsPii){
                return;
              }
              print("AuthManagerWeb.init(): [$logLevel] $message");
            }
            ..logLevel = LogLevel.verbose)
        ),
    );

    print("AuthManagerWeb.init(): pca.hashCode = ${pca.hashCode}");

    return pca;
  }

  @override
  String getActiveAccount() {
    return _accountInfo!.username;
  }

  @override
  String? getSession() {
    return _sessionId;
  }

  @override
  bool isLoggedIn() {
    print("AuthManagerWeb.isLoggendIn(): ${_accountInfo?.username}");
    return _accountInfo?.username != null ? true : false;
  }

  @override
  Future<String> login() async {
    print("AuthManagerWeb.login(): opening...");

    try{
      print("AuthManagerWeb.login(): waiting for publicClientApplication");
      final AuthenticationResult? redirectResult =
          await publicClientApplication.handleRedirectFuture();
      print("AuthManagerWeb.login() passed result");

      if(redirectResult != null){
        //Successfully logged in
        print("Redirect login successful. Name: ${redirectResult.account?.name}");

        //Collect the sessionId
        await APIServiceMWork()
            .loginSession(redirectResult.accessToken)
            .then((sid) => {
              _sessionId = sid
            });

        publicClientApplication.setActiveAccount(redirectResult.account);

        return redirectResult.accessToken;

      } else {
        final List<AccountInfo> accounts = publicClientApplication.getAllAccounts();

        if (accounts.isNotEmpty){
          //An account is logged in, set the first one as active
          //Should give warning that more than one
          publicClientApplication.setActiveAccount(accounts.first);

        }
      }

    } on AuthException catch (exception) {
      //Give login error
      print("AuthManagerWeb.login(): ${exception.message}");
    }



    try{
      final response = await publicClientApplication.loginPopup(
        PopupRequest()..scopes = m_work_config.mWorkAuthWebScope);

      _accountInfo = response.account;

      await APIServiceMWork()
          .loginSession(response.accessToken)
          .then((sid) => {
            _sessionId = sid,
          });

      print("AuthManagerWeb.login(): popup login successful: ${_accountInfo?.name}");

      return response.accessToken;

    } on AuthException catch (exception){
      print("AuthManagerWeb.login(): ${exception.message}");
      return "Empty";
    }

  }

  @override
  Future<void> logout() async {
    publicClientApplication.logoutRedirect();
  }

  @override
  Future<String?> getAccessToken() {
    // TODO: implement getAccessToken
    publicClientApplication.
  }
}