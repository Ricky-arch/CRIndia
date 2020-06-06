import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyContacts extends StatelessWidget {
  final String instagram, twitter, mail, officialWeb, mediumLink;

  const CompanyContacts(
      {Key key,
      @required this.instagram,
      @required this.twitter,
      @required this.mail,
      @required this.officialWeb,
      this.mediumLink})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        launch(instagram);
                      },
                      child: Image(
                        image: AssetImage('images/contacts/i.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Container(
                        color: Colors.blue,
                        child: SizedBox(
                          height: 25,
                          width: 1,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        launch(twitter);
                      },
                      child: Image(
                        image: AssetImage('images/contacts/t.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Container(
                        color: Colors.blue,
                        child: SizedBox(
                          height: 25,
                          width: 1,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15, 15, 0),
                    child: GestureDetector(
                      onTap: () {
                        _createEmail(mail);
                      },
                      child: Image(
                        image: AssetImage('images/contacts/g.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 20),
            child: GestureDetector(
              child: Text(
                "Visit Company website for regular updates!",
                maxLines: null,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                launch(officialWeb);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 20),
            child: GestureDetector(
              child: Text(
                "To know more read our Medium Page!",
                maxLines: null,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                launch(mediumLink);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _createEmail(address) async {
    var emailAddress = 'mailto:$address';

    if (await canLaunch(emailAddress)) {
      await launch(emailAddress);
    } else {
      throw 'Could not Email';
    }
  }
}
