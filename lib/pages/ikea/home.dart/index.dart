import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_challenge/models/model.dart';
import 'package:ui_challenge/services/assets.dart';

class IkeaHomePage extends StatefulWidget {
  const IkeaHomePage({Key? key}) : super(key: key);

  @override
  State<IkeaHomePage> createState() => _IkeaHomePageState();
}

class _IkeaHomePageState extends State<IkeaHomePage> {
  PageController _pageController = PageController();
  int _indexTabProduct = 0;

  final List<Widget> _tabProducts = [
    const _PopularTab(),
    const _NewTab(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _indexTabProduct);
  }

  void _onTapItems(int index) {
    setState(() {
      _indexTabProduct = index;
    });

    _pageController.jumpToPage(_indexTabProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        title: Image.asset(
          ikeaLogo,
          scale: 2,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(ikeaSearch),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(ikeaBuy),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    'Idea For Your Day',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    Image.asset(ikeaBanner),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Sale',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                text: 'Get up to ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '50%',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' off',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: RotatedBox(
              quarterTurns: -1,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      for (var i = 0; i < ikeaTabHomeItems.length; i++) ...[
                        GestureDetector(
                          onTap: () {
                            _onTapItems(i);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ikeaTabHomeItems[i].label!,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: _indexTabProduct == i
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  color: _indexTabProduct == i
                                      ? const Color(0XFF0500FF)
                                      : Colors.grey,
                                ),
                              ),
                              if (_indexTabProduct == i) ...[
                                const SizedBox(height: 5),
                                Container(
                                  height: 2,
                                  width: 36,
                                  color: const Color(0XFF0500FF),
                                )
                              ]
                            ],
                          ),
                        ),
                        if (ikeaTabHomeItems.length != i)
                          const SizedBox(width: 32)
                      ]
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: SizedBox(
                      height: double.infinity,
                      width: 200,
                      child: PageView(
                        controller: _pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: _tabProducts,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _PopularTab extends StatelessWidget {
  const _PopularTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      color: Colors.blue,
      child: const Center(child: Text('Popular')),
    );
  }
}

class _NewTab extends StatelessWidget {
  const _NewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      color: Colors.yellow,
      child: const Center(child: Text('New')),
    );
  }
}
