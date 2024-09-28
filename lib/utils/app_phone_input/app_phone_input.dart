// // ignore_for_file: deprecated_member_use

// import 'package:driving_license/utils/app_colors/app_colors.dart';
// import 'package:flutter/material.dart';


// class AppPhoneInput extends StatelessWidget {
//   AppPhoneInput(
//       {super.key,
//       required this.onChanged,
//       required this.onCountryChanged,
//       this.errorText,
//       this.readOnly=false,
//       this.showCur=true,
//       this.controller,
//       this.initialCountryCode = 'AE'});

//   final ValueChanged<PhoneNumber?> onChanged;
//   final String? errorText;
//   final controller;
//   bool  readOnly;
//   bool showCur;
//   final ValueChanged<Country> onCountryChanged;
//   String initialCountryCode;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         IntlPhoneField(
//           dropdownIconPosition: IconPosition.trailing,
//           controller: controller,

//           initialCountryCode: initialCountryCode,
//           languageCode: "en",
//           textInputAction: TextInputAction.done,
//           dropdownIcon: Icon(
//             Icons.arrow_drop_down,
//             size: 34,
//             color: AppColors.grey_color,
//           ),
//           readOnly: readOnly,
//           showCountryFlag: showCur,
//           pickerDialogStyle: PickerDialogStyle(backgroundColor: Colors.white),
//           flagsButtonPadding: const EdgeInsets.only(left: 10),
//           onCountryChanged: onCountryChanged,
//           dropdownTextStyle:
//               TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//           decoration: InputDecoration(
//             hintText: "78 9087 8827",
//             hintStyle: TextStyle(
//                 color: Colors.grey.shade300, fontWeight: FontWeight.normal),
//             fillColor: Colors.transparent,
//             filled: true,

//             border: OutlineInputBorder(
//               borderSide: BorderSide(color: AppColors.grey_color),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             errorBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: Colors.red, width: 0.5),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             focusedErrorBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: Colors.red, width: 0.5),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppColors.grey_color),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppColors.grey_color),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             disabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: AppColors.grey_color),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             errorStyle: const TextStyle(fontSize: 0),
//             counterStyle: const TextStyle(fontSize: 0),
//           ),
//           onChanged: onChanged,
//         ),
//         if (errorText!.isNotEmpty)
//           Padding(
//             padding: const EdgeInsets.only(top: 4, left: 16, right: 16),
//             child: Text(errorText!,
//                 style: const TextStyle(color: Colors.red, fontSize: 9)),
//           )
//       ],
//     );
//   }
// }
