import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/chat_item.dart';
import '../states.dart';

class BotsPage extends StatefulWidget {
  const BotsPage({Key? key}) : super(key: key);

  @override
  State<BotsPage> createState() => _BotsPageState();
}

class _BotsPageState extends State<BotsPage> {
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