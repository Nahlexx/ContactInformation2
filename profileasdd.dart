import 'package:flutter/material.dart';

class CHRISS extends StatefulWidget {
  @override
  _ChrisState createState() => _ChrisState();
}

class _ChrisState extends State<CHRISS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView( 
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ProfileeeName(),
            Avatar(),
            Numberrrr(),
            CallHistory(),
            MenuList(),
          ],
        ),
      ),
    );
  }
}

Widget ProfileeeName() {
  return Row(
    children: [
      SizedBox(width: 320),
      const Text(
        "Chrissandra Bautista",
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'San Francisco',
          color: Color.fromARGB(255, 43, 51, 66),
        ),
      ),
      SizedBox(width: 20),
    ],
  );
}

Widget Avatar() {
  return Row(
    children: [
      SizedBox(width: 390),
      const CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/fr.png'),
      ),
      SizedBox(width: 20),
    ],
  );
}

Widget Numberrrr() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20.0),
    child: Row(
      children: [
        const Text(
          "+63 976 456 2314",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'San Francisco',
            color: Color.fromARGB(255, 39, 43, 51),
          ),
        ),
        SizedBox(width: 500),
        IconButton(
          icon: Icon(Icons.phone, color: Color.fromARGB(255, 65, 136, 81)),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.message, color: Color.fromARGB(255, 255, 209, 3)),
          onPressed: () {},
        ),
      ],
    ),
  );
}


Widget CallHistory() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),

    child: const Text(
      "Call History",
      style: TextStyle(
        fontSize: 18.0,
        fontFamily: 'San Francisco',
        color: Color.fromARGB(255, 184, 186, 190),
      ),
    ),
  );
}


Widget MenuList() {
  return Column(
    children: [
      MenuItems("Apr 27, 14:16", "+6396573423433","Didn’t Connect", false),
      MenuItems("Apr 17, 14:16", "+6396573223433","Rang 5 times", true), 
      MenuItems("Apr 15, 12:16", "+6365564654587","Outgoing 15 mins", false),
    ],
  );
}

Widget MenuItems(String date, String phone, String reason, bool isMissedCall) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
    child: ListTile(
      title: Text(
        date,
        style: TextStyle(
              fontSize: 18.0,
              color: isMissedCall ? Colors.red : Colors.black,
            ),
      ),

      subtitle: Text(
          phone,
          style: TextStyle(
              fontSize: 15.0,
              color: isMissedCall ? Colors.red : Colors.black,
            ),
        ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            reason,
            style: TextStyle(
              fontSize: 15.0,
              color: isMissedCall ? Colors.red : Colors.black,
            ),
          ),
          Icon(
            isMissedCall ? Icons.arrow_downward : Icons.arrow_upward,
            color: isMissedCall ? Colors.red : Colors.black,
          ),
        ],
      ),
    ),
  );
}