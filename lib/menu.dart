import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smth/login.dart';

import 'cookie_details.dart';

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text('Menu',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 20.0,
                  color: Color(0xFF545D68))),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                // width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  //for padding
                  physics: BouncingScrollPhysics(),

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                            },
                            title: 'Login',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CookieDetail(
                                      assetPath: '',
                                      link:
                                          "https://samarth.community/card-new/",
                                      cookiename: 'Card')));
                            },
                            title: 'Card',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CookieDetail(
                                      assetPath: '',
                                      link:
                                          'https://samarth.community/help-new/',
                                      cookiename: 'Help')));
                            },
                            title: 'Help',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CookieDetail(
                                      assetPath: '',
                                      link:
                                          'https://samarth.community/privacy-policy/',
                                      cookiename: 'Privacy Policy')));
                            },
                            title: 'Privacy Policy',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CookieDetail(
                                      assetPath: '',
                                      link: 'https://samarth.community/terms/',
                                      cookiename: 'Terms and Condition')));
                            },
                            title: 'Terms & Condition',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.onPress, required this.title})
      : super(key: key);
  final VoidCallback onPress;

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 25.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
          // border: Border.fromBorderSide(),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 0),
              child: Text(
                title,
                // style:,
                textAlign: TextAlign.left,
                // style: .montserrat(
                // textStyle: TextStyle(color: Colors.white, fontSize: 17)),
                // TextStyle(
                // color: Colors.white, fontSize: 16, fontFamily: 'RobotoMono'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
