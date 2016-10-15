// Define external methods
global.URISchemer_registerScheme = external_define("URISchemer.dll", "registerURIScheme", dll_cdecl, ty_real, 1, ty_string);
global.URISchemer_requestAdminRights = external_define("URISchemer.dll", "requestAdminRights", dll_cdecl, ty_real, 0);
