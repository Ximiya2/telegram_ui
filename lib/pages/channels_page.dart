import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/chat_item.dart';
import '../states.dart';

class ChannelsPage extends StatefulWidget {
  const ChannelsPage({Key? key}) : super(key: key);

  @override
  State<ChannelsPage> createState() => _ChannelsPageState();
}

class _ChannelsPageState extends State<ChannelsPage> {
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