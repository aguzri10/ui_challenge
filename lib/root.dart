import 'package:flutter/material.dart';
import 'package:ui_challenge/routes/route_name.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 100),
      () => Navigator.pushNamedAndRemoveUntil(
          context, mainRoute, (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white);
  }
}
