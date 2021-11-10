import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';
import 'package:m_work_sandbox_4_2/services/api_service.dart';
import 'auth_manager_interface.dart';
import 'package:m_work_sandbox_4_2/common/m_work_config.dart' as m_work_config;
import 'package:jwt_decode/jwt_decode.dart';

AuthManager getManager() => AuthManagerNative();

class AuthManagerNative extends AuthManager {
  static String? _accessToken;
  static String? _sessionId;

  static final Config config = Config(
      tenant: m_work_config.mWorkAuthNativeTenant,
      clientId: m_work_config.mWorkAuthNativeClientId,
      redirectUri: m_work_config.mWorkAuthNativeRedirectUri,
      scope: m_work_config.mWorkAuthNativeScope);

  final AadOAuth aadOAuth = AadOAuth(config);

  @override
  Future<String> login() async {
    try{
      print("AuthManagerNative: starting login from Native client");
      await aadOAuth.login().then((value) async => {
        print("AuthManagerNative: auth return"),
        _accessToken = await aadOAuth.getAccessToken(),
        await APIServiceMWork()
            .loginSession(_accessToken!)
            .then((sid) => {
              print("Session id: $sid"),
              _sessionId = sid
        })
      });
      return _accessToken.toString();
    }catch(error){
      print("AuthManagerNative login error: $error");
      throw Error();
    }
  }

  @override
  String getActiveAccount() {
    try{
      if(_accessToken!=null) {
        Map<String, dynamic> payload = Jwt.parseJwt(_accessToken!);
        print("JWT payload: $payload");
        return payload.toString();
      }
      else{
        return "No valid access token (null)";
      }
    }catch(error){

      return "An error occurred while parsing access token or access token is not a valid access token";
    }


  }

  @override
  String? getSession() {
    return _sessionId;
  }

  @override
  bool isLoggedIn() {
    return _accessToken != null ? true : false;
  }

  @override
  Future<void> logout() async {
    print("Logging out...");
    aadOAuth.logout();
    print("Access token after logout: $_accessToken");
  }

}