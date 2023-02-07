

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../items/chat_item.dart';
import '../states.dart';

class PrivatePage extends StatefulWidget {
  const PrivatePage({Key? key}) : super(key: key);

  @override
  State<PrivatePage> createState() => _PrivatePageState();
}

class _PrivatePageState extends State<PrivatePage> {

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15)
              ),
              child: image.path == ''
              ? Center(
                child: Text("No image selected"),) 
                  : Image.file(image, fit: BoxFit.cover,
              filterQuality: FilterQuality.low,)
            ),
            ElevatedButton(
                onPressed: () => showModalBottomSheet(
                    context: context, 
                    builder: (context) => Container(
                      height: 150,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.camera_alt),
                            title: Text('Take a photo'),
                            onTap: () async {
                              await _pickImage(ImageSource.camera);
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.image),
                          title: Text('Pick from gellery'),
                          onTap: () async {
                              await _pickImage(ImageSource.gallery);
                              Navigator.pop(context);
                          },)
                        ],
                      ),
                    )), 
                child: Text('Get Image'))
          ],
        ),
      )
    );
  }
  Future<void> _pickImage(ImageSource sourse) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: sourse);
    setState(() {
      image = File(pickedFile!.path);
    });
  }
}

File image = File('');