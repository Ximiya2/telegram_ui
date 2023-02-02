import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade700,
        elevation: 0,
        actions: [
          Icon(Icons.apps_sharp),
          SizedBox(width: 20,),
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.more_vert),
          SizedBox(width: 20,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.tealAccent.shade700,
              height: 85,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image/flag_UZB.jpg'),
                      radius: 40,
                    ),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Muhammad Turaev',
                          style: TextStyle(
                              fontSize: 22
                          ),
                        ),
                        Text(
                          'online',
                          style: TextStyle(
                              fontSize: 15
                          ),
                        ),
                        Text(
                          'id: 0123456789',
                          style: TextStyle(
                              fontSize: 15
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Accound',
                    style: TextStyle(
                        fontSize: 20,
                      color: Colors.tealAccent.shade700,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    '+998 99 769 64 13',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Tap to change phone number',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    '@Apple_iphone_macos',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Username',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'Hello',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    'Bio',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),
                  ),
                  SizedBox(height: 25,),/////////////////////////////////////////////////////////////////////////////////////////////////////
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 20,
                      color: Colors.tealAccent.shade700,
                    ),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    leading: Icon(Icons.notifications, size: 30,),
                    title: Text('Notifications and Sounds', style: TextStyle(fontSize: 20),),
                    onTap: (){},
                  ),
                  Divider(
                    height: 18,
                    color: Colors.black45,
                  ),
                  ListTile(
                    leading: Icon(Icons.lock, size: 30,),
                    title: Text('Privacy and Security', style: TextStyle(fontSize: 20),),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_outlined, size: 30,),
                    title: Text('Data and Storage', style: TextStyle(fontSize: 20),),
                    onTap: (){},
                  ),
                  Divider(
                    height: 18,
                    color: Colors.black45,
                  ),
                  ListTile(
                    leading: Icon(Icons.chat_bubble, size: 30,),
                    title: Text('Chat Settings', style: TextStyle(fontSize: 20),),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.emoji_emotions_outlined, size: 30,),
                    title: Text('Stickers and Emoji', style: TextStyle(fontSize: 20),),
                    onTap: (){},
                  ),
                  Divider(
                    height: 18,
                    color: Colors.black45,
                  ),
                  ListTile(
                    leading: Icon(Icons.chat_bubble, size: 30,),
                    title: Text('Chat Folders', style: TextStyle(fontSize: 20),),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.devices_outlined, size: 30,),
                    title: Text('Devices', style: TextStyle(fontSize: 20),),
                    onTap: (){},
                  ),
                  Divider(
                    height: 18,
                    color: Colors.black45,
                  ),
                  ListTile(
                    leading: Icon(Icons.language, size: 30,),
                    title: Text('Language', style: TextStyle(fontSize: 20),),
                    onTap: (){},
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
