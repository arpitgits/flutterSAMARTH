import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:smth/bottom_bar.dart';
import 'package:smth/cookie_page.dart';
import 'package:smth/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras = [];
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   centerTitle: true,
      //   // leading: IconButton(
      //   //   icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
      //   //   onPressed: () {},
      //   // ),
      //   title: Text('Home',
      //       style: TextStyle(
      //           fontFamily: 'Varela',
      //           fontSize: 20.0,
      //           color: Color(0xFF545D68))),
      //   actions: <Widget>[
      //     // IconButton(
      //     //   icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
      //     //   onPressed: () {},
      //     // ),
      //   ],
      // ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            // padding: EdgeInsets.all(20.0),
            children: <Widget>[
              SizedBox(height: 15.0),
              Center(
                child: Column(
                  children: [
                    const Image(
                      image: AssetImage('assets/small_logo.png'),
                      fit: BoxFit.fitWidth,
                      width: 40,
                    ),
                    Text('Welcome to SAMARTH',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              // TabBar(
              //     controller: _tabController,
              //     indicatorColor: Colors.transparent,
              //     labelColor: Color(0xFFC88D67),
              //     isScrollable: true,
              //     labelPadding: EdgeInsets.only(right: 45.0),
              //     unselectedLabelColor: Color(0xFFCDCDCD),
              //     tabs: [
              //       Tab(
              //         child: Text('Cookies',
              //             style: TextStyle(
              //               fontFamily: 'Varela',
              //               fontSize: 21.0,
              //             )),
              //       ),
              //       Tab(
              //         child: Text('Cookie cake',
              //             style: TextStyle(
              //               fontFamily: 'Varela',
              //               fontSize: 21.0,
              //             )),
              //       ),
              //       Tab(
              //         child: Text('Ice cream',
              //             style: TextStyle(
              //               fontFamily: 'Varela',
              //               fontSize: 21.0,
              //             )),
              //       )
              //     ]),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: double.infinity,
                child: CookiePage(),
                //home(),
                // CookiePage(),
                // CookiePage(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Uri phoneno = Uri.parse('tel:100');
          if (await launchUrl(phoneno)) {
            //dialer opened
          } else {
            //dailer is not opened
          }
        },
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.sos),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
