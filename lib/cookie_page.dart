import 'package:flutter/material.dart';
import 'package:smth/cookie_details.dart';
import 'package:smth/emergency_info.dart';
import 'package:smth/magnifier.dart';

import 'articles.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFCFAF8),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 15.0),
              Container(
                  padding: EdgeInsets.only(right: 15.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 250,
                  child: GridView.count(
                    crossAxisCount: 2,
                    primary: false,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 15.0,
                    childAspectRatio: 0.8,
                    children: <Widget>[
                      _buildCard('Magnifier', "https://samarth.store/",
                          'assets/magnifier.png', context),
                      _buildCard(
                          'Articles',
                          "https://samarth.community/videos/",
                          'assets/articles.png',
                          context),
                      _buildCard('Store', "https://samarth.community/events/",
                          'assets/store.png', context),
                      _buildCard('Videos', "https://samarth.community/join/",
                          'assets/video.png', context),
                      _buildCard('Events', "", 'assets/schedule.png', context),
                      _buildCard('Join', "", 'assets/deal.png', context),
                      _buildCard('Emergency Info', "", 'assets/emergency.png',
                          context),
                      _buildCard(
                          'Samarth Helpdesk',
                          "https://samarth.community/samarth-help-desk/",
                          'assets/telemarketer.png',
                          context)
                    ],
                  )),
              SizedBox(height: 70.0)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String name, String link, String imgPath, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              if (name == "Emergency Info") {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Emergency_info()));
              } else if (name == "Magnifier") {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => magnifier()));
              } else if (name == "Articles") {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Articles()));
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CookieDetail(
                        assetPath: imgPath, link: link, cookiename: name)));
              }
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Center(
                  child: Column(mainAxisSize: MainAxisSize.min,
                      // MainAxisSize.min,
                      children: [
                        Hero(
                            tag: imgPath,
                            child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(imgPath),
                                        fit: BoxFit.contain)))),
                        SizedBox(height: 7.0),
                        Text(name,
                            style: TextStyle(
                                color: Color(0xFF575E67),
                                fontFamily: 'Varela',
                                fontSize: 14.0)),
                      ]),
                ))));
  }
}
