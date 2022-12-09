import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'cookie_details.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
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
          title: Text('Articles',
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
                  color: Colors.grey,
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
                                  builder: (context) => CookieDetail(
                                      assetPath: 'assets/health_wellness.png',
                                      link:
                                          "https://samarth.community/category/health/",
                                      cookiename: 'Health')));
                            },
                            icon: 'assets/health_wellness.png',
                            title: 'Health',
                            subtitle: 'Fitness,wellness and diet tips',
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
                                      assetPath: 'assets/lifestyle.png',
                                      link:
                                          "https://samarth.community/category/travel/",
                                      cookiename: 'Health')));
                            },
                            icon: 'assets/money_matters.png',
                            title: "Travel",
                            subtitle: 'Travel tips for retirement life',
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
                                      assetPath: 'assets/lifestyle.png',
                                      link:
                                          "https://samarth.community/category/lifestyle/",
                                      cookiename: 'Health')));
                            },
                            icon: 'assets/lifestyle.png',
                            title: "Lifestyle",
                            subtitle: 'Living in style after retirement',
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
                                      assetPath: 'assets/inspiration.png',
                                      link:
                                          "https://samarth.community/category/inspiration/",
                                      cookiename: 'Health')));
                            },
                            icon: 'assets/inspiration.png',
                            title: "Inspiration",
                            subtitle: 'Stories that inform and influence',
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
                                      assetPath: 'assets/money_matters.png',
                                      link:
                                          "https://samarth.community/category/home-family/",
                                      cookiename: 'Health')));
                            },
                            icon: 'assets/home_family.png',
                            title: "Home & Family ",
                            subtitle: 'Better home and stronger family',
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
                                      assetPath: 'assets/money_matters.png',
                                      link:
                                          "https://samarth.community/category/money-matters/",
                                      cookiename: 'Health')));
                            },
                            icon: 'assets/money_matters.png',
                            title: "Money Matters ",
                            subtitle: 'Lets make our money work hard for us',
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
                                      assetPath: 'assets/health_wellness.png',
                                      link:
                                          "https://samarth.community/category/food/",
                                      cookiename: 'Health')));
                            },
                            icon: 'assets/inspiration.png',
                            title: "Food",
                            subtitle: 'Funfacts about food',
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
                                      assetPath: 'assets/health_wellness.png',
                                      link:
                                          "https://samarth.community/category/retirement/",
                                      cookiename: 'Health')));
                            },
                            icon: 'assets/money_matters.png',
                            title: "Retirement",
                            subtitle: "How to enjoy retirement",
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
  const HomeCard(
      {Key? key,
      required this.subtitle,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 12.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(75))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(icon),
                  ),
                  // Image.asset(
                  //   icon,
                  //   height: 70.0,
                  //   width: 70.0,
                  //   color: Colors.orange,
                  // ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black, fontSize: 16),

                          // style: .montserrat(
                          // textStyle: TextStyle(color: Colors.white, fontSize: 17)),
                          // TextStyle(
                          // color: Colors.white, fontSize: 16, fontFamily: 'RobotoMono'),
                        ),
                        Text(
                          subtitle,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
