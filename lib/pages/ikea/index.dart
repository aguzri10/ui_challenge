import 'package:flutter/material.dart';
import 'package:ui_challenge/models/menu.dart';
import 'package:ui_challenge/pages/ikea/category/index.dart';
import 'package:ui_challenge/pages/ikea/home.dart/index.dart';
import 'package:ui_challenge/pages/ikea/profile/index.dart';

class IkeaMainPage extends StatefulWidget {
  const IkeaMainPage({Key? key}) : super(key: key);

  @override
  _IkeaMainPageState createState() => _IkeaMainPageState();
}

class _IkeaMainPageState extends State<IkeaMainPage> {
  final bucket = PageStorageBucket();

  int _index = 1;

  final List<Widget> _pages = const [
    IkeaCategoryPage(
      key: PageStorageKey('category'),
    ),
    IkeaHomePage(
      key: PageStorageKey('home'),
    ),
    IkeaProfilePage(
      key: PageStorageKey('profile'),
    ),
  ];

  void _onItemTapped(int index) async {
    setState(() {
      _index = index;
    });

    // ignore: avoid_print
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: AnimatedSwitcher(
          child: _pages[_index],
          duration: const Duration(milliseconds: 300),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: Colors.transparent,
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 83,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  blurRadius: 7,
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(-1, 2),
                  spreadRadius: 1,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < ikeaMenus.length; i++)
                  GestureDetector(
                    onTap: () {
                      _onItemTapped(i);
                    },
                    child: Row(
                      children: [
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: Image.asset(
                            _index == i
                                ? ikeaMenus[i].iconActive!
                                : ikeaMenus[i].iconNotActive!,
                            scale: 2,
                          ),
                        ),
                        const SizedBox(width: 8),
                        if (_index == i) ...[
                          Text(
                            ikeaMenus[i].title!,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF0500FF),
                            ),
                          )
                        ]
                      ],
                    ),
                  )
              ],
            )),
      ),
    );
  }
}
