import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget{
  final String _title;
  final String _description;

  ItemInfo(this._title, this._description);

  @override
  Widget build(BuildContext context) {
    return new Card(
              child: new Center(
                child: new ListTile(
                  title: new Text(_title),
                  subtitle: new Text(_description),
                  leading: new Icon(Icons.stars),
                )
            )
          );
  }
  
}