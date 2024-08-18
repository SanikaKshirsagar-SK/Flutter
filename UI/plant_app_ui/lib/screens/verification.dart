// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:plant_app_ui/widget.dart';

// import 'home.dart';
// import 'login.dart';

// class Verification extends StatefulWidget {
//   const Verification({super.key});

//   @override
//   State<Verification> createState() => _VerificationState();
// }

// class _VerificationState extends State<Verification> {
//   TextEditingController firstBox = TextEditingController();
//   TextEditingController secondBox = TextEditingController();
//   TextEditingController thirdBox = TextEditingController();
//   TextEditingController fourthBox = TextEditingController();

//   Widget buildOTPInputField(TextEditingController controller) {
//     return Container(
//       height: 56,
//       width: 56,
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(8)),
//         color: const Color.fromRGBO(255, 255, 255, 1),
//         boxShadow: const [
//           BoxShadow(
//             offset: Offset(0, 8),
//             blurRadius: 20,
//             color: Color.fromRGBO(0, 0, 0, 0.6),
//           ),
//         ],
//         border: Border.all(
//           width: 1,
//           color: const Color.fromRGBO(204, 211, 196, 1),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         child: TextField(
//           controller: controller,
//           maxLength: 1,
//           decoration: const InputDecoration(
//             counterText: '',
//             border: InputBorder.none,
//           ),
//           keyboardType: TextInputType.number,
//           style: const TextStyle(
//             color: Color.fromRGBO(0, 0, 0, 1),
//             fontWeight: FontWeight.w800,
//             fontSize: 28,
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 25),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => const Login(),
//                         ),
//                       );
//                     },
//                     child: const Icon(
//                       Icons.arrow_back_ios_new_outlined,
//                       size: 30,
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                     ),
//                   ),
//                 ),
//                 const Spacer(),
//                 SvgPicture.asset(
//                   "assets/designRight.svg",
//                 ),
//               ],
//             ),
//             Padding(
//                 padding: const EdgeInsets.all(25),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Verification",
//                       style: textStyleData(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 30,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       "Enter the OTP code from the phone we just sent you.",
//                       style: textStyleData(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         buildOTPInputField(firstBox),
//                         buildOTPInputField(secondBox),
//                         buildOTPInputField(thirdBox),
//                         buildOTPInputField(fourthBox),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 45,
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "Don’t receive OTP code! ",
//                           style: textStyleData(
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                         Text(
//                           "Resend",
//                           style: textStyleData(
//                             fontWeight: FontWeight.w600,
//                           ),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(builder: (context) => const HomeScreen()),
//                         );
//                       },
//                       child: buttonStyle(
//                         buttonText: 'Submit',
//                         textColor: const Color.fromRGBO(255, 255, 255, 1),
//                         textSize: 22,
//                         textWeight: FontWeight.w800,
//                         context: context,
//                       ),
//                     ),
//                   ],
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
