
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutterawsupdate/models/IDIncrementation.dart';
import 'package:intl/intl.dart';
import 'models/JSONtest.dart';


class BlogsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BlogsPageState();
  }
}

class _BlogsPageState extends State<BlogsPage> {
  List<JSONtest> _listTest = [];
  List<IDIncrementation> _IDList = [];
  var inpuVal =0;

  @override
  void initState() {
    super.initState();
    _observeIDIncrement();
  }

  Widget _jsonList() {
    return ListView.builder(
      itemCount: _IDList.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(_IDList[index].IDNumber!),
            trailing: IconButton(
              icon: Icon(Icons.refresh),
              onPressed: (){
                  updateID(_IDList[index]);
              },
            ),
            onTap: () => {
               /*replaceList = _IDList[index].IDNumber!.split(''),
              print("replaceList: $replaceList"),
               replaceList.removeWhere((element) => !isNumber(element)),
              concatenate = StringBuffer(),
                replaceList.forEach((item){
                      concatenate.write(item);
                  }),
                print("concatenate: $concatenate"),
              replaceString = concatenate.toString(),
              replaceString = replaceString + "" + add(1).toString(),
              print("replaceString: $replaceString"),
              updateIncrement(_IDList[index], replaceString),*/
            },
          ),
        );
      },
    );
  }

  /*Future<void> _showCreateBlogAlert(BuildContext context, JSONtest jsoNtest) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Update Data'),
            content: Column(

              children: [
                TextField(
                  controller: _itemidController..text = jsoNtest.id,
                  decoration: InputDecoration(hintText: 'Enter blog name...'),
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  controller: _itemjsonContentController..text = jsoNtest.USERdetails!,
                  maxLines: 6,
                  decoration: InputDecoration(hintText: 'Enter blog name...'),
                ),
                TextField(
                  controller: _itemDateController..text = jsoNtest.adddate.toString(),
                  decoration: InputDecoration(hintText: 'Enter blog name...'),
                ),
              ],
            ),
            actions: [
              ElevatedButton(
                child: Text('Cancel'),
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                child: Text('Update'),
                onPressed: () {
                  JSONtest update =  jsoNtest.copyWith(id: _itemidController.value.text,
                    USERdetails: _itemjsonContentController.value.text,);
                  _updateData(update);
                },
              ),
            ],
          );
        });
  }*/

  void _getList() async {
    try {
      var _list = await Amplify.DataStore.query(JSONtest.classType);
      setState(() {
        _listTest = _list;
      });
      print("List:$_listTest");
    } catch (e) {
      print(e);
    }
  }

  void _observeList() async {
    Amplify.DataStore.observe(JSONtest.classType).listen((event) {
      _getList();
    });
  }

  void _observeIDIncrement() async {
    Amplify.DataStore.observe(IDIncrementation.classType).listen((event) {
      _getIDIncrement();
    });
  }

  void _getIDIncrement() async {
    try {
      var _list = await Amplify.DataStore.query(IDIncrementation.classType);
      setState(() {
        _IDList = _list;
      });
      print("List:$_IDList");
    } catch (e) {
      print(e);
    }
  }


  Future<void> _updateData(JSONtest test) async {

    try {
      // to update data in DataStore, we again pass an instance of a model to
      // Amplify.DataStore.save()
      await Amplify.DataStore.save(test);
    } catch (e) {
      print('An error occurred while saving Todo: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json Test'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          inpuVal = int.parse(incrementNUm(inpuVal));
          //print("result: +$inpuVal");
        },
      ),

      //_newPostButton(context, _IDList, inpuVal),
      body: _jsonList(),
    );
  }

  void updateIncrement(IDIncrementation increment, String incrementvalue) {
    IDIncrementation incrementation = increment.copyWith(
        id: increment.id,
        IDNumber: incrementvalue,
        IDType: increment.IDType,
        IDTypeInt: increment.IDTypeInt);
    _updateIDData(incrementation);
  }

  Future<void> _updateIDData(IDIncrementation test) async {
    try {
      // to update data in DataStore, we again pass an instance of a model to
      await Amplify.DataStore.save(test);
      _getIDIncrement();
    } catch (e) {
      print('An error occurred while saving Todo: $e');
    }
  }

  void updateID(IDIncrementation incrementId) async {
    if (incrementId.IDNumber != null && incrementId.IDNumber!.length > 0) {
      var number = await (incrementNUm(int.parse(incrementId.IDNumber!.substring(2))));
      var type = await checkIDType(int.parse(incrementId.IDTypeInt!));
      updateIncrement(incrementId,type+number);
    }
  }
}

  String incrementNUm(int val){
    NumberFormat formatter = new NumberFormat("00000");
    val ++;
    var intVal = formatter.format(val);
    print("intVal: $intVal");
    return intVal;
  }

 String checkIDType(int type) {
  var typeStr;
    switch (type) {
      case 1:
        typeStr = "ST";
        break;
      case 2:
        typeStr = "IT";
        break;
      case 3:
        typeStr = "CS";
        break;
    }
    return typeStr;
  }


Future<void> _showIDIncrementAlert(BuildContext context, List<IDIncrementation> incrementationList) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Update Data'),
          content: ListView.builder(
            itemCount: incrementationList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(incrementationList[index].IDNumber!),
                  onTap: () {

                  },
                ),
              );
            },
          )
          );
      });
}


