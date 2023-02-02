// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:telegram_ui/functions.dart';
//
// import '../items/chat_item.dart';
// import '../states.dart';
//
// class SearchPage extends StatefulWidget {
//   const SearchPage({Key? key}) : super(key: key);
//
//   @override
//   State<SearchPage> createState() => _SearchPageState();
// }
//
// class _SearchPageState extends State<SearchPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: TextFormField(
//         decoration: InputDecoration(
//             filled: true,
//             prefixIcon: const Icon(Icons.search),
//             hintText: 'Search for contacts...'
//         ),
//         onChanged: (val){
//           if(val != ''){
//             searcheContact(val);
//           } else {
//             searchedList.clear();
//           }
//           setState(() { });
//         },
//       ),),
//       body: Column(
//         children: [
//           searchedList.isNotEmpty ?
//           ListView.builder(
//             itemCount: searchedList.length,
//             itemBuilder: (BuildContext context, int index) {
//               return chatItem(context, chatList[index]);
//             },
//           ) :
//           ListView.builder(
//             itemCount: chatList.length,
//             itemBuilder: (BuildContext context, int index) {
//               return chatItem(context, chatList[index]);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
