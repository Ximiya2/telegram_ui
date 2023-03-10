import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../items/chat_item.dart';
import '../states.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return chatItem(context, chatList[index]);
        },
      ),
    );
  }
}