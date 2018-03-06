class Item {
  String _name;
  String _description;

  String get name => _name;
  String get description => _description;

  void setName(String newName){
    _name = newName;
  }

  void setDescription(String newDescription){
    _description = newDescription;
  }

  Item(this._name, this._description); 
}