import 'package:flutter/material.dart';


class PersonalData extends StatefulWidget {
  @override
  _PersonalDataPageState createState() => _PersonalDataPageState();
}

class _PersonalDataPageState extends State<PersonalData> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _namelController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const SizedBox(height: 20),
            builddd("First Name"),
            buildTextField("ENTER YOUR FIRST NAME", _fnameController),
            builddd("Last Name"),
            buildTextField("ENTER YOUR LAST NAME", _namelController),
            builddd("Phone Number"),
            buildTextField("+63 9__ ___ ____", _phoneController),


            const SizedBox(height: 20),

          
         
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(labelText: label, border: OutlineInputBorder()),
      ),
    );
  }

  Widget builddd(String labelo){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: TextField(
        decoration: InputDecoration(labelText: labelo),
      ),
    );
  }

  void savedata() {
    String fname = _fnameController.text;
    String namel = _namelController.text;
    String phone = _phoneController.text;

    print("FIRST NAME: $fname");
    print("LAST NAME: $namel");
    print("PHONE NUMBER: $phone");

  }
}
