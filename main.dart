
import 'package:exam_contactinfo/add.dart';
import 'package:exam_contactinfo/profileasdd.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 40, 46),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContactHeader(),
            ContactList(context),
            Adds(context, PersonalData()),
          ],
        ),
      ),
    );
  }
}

Widget ContactHeader() {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Row(
      children: [
        const Text(
          "Contacts",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'San Francisco',
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        SizedBox(width:700),
        IconButton(
        icon: Icon(Icons.search, color: Color.fromARGB(255, 255, 255, 255)),
         onPressed: () {},
        ),
      ],
    ),
  );
}

Widget ContactList(BuildContext context) {
  return Column(
    children: [
      ContactItem("Chrissandra Bautista", "+63 976 456 2314", context, CHRISS()),
      ContactItem("Josh Nimo", "+63 454 252 2314", context, null),
      ContactItem("Shelou Asaris", "+63 976 123 8425", context, null),
      ContactItem("Ace Advincula", "+63 45. 423 2250", context, null),
      ContactItem("Crislyn Delgado", "+63 976 502 3202", context, null),
      ContactItem("Airene Tungol", "+63 455 502 2350", context, null),
      ContactItem("James Legado", "+63 976 520 512", context, null),
      ContactItem("Kharl Almonguerra", "+63 242 220 6320", context, null),
      ContactItem("Vince Carabuena", "+63 455 502 2563", context, null),
      ContactItem("Errol De Pedro", "+63 254 602 3012", context, null),
    ],
  );
}

//AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
Widget ContactItem(String name, String phone, BuildContext context, Widget? page) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 224, 224),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.person_3_rounded,
          color: Color.fromARGB(255, 28, 40, 46),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          phone,
          style: const TextStyle(fontSize: 14.0, color: Colors.black54),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.phone, color: Colors.green),
          onPressed: () {
            //auq na
          },
        ),
        onTap: () {
          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          }
        },
      ),
    ),
    );
}

Widget Adds(BuildContext context, Widget page) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 167, 173, 184),
          borderRadius: BorderRadius.circular(2),
        ),
        
        child: const Icon(
          Icons.add,
          color: Color.fromARGB(255, 0, 114, 34),
          size: 30,
        ),
      ),
    ),
  );
}