import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/functions.dart';
import 'package:telegram_ui/items/chat_item.dart';
import 'package:telegram_ui/pages/search_page.dart';

import '../items/contact_item.dart';
import '../states.dart';
import 'add_contact_page.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  @override
  void initState() {
    contactList.sort((a, b) => a.lastSeenTime.compareTo(b.lastSeenTime));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      isClicked ? TextFormField(
        onChanged: (user) {
          searchedUsers(user);
          setState(() {});
        },
          decoration: InputDecoration(
            hintText: 'Search Contact',
          ),
         )
              : Text('New Message'),
        actions: [
          InkWell(
              onTap: () {
                isClicked = !isClicked;
                setState(() {});
              },
              child: Icon(Icons.search)),
          SizedBox(width: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Stack(
              children: const [
                Icon(Icons.sort),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text('A',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        color: Colors.white
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 20,),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.group),
                  SizedBox(width: 20,),
                  Text('New Group')
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(width: 20,),
                  Text('New Secret Chat')
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(CupertinoIcons.speaker_2_fill),
                  SizedBox(width: 20,),
                  Text('New Channel')
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 5,),
              SizedBox(height: 10,),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: chatList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContactItem(context, contactList[index]);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddContact()),
          );
        },
        child: Icon(Icons.person_add_alt_1),
      ),
    );
  }
}

void searchedUsers(String user){

  searchedList.clear();
  contactList.forEach((element) {
    if(element.name.toLowerCase().contains(user.toLowerCase())) {
      searchedList.add(element);
    }
  });

}