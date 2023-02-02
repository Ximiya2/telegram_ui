import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_ui/states.dart';

import '../models/contactModel.dart';
import 'contact_page.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {

  TextEditingController firstNameCtr = TextEditingController();
  TextEditingController lastNameCtr  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Contact'),),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'First name(required)',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  )
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: 'First name(optional)',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    )
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: '00 000 00 00',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(),
                    ),
                  prefixIcon: SizedBox(
                    width: 85,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 40,
                          child: Image.asset('assets/image/flag_UZB.jpg'),),
                        SizedBox(width: 5,),
                        Text('+998'),
                        SizedBox(width: 3,),
                      ],
                    ),
                  )
                ),
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
                onPressed: () {
                  if (firstNameCtr.text.isNotEmpty) {
                    contactList.add(ContactModel(
                        firstNameCtr.text + ' ' + lastNameCtr.text,
                        true,
                        'recently'));
                  }
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return ContactPage();
                      }));
                  setState(() {});
                },
                child: Text('Save')),
          ],
        ),
      ),
    );
  }
}
