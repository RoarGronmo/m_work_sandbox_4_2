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
    return PublicClientApplication(
      Configuration()
        ..auth = (BrowserAuthOptions()
          ..clientId = m_work_config.mWorkAuthWebClientId
          ..authority = m_work_config.mWorkAuthWebAuthority
        )
        ..system = (BrowserSystemOptions()
          ..loggerOptions = (LoggerOptions()
            ..loggerCallback = (LogLevel logLevel, String message, bool containsPii) {
              if(containsPii){
                return;
              }
              print("AuthManagerWeb: [$logLevel] $message");
            }
            ..logLevel = LogLevel.verbose
            )
        )
    );
  }

  @override
  String getActiveAccount() {
    // TODO: implement getActiveAccount
    throw UnimplementedError();
  }

  @override
  String? getSession() {
    // TODO: implement getSession
    throw UnimplementedError();
  }

  @override
  bool isLoggedIn() {
    // TODO: implement isLoggedIn
    throw UnimplementedError();
  }

  @override
  Future<String> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}