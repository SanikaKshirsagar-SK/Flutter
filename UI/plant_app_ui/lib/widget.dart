import 'package:flutter/material.dart';
import 'package:get/get.dart';

TextStyle textStyleData({
  String? fontFamily,
  FontWeight? fontWeight,
  double? fontSize,
  Color? color,
  double? height,
  List<Shadow>? shadows,
}) {
  return TextStyle(
    fontFamily: fontFamily ?? 'kalam',
    fontWeight: fontWeight ?? FontWeight.w900,
    fontSize: fontSize ?? 14,
    color: color ?? const Color.fromRGBO(13, 13, 14, 1),
    height: height ?? 33 / 22,
    shadows: shadows,
  );
}

Container buttonStyle(
    {required String buttonText,
    Color? color,
    Color? textColor,
    double? textSize,
    FontWeight? textWeight,
    bool showIcon = false,
    required BuildContext context}) {
  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      gradient: LinearGradient(
        colors: [
          color ?? const Color.fromRGBO(62, 102, 24, 1),
          color ?? const Color.fromRGBO(124, 180, 70, 1)
        ],
      ),
      boxShadow: const [
        BoxShadow(
          offset: Offset(0, 20),
          color: Color.fromRGBO(0, 0, 0, 0.15),
          blurRadius: 40,
          spreadRadius: 40,
        )
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          buttonText,
          style: textStyleData(
            color: textColor ?? Colors.black,
            fontSize: textSize ?? 18,
            fontWeight: textWeight ?? FontWeight.bold,
          ),
        ),
        if (showIcon)
          const Row(
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
                size: 24,
              )
            ],
          )
      ],
    ),
  );
}
Widget customTextField({
  required TextEditingController controller,
  String hintText = "",
  Color color = const Color.fromRGBO(164, 164, 164, 1),
  TextInputType keyboardType = TextInputType.number,
  IconData? prefixIcon,
  bool obscureText = false,
}) {
  return TextField(
    controller: controller,
    style: textStyleData(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    decoration: InputDecoration(
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          width: 1,
          color: Color.fromRGBO(204, 211, 196, 1),
        ),
      ),
      prefixIcon: prefixIcon != null
          ? Icon(
              prefixIcon,
              size: 17,
              color: Colors.black,
            )
          : null,
      hintText: hintText,
      hintStyle: textStyleData(
        fontWeight: FontWeight.w400,
        fontSize: 13,
        height: 15.73 / 13,
        color: color,
      ),
    ),
    obscureText: obscureText,
    keyboardType: keyboardType,
  );
}class ContainerView extends StatelessWidget {
  final Widget child;
  final double padding;
  final Color? backgroundColor;

  const ContainerView({
    required this.child,
    this.padding = 50,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: padding),
      decoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color(0xFFEAEEF9), blurRadius: 1, offset: Offset(4.5, 4.5))
        ],
        color: backgroundColor ?? const Color(0xFFFFFFFF),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(100),
          bottomLeft: Radius.circular(100),
        ),
      ),
      child: child,
    );
  }
}

// Widget createSearchView({required IconData icon, required String text, required }) {
//   return customTextFormField(
//     child: Container(
//       margin: const EdgeInsets.only(top: 30),
//       padding: const EdgeInsets.only(left: 45, right: 45),
//       height: 50,
//       decoration: const BoxDecoration(
//         boxShadow: <BoxShadow>[
//           BoxShadow(
//               color: Color(0xFFE7EEF8), blurRadius: 1.0, offset: Offset(2.6, 2.6))
//         ],
//         color: Color(0xFFFFFFFF),
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(45.0),
//           bottomLeft: Radius.circular(45.0),
//         ),
//       ),
//       child: Row(
//         children: <Widget>[
//           Icon(icon),
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0),
//             child: Text(
//               text,
//               style: const TextStyle(
//                 fontSize: 20,
//                 color: Colors.black,
//               ),
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }

Widget createSearchView({
  required IconData icon,
  required String hintText,
  required TextEditingController controller,
  required VoidCallback onTap,
}) {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    padding: const EdgeInsets.only(left: 45, right: 45),
    height: 50,
    decoration: const BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Color(0xFFE7EEF8), blurRadius: 1.0, offset: Offset(2.6, 2.6))
      ],
      color: Color(0xFFFFFFFF),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(45.0),
        bottomLeft: Radius.circular(45.0),
      ),
    ),
    child: Row(
      children: <Widget>[
        Icon(icon),
        Expanded(
          child: customTextField(
            controller: controller,
            hintText: hintText,
            color: const Color.fromRGBO(164, 164, 164, 1),
            keyboardType: TextInputType.text,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Icon(Icons.search),
        ),
      ],
    ),
  );
}
List<Color> colorsList = [
  const Color.fromRGBO(232, 233, 224, 1), // E8E9E0
  const Color.fromRGBO(196, 200, 172, 1), // C4C8AC
  const Color.fromRGBO(146, 160, 121, 1), // 92A079
  const Color.fromRGBO(109, 126, 95, 1), // 6D7E5F
  const Color.fromRGBO(69, 85, 61, 1), // 45553D
];

AppBar customAppBar({
  required String title,
  Widget? leading,
  List<Widget>? actions,
}) {
  return AppBar(
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    leading: leading,
    title: Text(
      title,
      style: textStyleData(
          fontSize: 20, fontFamily: 'kalam', fontWeight: FontWeight.bold),
    ),
    actions: actions,
  );
}

TextStyle textStyleHeadingData({Color? color}) {
  return TextStyle(
      fontFamily: 'kalam',
      fontSize: 30,
      fontWeight: FontWeight.w600,
      height: 36 / 36,
       color: color ??  const Color.fromRGBO(13, 13, 14, 1),
  );
}

TextStyle textStyleData1(
    double fSize, int fWeight, double fHeight, List<dynamic> colors) {
  return TextStyle(
      fontFamily: 'kalam',
      fontSize: fSize,
      fontWeight: FontWeight.values[(fWeight ~/ 100) - 1],
      height: fHeight / fSize,
      color: Color.fromRGBO(
          colors[0], colors[1], colors[2], colors[3].toDouble()));
}

TextStyle textStyleData16() {
  return const TextStyle(
      fontFamily: 'kalam', fontSize: 16, fontWeight: FontWeight.w400);
}

TextStyle textStyleData18({Color? color}) {
  return TextStyle(
    fontFamily: 'kalam',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: color ?? const Color.fromRGBO(13, 13, 14, 1),
  );
}

TextStyle textStylAppBarData() {
  return const TextStyle(
      fontFamily: 'kalam',
      fontSize: 22,
      fontWeight: FontWeight.w800,
      color: Color.fromRGBO(13, 13, 14, 1));
}

TextStyle textStyleData16grey() {
  return const TextStyle(
      fontFamily: 'kalam',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(121, 119, 128, 1));
}

SizedBox sizedBox20() {
  return const SizedBox(
    height: 20,
  );
}

SizedBox sizedBox10() {
  return const SizedBox(
    height: 10,
  );
}

SizedBox sizedBoxWidth10() {
  return const SizedBox(
    width: 10,
  );
}

SizedBox sizedBoxWidth20() {
  return const SizedBox(
    width: 10,
  );
}

Container customTextField1(String hintText, {
  required TextEditingController controller,
  String? label,
  bool obscureText = false,
}) {
  return Container(
    decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 3),
              color: Color.fromRGBO(0, 0, 0, 0.15)),
        ]),
    child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(
          fontFamily: 'kalam',
          fontSize: 14,
        ),
        decoration: InputDecoration(
            labelText: label,
            labelStyle: label != null ? textStyleData1(12, 400, 18, [0, 0, 0, 0.4]) : null,
            hintText: hintText,
            
            hintStyle: textStyleData1(12, 400, 18, [0, 0, 0, 0.4]),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide.none))),
  );
}

Container customTextFormField(String hintText, {
  required TextEditingController controller,
  String? label,
  bool obscureText = false,
  String? validatorText,
  required String? validator,
}) {
  return Container(
    decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 3),
              color: Color.fromRGBO(0, 0, 0, 0.15)),
        ]),
    child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(
          fontFamily: 'kalam',
          fontSize: 14,
        ),
        decoration: InputDecoration(
            labelText: label,
            labelStyle: label != null ? textStyleData1(12, 400, 18, [0, 0, 0, 0.4]) : null,
            hintText: hintText,
            hintStyle: textStyleData1(12, 400, 18, [0, 0, 0, 0.4]),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide.none)),
        validator: (value) {
          if (value!.isEmpty) {
            return validatorText;
          }
          return null;
        }),
  );
}

// Container customButton(
//     {required void Function()? onPressed, required String buttonText}) {
//   return Container(
//       height: 49,
//       width: double.infinity,
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             backgroundColor: const Color.fromRGBO(255, 122, 0, 1)),
//         onPressed: onPressed,
//         child: Text(
//           buttonText,
//           style: textStyleData1(25, 700, 30, [255, 255, 255, 1]),
//         ),
//       ));
// }

SizedBox customButtonRounded(
    {Color? color,
    double? fontSize,
    int? fontWeight,
    List<dynamic>? textColor,
    required void Function()? onPressed,
    required String buttonText}) {
  return SizedBox(
    height: 62,
    // width: double.infinity,
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
                color ?? const Color.fromRGBO(13, 13, 14, 1)),
            shape: WidgetStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90))),
            alignment: Alignment.center),
        onPressed: onPressed,
        child: Text(buttonText,
            style:
                textStyleData1(fontSize ?? 22, fontWeight ??  400, 18, textColor ?? [255, 255, 255, 1]))),
  );
}

SizedBox customButtonMovetoCart(
    {Color? color,
    List<dynamic>? textColor,
    required void Function()? onPressed,
    required String buttonText}) {
  return SizedBox(
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
                color ?? const Color.fromRGBO(255, 122, 0, 1)),
            shape: WidgetStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            alignment: Alignment.center),
        onPressed: onPressed,
        child: Text(buttonText,
            style:
                textStyleData1(18, 400, 18, textColor ?? [255, 255, 255, 1]))),
  );
}

AppBar customAppBar1({
  required String title,
  Color? backgroundColor,
  Widget? leading,
  List<Widget>? actions,
}) {
  return AppBar(
    title: Text(
      title,
      style: textStylAppBarData(),
    ),
    centerTitle: true,
    backgroundColor: backgroundColor ?? const Color.fromRGBO(255, 255, 255, 1),
    leading: leading,
    actions: actions,
    automaticallyImplyLeading: false,
  );
}

SizedBox customButtonReorder(
    {Color? color,
    List<dynamic>? textColor,
    Color? borderColor,
    required void Function()? onPressed,
    required String buttonText}) {
  return SizedBox(
    height: 30,
    width: Get.width / 3.5,
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                color ?? const Color.fromRGBO(255, 255, 255, 1)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                        color:
                            borderColor ?? const Color.fromRGBO(255, 122, 0, 1),
                        width: 1.5))),
            alignment: Alignment.center),
        onPressed: onPressed,
        child: Text(buttonText,
            style: textStyleData1(18, 400, 18, textColor ?? [255, 122, 0, 1]))),
  );
}

Widget shadedContainer(Widget child,
    {List<PositionedPosition> positions = const []}) {
  return Stack(
    children: [
      child,
      if (positions.contains(PositionedPosition.bottomLeft)) bottomLeft(),
      if (positions.contains(PositionedPosition.bottomRight)) bottomRight(),
      if (positions.contains(PositionedPosition.topLeft)) topLeft(),
      if (positions.contains(PositionedPosition.topRight)) topRight(),
    ],
  );
}

enum PositionedPosition { none, bottomLeft, bottomRight, topLeft, topRight }

Positioned bottomLeft() {
  return Positioned(
    bottom: 0,
    left: 0,
    child: ClipRect(
      child: Transform.translate(
        offset: const Offset(-75, 95),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(118, 152, 75, 1), // Orange color
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6), // Faint border
                spreadRadius: 10,
                blurRadius: 20,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Positioned bottomRight() {
  return Positioned(
    bottom: 0,
    right: 0,
    child: ClipRect(
      child: Transform.translate(
        offset: const Offset(100, 125),
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(118, 152, 75, 1), // Orange color
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6), // Faint border
                spreadRadius: 10,
                blurRadius: 20,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Positioned topLeft() {
  return Positioned(
    top: 0,
    left: 0,
    child: ClipRect(
      child: Transform.translate(
        offset: const Offset(-70, -90),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(118, 152, 75, 1), // Orange color
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9), // Faint border
                spreadRadius: 10,
                blurRadius: 40,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Positioned topRight() {
  return Positioned(
    top: 0,
    right: 0,
    child: ClipRect(
      child: Transform.translate(
        offset: const Offset(100, -125),
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(118, 152, 75, 1), // Orange color
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9), // Faint border
                spreadRadius: 10,
                blurRadius: 40,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


class ContainerView1 extends StatelessWidget {
  final Widget child;
  final double padding;
  final Color? backgroundColor;

  const ContainerView1({
    required this.child,
    this.padding = 30,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(vertical: padding),
      decoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Color(0xFFEAEEF9), blurRadius: 1, offset: Offset(4.5, 4.5))
        ],
        color: backgroundColor ?? const Color(0xFFFFFFFF),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(100),
          bottomLeft: Radius.circular(100),
        ),
      ),
      child: child,
    );
  }
}
