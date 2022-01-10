import 'package:flutter/material.dart';
import 'package:ui_challenge/routes/route_name.dart';
import 'package:ui_challenge/widgets/menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        title: const Text('Home UI Challenge'),
        centerTitle: true,
        elevation: 1,
      ),
      body: _MenuGrid(
        travelTrip: () {
          Navigator.pushNamedAndRemoveUntil(
              context, travelDetailRoute, (route) => false);
        },
        ikea: () {
          Navigator.pushNamedAndRemoveUntil(
              context, ikeaHomeRoute, (route) => false);
        },
      ),
    );
  }
}

class _MenuGrid extends StatelessWidget {
  const _MenuGrid({Key? key, this.travelTrip, this.ikea}) : super(key: key);

  final Function()? travelTrip, ikea;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: 3,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: [
        MenuWidget(
          onTap: ikea,
          icon: 'icon',
          label: 'IKEA',
        ),
        MenuWidget(
          onTap: travelTrip,
          icon: 'icon',
          label: 'Travel Trip',
        ),
      ],
    );
  }
}
