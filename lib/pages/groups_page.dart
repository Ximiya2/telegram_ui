import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/chat_item.dart';
import '../states.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
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