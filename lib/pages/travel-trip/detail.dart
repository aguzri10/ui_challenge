import 'package:flutter/material.dart';

class DetailTrip extends StatefulWidget {
  const DetailTrip({Key? key}) : super(key: key);

  @override
  State<DetailTrip> createState() => _DetailTripState();
}

class _DetailTripState extends State<DetailTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://media-cdn.tripadvisor.com/media/photo-s/18/4f/7d/fc/caption.jpg',
            fit: BoxFit.cover,
            height: 400,
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              height: MediaQuery.of(context).size.height - 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: Container(),
              // child: CustomScrollView(
              //   slivers: [
              //     SliverToBoxAdapter(
              //       child: Container(
              //         color: Colors.red,
              //         height: 300,
              //       ),
              //     ),
              //     SliverToBoxAdapter(
              //       child: Container(
              //         color: Colors.blue,
              //         height: 300,
              //       ),
              //     ),
              //     SliverToBoxAdapter(
              //       child: Container(
              //         color: Colors.yellow,
              //         height: 300,
              //       ),
              //     ),
              //     SliverToBoxAdapter(
              //       child: Container(
              //         color: Colors.orange,
              //         height: 300,
              //       ),
              //     )
              //   ],
              // ),
            ),
          )
        ],
      ),
    );
  }
}
