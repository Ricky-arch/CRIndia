import 'package:crindia/constants/data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool isHTML = false;
  TextEditingController name = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController message = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> send() async {
    final Email email = Email(
      body: name.text + " " + message.text,
      subject: subject.text,
      recipients: ["srvsutradhar7@gmail.com"],
      isHTML: isHTML,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(platformResponse),
    ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    name.dispose();
    emailController.dispose();
    subject.dispose();
    message.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: name,
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return 'Please Enter Name*';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black.withOpacity(.8)),
                      hintText: "Name"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return 'Please Enter Email*';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black.withOpacity(.8)),
                      hintText: "Email"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: subject,
                  maxLines: null,
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return 'Please Enter Subject*';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black.withOpacity(.8)),
                      hintText: "Subject"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: message,
                  maxLines: null,
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return 'Please Enter Message*';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black.withOpacity(.8)),
                      hintText: "Message"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              color: Colors.yellow,
              onPressed: ()async {
                if (_formKey.currentState.validate()) {
                  await send();
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Sending ur Quote')));
                }
              },
              child: Text('Send Message'),
            ),
          ),
        ]));
  }
}
