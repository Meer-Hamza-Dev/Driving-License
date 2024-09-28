// ignore_for_file: prefer_const_constructors

import 'package:driving_license/app/im_school/Accept%20Booking/acceptbookingview.dart';
import 'package:driving_license/app/im_school/Add%20Vehicle/addvehicleview.dart';
import 'package:driving_license/app/im_school/Edit%20Profile/Editprofileview.dart';
import 'package:driving_license/app/im_school/Jack%20Odin/Jackview.dart';
import 'package:driving_license/app/im_school/Setting/settingview.dart';
import 'package:driving_license/app/im_school/Student/studentview.dart';
import 'package:driving_license/app/im_school/Today%20Classes%20/todayview.dart';
import 'package:driving_license/app/im_school/Trainer%20info/trainerinfoview.dart';
import 'package:driving_license/app/im_school/Vehicles/vehiclesview.dart';
import 'package:driving_license/app/im_school/schedule/scheduleView.dart';
import 'package:driving_license/app/auth/binding/auth_binding.dart';
import 'package:driving_license/app/auth/views/login_view.dart';
import 'package:driving_license/app/auth/views/profile_details.dart';
import 'package:driving_license/app/auth/views/register_view.dart';
import 'package:driving_license/app/auth/views/verification_view.dart';
import 'package:driving_license/app/im_school/home/home_view.dart';
import 'package:driving_license/app/im_student/ChoosePayment/ChossePayment.dart';
import 'package:driving_license/app/im_student/ClassCourse/ClassCourse.dart';
import 'package:driving_license/app/im_student/CompletedCourse/CompletedCourse.dart';
import 'package:driving_license/app/im_student/MyCourse/MyCourse.dart';
import 'package:driving_license/app/im_student/Schoolinfo/Schoolinfo.dart';
import 'package:driving_license/app/onboarding/onboarding_view.dart';
import 'package:driving_license/app/onboarding/onboarding_binding.dart';
import 'package:driving_license/app/splash/splash_binding.dart';
import 'package:driving_license/app/splash/splash_screen.dart';
import 'package:driving_license/app/im_school/vehicle_details/vehicle_details_view.dart';
import 'package:driving_license/app/im_school/wallet/wallet_view.dart';
import 'package:driving_license/app/im_student/notification/notification.dart';
import 'package:driving_license/app/im_student/select_schedule/select_schedule.dart';
import 'package:driving_license/app/im_student/setting/student_setting.dart';
import 'package:driving_license/app/im_student/student_home/student_home.dart';
import 'package:get/get.dart';
import 'app_pages.dart';

class AppPages {
  static const INITIAL = Routes.splashScreenRoute;
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.splashScreenRoute,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.onBoardingScreenRoute,
      page: () => OnBoarding(),
      binding: OnBoardingBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.loginViewRoute,
      page: () => LogInView(),
      transition: Transition.fadeIn,
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.registerRoute,
      page: () => RegisterView(),
      binding: AuthBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.verificationRoute,
      page: () => const VerificationView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.profileRoute,
      page: () => const ProfileDetails(),
      binding: AuthBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.homeRoute,
      page: () => HomeView(),
      // binding: AuthBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.scheduleRoute,
      page: () => Scheduleview(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.classesRoute,
      page: () => ClassesView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.jackOdinRoute,
      page: () => JackOdin(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.vehicleRoute,
      page: () => Vehicles(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.vehicleDetailRoute,
      page: () => VehicleDetailsView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.addVehicleRoute,
      page: () => AddVehicle(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.trainerInfoRoute,
      page: () => Trainer_Info(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.studentRoute,
      page: () => Student(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.settingRoute,
      page: () => Setting(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.editProfileRoute,
      page: () => EditProfile(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.acceptBookRoute,
      page: () => AcceptBooking(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.walletViewRoute,
      page: () => WalletView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.studentHomeRoute,
      page: () => StudentHome(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.selectScheduleRoute,
      page: () => SelectSchedule(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.notificationRoute,
      page: () => Notification(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.studentSettingRoute,
      page: () => StudentSetting(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.choosePaymentRoute,
      page: () => Choose_Payment(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.myCourseRoute,
      page: () => My_Course(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.classCourseRoute,
      page: () => ClassCourse(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.schoolinfoRoute,
      page: () => Schoolinfo(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.completeCourseRoute,
      page: () => Completed_Course(),
      transition: Transition.fadeIn,
    ),
  ];
}
