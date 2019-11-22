import 'package:flutter/material.dart';


class PageCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new PageCardState();
}

class PageCardState extends State<PageCard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var card = new SizedBox(
      //width: 100.0,
      child: new Card(
        color: Colors.red,
        elevation: 18,
        margin: const EdgeInsets.all(48),
        child:new Column(
          children: [
            new ListTile(
              title: new Text('1625 Main Street',
                  style: new TextStyle(fontWeight: FontWeight.w500)),
              subtitle: new Text('My City, CA 99984'),
              leading: new Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            new Divider(),
            new ListTile(
              title: new Text('(408) 555-1212',
                  style: new TextStyle(fontWeight: FontWeight.w500)),
              leading: new Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            new ListTile(
              title: new Text('costa@example.com'),
              leading: new Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );

    return card;
  }

}