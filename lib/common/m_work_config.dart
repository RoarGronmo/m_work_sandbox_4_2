const String mWorkEndpoint = 'https://api.norva24.no/app/dev/8/service/execute.aspx';

//common

const String mWorkAuthTenant = '294c7ede-2387-42ab-bbff-e5eb67ca3aee';
const String mWorkAuthClientId = 'bbe45ebc-fb38-48d8-8abd-9c5a9d38a6fd';
const String mWorkAuthScope = 'openid profile offline_access';
const List<String> mWorkAuthScopeList = ['openid', 'profile', 'offline_access'];
const String mWorkAuthRedirectUri = 'https://login.live.com/oauth20_desktop.srf';
const String mWorkAuthAuthorityPrefix = "https://login.microsoftonline.com/";

//native

const String mWorkAuthNativeTenant = mWorkAuthTenant;
const String mWorkAuthNativeClientId = mWorkAuthClientId;
const String mWorkAuthNativeScope = mWorkAuthScope;
const String mWorkAuthNativeRedirectUri = mWorkAuthRedirectUri;

//web
const String mWorkAuthWebClientId = mWorkAuthClientId;
const String mWorkAuthWebAuthority = "$mWorkAuthAuthorityPrefix$mWorkAuthTenant";
const List<String> mWorkAuthWebScope = mWorkAuthScopeList;


//api
const String mWorkApiUrl = 'https://api.norva24.no';
const String mWorkApiPort = '5011';




