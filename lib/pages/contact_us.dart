import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String? selectedLocation;
  DateTime? selectedDate;
  int selectedDays = 1;
  String? currentLocation;
  int selectedPersons = 1;
  int selectedKids = 0;
  String? fullName;

  final List<String> locations = [
    'Gulmarg',
    'Bangus Valley',
    'Sonamarg',
    'Baliya'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan my trip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildFullNameField(),
            const SizedBox(height: 16),
            _buildLocationDropdown(),
            const SizedBox(height: 16),
            _buildDateField(),
            const SizedBox(height: 16),
            _buildDaysDropdown(),
            const SizedBox(height: 16),
            _buildLocationField(),
            const SizedBox(height: 16),
            _buildPersonsDropdown(),
            const SizedBox(height: 16),
            _buildKidsDropdown(),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submit,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB4F000), // Green color
                minimumSize: const Size(0, 60), // Set the minimum height to 60
                padding: const EdgeInsets.all(
                    18), // Adjust the padding to fit the height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Submit",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFullNameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter Your Full Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onChanged: (value) {
        setState(() {
          fullName = value;
        });
      },
    );
  }

  Widget _buildLocationDropdown() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Select Location',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      items: locations.map((location) {
        return DropdownMenuItem(
          value: location,
          child: Text(location),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedLocation = value;
        });
      },
    );
  }

  Widget _buildDateField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Select Date',
        suffixIcon: const Icon(Icons.calendar_today),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      readOnly: true,
      onTap: _selectDate,
      controller: TextEditingController(
        text: selectedDate == null
            ? ''
            : DateFormat('yyyy-MM-dd').format(selectedDate!),
      ),
    );
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Widget _buildDaysDropdown() {
    return DropdownButtonFormField<int>(
      decoration: InputDecoration(
        labelText: 'No of Days',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      value: selectedDays,
      items: List.generate(30, (index) => index + 1).map((day) {
        return DropdownMenuItem(
          value: day,
          child: Text(day.toString()),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedDays = value!;
        });
      },
    );
  }

  Widget _buildLocationField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Pick up Location',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onChanged: (value) {
        setState(() {
          currentLocation = value;
        });
      },
    );
  }

  Widget _buildPersonsDropdown() {
    return DropdownButtonFormField<int>(
      decoration: InputDecoration(
        labelText: 'No of Persons',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      value: selectedPersons,
      items: List.generate(30, (index) => index + 1).map((person) {
        return DropdownMenuItem(
          value: person,
          child: Text(person.toString()),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedPersons = value!;
        });
      },
    );
  }

  Widget _buildKidsDropdown() {
    return DropdownButtonFormField<int>(
      decoration: InputDecoration(
        labelText: 'No of Kids under 5 years',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      value: selectedKids,
      items: List.generate(6, (index) => index).map((kid) {
        return DropdownMenuItem(
          value: kid,
          child: Text(kid.toString()),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedKids = value!;
        });
      },
    );
  }

  void _submit() {
    if (fullName != null &&
        selectedLocation != null &&
        selectedDate != null &&
        currentLocation != null) {
      final message =
          'Hi, I am $fullName. I want to go to $selectedLocation on ${DateFormat('yyyy-MM-dd').format(selectedDate!)} for $selectedDays days. We are $selectedPersons persons with $selectedKids kids under 5 years. Pick up location is $currentLocation. Please plan my trip.';
      final whatsappUrl =
          'https://api.whatsapp.com/send?phone=+918491030785&text=${Uri.encodeComponent(message)}';
      _launchURL(whatsappUrl);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields')),
      );
    }
  }

  void _launchURL(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
}
