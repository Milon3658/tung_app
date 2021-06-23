
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tung_app/features/Authentication/Login/Login1.dart';
import 'package:tung_app/features/Authentication/Login/Login2.dart';
import 'package:tung_app/features/SplashScreen/Presentation/splash_screen.dart';
import 'package:tung_app/features/Authentication/Login/Login3.dart';

class AppRoutes{
  static String INITIAL = "/";
  static String SLIDERPAGE = "/slider_page";
  static String TERMSPAGE = "/terms_page";
  static String NOTICEPAGE = "/notice_page";
  static String PHONEVERIFCATIONPAGE = "/phone_verification_page";
  static String CONTACTANDBUSINESS = "/contact_and_business_page";
  static String BASICINFOPAGE = "/basic_info_page";
  static String NOMINEEINFO = "/nominee_info_page";
  static String ACCOUNTSECURITY = "/account_security";
  static String LOGINPAGE = "/login_page";
  static String FEESPAGE = "/fees_page";

  static String FORGOTPASSWORD = "/forgot_password";

  static String ENSUREACCOUNT = "/ensure_account";

  static String VERIFYACCOUNT = "/verify_account";

  static String SETNEWPASSWORD = "/set_new_password";

  static String AdvancedPAYMENT = "/Advanced_payment";

  static String HOMEPAGE = "/home_page";

  static String PAYNOW = "/pay_now";

  static String REPORTANISSUE = "/report_an_issue";

  static String PAYMENTHISTORY = "/payment_history";

  static String ABOUTMSEAB = "/about_mseab";

  static String TERMSANDPOLICYPAGE = "/terms_and_policy";

  static String CONTACTANDSUPPORT = "/contact_and_support";

  static String WRAPPERPAGE = "/wrapper_page";

  static String FULLPROFILE = "/full_profile";

  static String EDITPROFILE = "/edit_profile";

  static String ADDNEWPOST = "/add_new_post";

  static String SINGLEPOSTPAGE = "/single_post_page";

  static String SINGLEPRODUCTPAGE = "/single_product_page";

  static String CARTPAGE = "/cart_page";

  static String ORDERLIST = "/order_list";

  static String INVOICEPAGE = "/invoice_page";

  static String COMMUNITYSEARCHPAGE = '/community_search_page';

  static List<GetPage> routes = [
    GetPage(page: () => SplashScreen(), name: INITIAL),
    GetPage(page: () => Login1(), name: LOGINPAGE),
    GetPage(page: () => LoginSecond(), name: LOGINPAGE2),
    GetPage(page: () => LoginThree(), name: LOGINPAGE3),
  ];

  static var LOGINPAGE2 = "/login_2";

  static var LOGINPAGE3= "/login_3";
}