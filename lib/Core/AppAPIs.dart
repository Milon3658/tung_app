class AppAPIs {
  static var MAINAPI = "https://mseab.aapbd.com/api/v1/";
  static var APPLINK = "https://mseab.aapbd.com/";
  static var OTPREQUEST = Uri.parse(MAINAPI + "get-otp-to-phone");
  static var VERIFYOTPREQUEST = Uri.parse(MAINAPI + "verify-phone-opt");
  static var REGISTRATION = Uri.parse(MAINAPI + "user-register");
  static var LOGIN = Uri.parse(MAINAPI + "login");
  static var CHANGEPASSWORD = Uri.parse(MAINAPI + "change-password");
  static var GETPAYABLEACCOUNT = Uri.parse(MAINAPI + "get-payable-amount");
  static var GETPAYMENTHISTORY = Uri.parse(MAINAPI + "my-payment-history");
  static var MYDASHBOARD = Uri.parse(MAINAPI + "my-dashboard");
  static var AdvancedPAYMENT = Uri.parse(MAINAPI + "advance-pay");
  static var FEESSSLPAY = MAINAPI + "ssl-pay";
  static var SHOPSSLPAY = MAINAPI + "shop-ssl-pay";
  static var SSLSUCCESS = Uri.parse(MAINAPI + "ssl-pay/success");
  static var SSLFAILER = Uri.parse(MAINAPI + "ssl-pay/fail");
  static var MYPROFILE = Uri.parse(MAINAPI + "my-profile");
  static var MYFULLPROFILE = Uri.parse(MAINAPI + "my-full-profile");
  static var CHECKPHONE = Uri.parse(MAINAPI + "check-phone");
  static var CHECKEMAIL = Uri.parse(MAINAPI + "check-email");
  static var CHECKNID = Uri.parse(MAINAPI + "check-nid");
  static var SUPPORTREPORT = Uri.parse(MAINAPI + "support-report");
  static var GETSLIDERDATA = Uri.parse(MAINAPI + "get-slider-data");
  static var MYPROFILEUPDATE = Uri.parse(MAINAPI + "my-profile-update");
  static var POST = MAINAPI + "post";
  static var NEWSFEED = Uri.parse(MAINAPI + "post/news-feed");
  static var REACT = Uri.parse(MAINAPI + "post/react");
  static var COMMENTREACT = Uri.parse(MAINAPI + "comment/react");
  static var TOP = Uri.parse(MAINAPI + "post/news-feed?orderBy=react");

  static var GETUSERBYNUMBER = Uri.parse(MAINAPI + "get-use-profile-phone");

  static var SENDCOMMENT = Uri.parse(MAINAPI + "comment");

  static var COMMENT = MAINAPI + "comment";

  static var GETCATEGORIES = Uri.parse(MAINAPI + "categories");
  static var PRODUCTLIST = Uri.parse(MAINAPI + "products");
  static var SEARCHPRODUCTLIST = MAINAPI + "products?q=";
  static var SINGLEPRODUCT = MAINAPI + "products/";
  static var PRODUCTIMAGE = MAINAPI + "products-gallery/";

  static Uri PRODUCTSCHECKOUT = Uri.parse(MAINAPI + "products-checkout");

  static String ORDERSLIST = MAINAPI + 'my-product-orders';

  static var FEESNOTIFICATION = Uri.parse(MAINAPI + "notification/fee");
  static var COMMUNITYNOTIFICATION = Uri.parse(MAINAPI + "notification/community");
  static var SHOPNOTIFICATION = Uri.parse(MAINAPI + "notification/shop");
}
