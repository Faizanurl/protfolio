import 'package:flutter/material.dart';
import 'package:profile/view/constants.dart';
class CollageScreen extends StatelessWidget {
  const CollageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Constants().white,
      child: Image.asset("assets/collage.jpg"),
    );
  }
}