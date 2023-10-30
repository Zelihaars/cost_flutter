import 'package:cost_flutter/components/app_bar.dart';
import 'package:cost_flutter/components/drawer_bar.dart';
import 'package:cost_flutter/screens/communication_page.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPage();
}

class _ContactPage extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  bool _formValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[150],
        appBar: MyAppBar(),
        drawer: DrawerBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/homepage_images/contact_us.png'),

                SizedBox(
                  width: 20,
                ),
                Row(
                  children: <Widget>[
                    MyExpanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Flexible(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Icon(Icons.person, color: Colors.red.shade900),
                                const Text('COORDINATOR',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11)),
                                const Text('       Professor Josephine Hegarty',
                                    style: TextStyle(fontSize: 9)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    MyExpanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Flexible(
                          child: Container(
                            padding: EdgeInsets.all(11),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Icon(Icons.email, color: Colors.red.shade900),
                                const Text('EMAIL',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                const Text('j.hegarty@ucc.ie',
                                    style: TextStyle(fontSize: 8)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    MyExpanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const CommunicationPage()),
                          );
                        },
                        child: Flexible(
                          child: Container(
                            padding: EdgeInsets.all(3),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Icon(Icons.map, color: Colors.red.shade900),
                                const Text('ADDRESS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                const Text(
                                    'School of Nursing and Midwifery,'
                                        'University College Cork, Ireland',
                                    style: TextStyle(fontSize: 7)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                  ],
                ), //Coordinator-email-address button

                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction, //
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: '*Full name',
                            border: OutlineInputBorder(), //
                          ),
                          validator: (value) {
                            // Doğrulama ekler
                            if (value == null || value.isEmpty) {
                              return 'Please enter your full name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10), //
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: '*Email ',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!value.contains('@')) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: '*Number',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your number';
                            } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              return 'Please enter only numbers';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: '*Message',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your message';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _formValid = true;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Message sent!')));
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (_formValid) {
                          return Colors.green;
                        }
                        return Colors.red.shade900;
                      },
                    ),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.green;
                        }
                        return null;
                      },
                    ),
                  ),
                  child: const Text(
                    'Send',
                    style: TextStyle(fontSize: 24),
                  ),
                ), //Send Button
              ],
            ),
          ),
        ));
  }
}

class MyExpanded extends StatelessWidget {
  final Widget child;
  MyExpanded({required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 9,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(5),
        child: this.child,
      ),
    );
  }
} //Expanded Button
