import 'package:flutter/material.dart';

import './item_create_page.dart';
import '../UI/item_info.dart';
import '../data/item.dart';

class ListPage extends StatefulWidget {
  @override
  State createState() => new ListPageState();
}

class ListPageState extends State<ListPage>{

  List<Item> _items;

  @override
    void initState() {
      super.initState();
      _items = new List();
    }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Lista"),
        ),
        body: new Column(
        children: _createItems(),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new CreateItem(_items)
            )
          ),
          child: new Icon(Icons.add),
        ),
      )
    );
  }

  List<Widget> _createItems(){
    List<Widget> widgets = new List();
    _items.forEach((element) => widgets.add(new ItemInfo(element.name, element.description)));
    return widgets; 
  }
}