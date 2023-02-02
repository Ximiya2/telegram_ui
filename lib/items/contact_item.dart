import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/models/contactModel.dart';
import '../models/chatModel.dart';

Widget ContactItem(BuildContext context, ContactModel contact) {
  return Container(
    padding: EdgeInsets.all(8),
    width: MediaQuery.of(context).size.width,
    height: 70,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height:50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: contact.image == null ?
                ColoredBox(color: Colors.red,
                child: Center(child: Text(contact.name[0]),),
                ): Image.asset(contact.image!,fit: BoxFit.cover,),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(contact.name,),
              SizedBox(height: 8,),
              Text(contact.isOnline ? 'online' : 'last seen ${contact.lastSeenTime}',
              style: TextStyle(
                color: contact.isOnline ? Colors.blue : Colors.black87,
              ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}