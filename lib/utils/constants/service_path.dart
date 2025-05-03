class ServicePath {
  ServicePath._();

  static const String basePath = "https://auth.mazaya.biz.id";
  static const String version = "/v1";

  static const String authRegister = "/auth/register";
  static const String authLogin = "/auth/login";
  static const String authLogout = "/auth/logout";
  static const String authRefreshToken = "/auth/refresh-token";
  static const String authMe = "/auth/me";
  static const String authCheckAccess = "/auth/check-access";

  // Portal
  static const String portal = "/portal";
  static const String portalById = "/portal/:id";

  // Function
  static const String function = "/function";
  static const String functionById = "/function/:id";

  // User
  static const String user = "/user";
  static const String userById = "/user/:id";

  // Group
  static const String group = "/group";
  static const String groupById = "/group/:id";

  // ACL
  static const String acl = "/acl";
}