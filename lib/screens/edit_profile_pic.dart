import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
class EditProfilePic extends StatefulWidget {
  const EditProfilePic({Key? key}) : super(key: key);

  @override
  _EditProfilePicState createState() => _EditProfilePicState();
}

class _EditProfilePicState extends State<EditProfilePic> {
  XFile? _image; // Change late XFile? to XFile?

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: PreferredSize(
  preferredSize: const Size.fromHeight(80.0),
  child: AppBar(
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        // Handle back button press
        GoRouter.of(context).go("/"); // You can replace "/" with the desired route
      },
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(60),
      ),
    ),
    title: const Text("Profile"),
    centerTitle: true,
    backgroundColor:  Colors.deepPurple.shade100// Set the background color to light orange
  ),
),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_image != null)
              CircleAvatar(
                backgroundImage: FileImage(File(_image!.path)),
                radius: 50,
              )
            else
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: const Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
}
