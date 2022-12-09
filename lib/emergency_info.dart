import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Emergency_info extends StatefulWidget {
  const Emergency_info({Key? key}) : super(key: key);

  @override
  State<Emergency_info> createState() => _Emergency_infoState();
}

class _Emergency_infoState extends State<Emergency_info> {
  final sosController = TextEditingController();
  final doctorController = TextEditingController();
  final ambulanceController = TextEditingController();
  var ambulance = "100";
  var doctor = "100";
  var sos = "100";

  bool enabled = false;
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
        title: Text('Emergency Info',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
      ),
      //yaha se change karle background color
      backgroundColor: Color.fromARGB(255, 255, 228, 197),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36))),
              child: Center(
                child: Text(
                  "Emergency Contacts",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange)),
                    onPressed: onSaved,
                    child: Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange)),
                    onPressed: onEdit,
                    child: Text(
                      "Edit",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  width: 15,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListTile(
                  leading: Text(
                    "SOS",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: TextField(
                      enabled: enabled,
                      controller: sosController,
                      decoration: InputDecoration(hintText: sos),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source San Pro',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      child: Icon(
                    Icons.phone,
                    color: Colors.orange,
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListTile(
                  leading: Text(
                    "Ambulance",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  title: TextField(
                    enabled: enabled,
                    controller: ambulanceController,
                    decoration: InputDecoration(hintText: ambulance),
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source San Pro',
                      fontSize: 20,
                    ),
                  ),
                  trailing: GestureDetector(
                      child: Icon(
                    Icons.phone,
                    color: Colors.orange,
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListTile(
                  leading: Text(
                    "Doctor",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: TextField(
                      enabled: enabled,
                      controller: doctorController,
                      decoration: InputDecoration(hintText: doctor),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source San Pro',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      child: Icon(
                    Icons.phone,
                    color: Colors.orange,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSaved() {
    setState(() {
      enabled = false;
      sos = sosController.text.trim().length > 0
          ? sosController.text.trim()
          : sos;
      doctor = doctorController.text.trim().length > 0
          ? doctorController.text.trim()
          : doctor;
      ambulance = ambulanceController.text.trim().length > 0
          ? ambulanceController.text.trim()
          : ambulance;
    });
  }

  void onEdit() {
    setState(() {
      enabled = true;
    });
  }
}
