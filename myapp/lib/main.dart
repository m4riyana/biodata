import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BiodataScreen(),
    );
  }
}

class BiodataScreen extends StatefulWidget {
  @override
  State<BiodataScreen> createState() => _BiodataScreenState();
}

class _BiodataScreenState extends State<BiodataScreen> {
  final fullNameController = TextEditingController();
  final addressController = TextEditingController();
  final contactNumberController = TextEditingController();
  final emailAddressController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final placeOfBirthController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final civilStatusController = TextEditingController();
  final citizenshipController = TextEditingController();
  final religionController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    addressController.dispose();
    contactNumberController.dispose();
    emailAddressController.dispose();
    dateOfBirthController.dispose();
    placeOfBirthController.dispose();
    ageController.dispose();
    genderController.dispose();
    civilStatusController.dispose();
    citizenshipController.dispose();
    religionController.dispose();
    heightController.dispose();
    weightController.dispose();

    super.dispose();
  }

  void submitBiodata() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BiodataOutputScreen(
          data: {
            'Full Name': fullNameController.text,
            'Address': addressController.text,
            'Contact Number': contactNumberController.text,
            'Email Address': emailAddressController.text,
            'Date of Birth': dateOfBirthController.text,
            'Place of Birth': placeOfBirthController.text,
            'Age': ageController.text,
            'Gender': genderController.text,
            'Civil Status': civilStatusController.text,
            'Citizenship': citizenshipController.text,
            'Religion': religionController.text,
            'Height': heightController.text,
            'Weight': weightController.text,
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIO-DATA'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 500,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(
                  'BIO-DATA',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30),

                Text(
                  'PERSONAL INFORMATION',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                TextField(
                  controller: fullNameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: addressController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: contactNumberController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Contact Number',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: emailAddressController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: dateOfBirthController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Date of Birth',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: placeOfBirthController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Place of Birth',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: ageController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: genderController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: civilStatusController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Civil Status',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: citizenshipController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Citizenship',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: religionController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Religion',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: heightController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Height',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 12),

                TextField(
                  controller: weightController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Weight',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 30),

                ElevatedButton(
                  onPressed: submitBiodata,
                  child: Text('SUBMIT'),
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BiodataOutputScreen extends StatelessWidget {
  final Map<String, String> data;

  BiodataOutputScreen({required this.data});

  Widget buildSection(String title, List<MapEntry<String, String>> fields) {
    final filledFields =
        fields.where((field) => field.value.trim().isNotEmpty).toList();

    if (filledFields.isEmpty) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25),
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12),
        ...filledFields.map(
          (field) => Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  field.key,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3),
                Text(field.value),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIO-DATA OUTPUT'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 500,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'BIO-DATA',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                buildSection(
                  'PERSONAL INFORMATION',
                  [
                    MapEntry('Full Name', data['Full Name'] ?? ''),
                    MapEntry('Address', data['Address'] ?? ''),
                    MapEntry('Contact Number', data['Contact Number'] ?? ''),
                    MapEntry('Email Address', data['Email Address'] ?? ''),
                    MapEntry('Date of Birth', data['Date of Birth'] ?? ''),
                    MapEntry('Place of Birth', data['Place of Birth'] ?? ''),
                    MapEntry('Age', data['Age'] ?? ''),
                    MapEntry('Gender', data['Gender'] ?? ''),
                    MapEntry('Civil Status', data['Civil Status'] ?? ''),
                    MapEntry('Citizenship', data['Citizenship'] ?? ''),
                    MapEntry('Religion', data['Religion'] ?? ''),
                    MapEntry('Height', data['Height'] ?? ''),
                    MapEntry('Weight', data['Weight'] ?? ''),
                  ],
                ),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('EDIT BIO-DATA'),
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}