import 'package:flutter/material.dart';

import '../data/item.dart';

class CreateItem extends StatefulWidget{
  @override
  State createState () => new CreateItemState();

  final List<Item> _items;
  CreateItem(this._items);
}

class CreateItemState extends State<CreateItem>{

  final GlobalKey<FormState> _formItem = new GlobalKey<FormState>();
  Item _item = new Item("", "");
  
  void handleFormSave(){
    final FormState form = _formItem.currentState;
    form.save();
    widget._items.add(_item);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Scaffold(
        appBar: new AppBar(
        ),
        body: new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Form(
            key: _formItem,
            child: new ListView(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Nome"
                  ),
                  onSaved: (nameValue) => _item.setName(nameValue),
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Descrição"
                  ),
                  onSaved: (descriptionValue) => _item.setDescription(descriptionValue),
                ),
                new FlatButton(
                  child: new Text("Save"),
                  onPressed: () => handleFormSave(),
                )
              ],
            ),
          )
        )
      )
    );
  }
}