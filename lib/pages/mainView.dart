import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/pages/channels_page.dart';
import 'package:telegram_ui/pages/groups_page.dart';
import 'package:telegram_ui/pages/private_page.dart';
import 'Setting_page.dart';
import 'all_page.dart';
import 'bots_page.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView>
    with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.tealAccent.shade700,
              ),
                accountName: Text(
                  'Muhammad Turaev',
                  style: TextStyle(
                    fontSize: 21
                  ),
                ),
                accountEmail: Text('+998 99 999 99 99'),
              otherAccountsPictures: [
                Icon(Icons.brightness_3,
                color: Colors.white,
                ),
              ],
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/image/flag_UZB.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('New Group'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text('New Secret Chat'),
              onTap: (){},
            ),
            ListTile(
                leading: Icon(Icons.create_new_folder),
              title: Text('New Channel'),
              onTap: (){},
            ),
            Divider(
              height: 18,
              color: Colors.black45,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Contacts'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('Chat Folders'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.location_pin),
              title: Text('Poeple Nearby'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border),
              title: Text('Saved Messages'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Calls'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
            Divider(
              height: 18,
              color: Colors.black45,
            ),
            ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text('Plus Settings'),
              onTap: (){},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade700,
        title: Text('Telegram',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.normal
          ),),
        actions: [
          Icon(Icons.lock),
          SizedBox(width: 15,),
          Icon(Icons.search),
          SizedBox(width: 20,),
        ],
        bottom: TabBar(
          //labelStyle: TextStyle(fontSize: 18, color: Colors.black),
          indicatorColor: Colors.black45,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          controller: tabController,
          isScrollable: true,
          tabs: [
            Tab(
              text: 'All',
            ),
            Tab(
              text: 'Private',
            ),
            Tab(
              text: 'Groups',
            ),
            Tab(
              text: 'Channels',
            ),
            Tab(
              text: 'Bots',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller:tabController ,
        children: [
          AllPage(),
          PrivatePage(),
          GroupsPage(),
          ChannelsPage(),
          BotsPage(),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/ContactPage');
        },
        child: Icon(Icons.edit),

      ),
    );
  }
}