
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../items/chat_item.dart';
import '../states.dart';

class PrivatePage extends StatefulWidget {
  const PrivatePage({Key? key}) : super(key: key);

  @override
  State<PrivatePage> createState() => _PrivatePageState();
}

class _PrivatePageState extends State<PrivatePage> {

  //final ImagePicker _picker = ImagePicker();

  //File _image = File( );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.grey.shade200,
            height: 300,
            width: 300,
            child: Center(
              child: Icon(Icons.account_box, size: 100,),
            ),
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       final XFile? image
          //     },
          //     child: Text('Get image')
          // )
        ],
      )
    );
  }
}