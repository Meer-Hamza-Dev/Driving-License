// ignore_for_file: non_constant_identifier_names

class ApiConstant {
  static String baseURL = 'http://95.217.178.239/myhive-apis/api/v1/';

  //Authentication
  static const String register = 'register';
  static const String verifyCode = 'verify-code';
  static const String resendCode = 'resend-code';
  static const String services = 'services';
  static const String completeProfile = 'customer/profile';
  static const String customerDoc = 'customer-documents';
  static const String cities = 'location-cities';
  static const String user_profile = 'user-profile';



  static const String get_services = 'services';
  static const String customer_documents = 'customer-documents';




  //Trades Profile
  static const String trades_category = 'trade-categories';
  static const String add_trades = 'provider-trades';
  static const String get_trades = 'provider-trades/';



  //tools
  static const String tool_category = 'tool-categories';
  static const String tool_sub_category = 'tool/category_id/';
  static const String add_tools = 'provider-tools';



  //machine
  static const String machine_category = 'machine-categories';
  static const String machine_sub_category = 'machine/category-id/';
  static const String add_machine = 'provider-machines';


  //Safety Kits
  static const String change_status_safety_kits = 'change-safety-status/';


  //profile
  static const String profilePicture = 'customer/profile/picture';
  static const String updateProfile = 'customer/profile';


  // request

  static const String cancelReason = 'cancel-reasons';
  static const String locationUpdate = 'customer-location/current';
  static const String online_status = 'change-online-status/';
  static const String statusList = 'online-status';
  static const String bookings_data = 'bookings-provider';
  static const String myJobs = 'bookings';
  static const String bookings_detail = 'bookings';
  static const String create_bid = 'booking';
  static const String changeStatus = 'change-booking-status';
  static const String cancelBookings = 'cancel-booking';
  static const String providerReached = 'provider-reached';
  static const String verifyProvider = 'verify-provider';
  static const String completeBooking = 'bookings/update/';
  static const String addReview = 'add-review';
  static const String getReview = 'provider-reviews/';
}
