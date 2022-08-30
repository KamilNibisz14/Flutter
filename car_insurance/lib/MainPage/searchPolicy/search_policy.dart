
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../Providers/MainProviders/agent_data.dart';


class SearchPage extends StatefulWidget {
  static const String id = 'searchPage';
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool textColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,
        actions: <Center>[
          Center(child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text('${context.watch<AgentData>().name} ${context.watch<AgentData>().surname}',
                style: TextStyle(fontSize: 17.0)),
          ))
        ],
      ),
      body: Center(
        child: Column(
          children: [
          Expanded(
              child:  Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Enter policy ID',
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ),
              )
          ),
          SizedBox(height: 20,),
          Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            child: Text('No Policy Found!', style: TextStyle(fontSize: 24, color: textColor ? Colors.red :Colors.transparent )),
                          ),
                        )),
                    Expanded(
                      flex: 4,
                        child: Container(
                        )),
                  ],
                ),
          )),
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SystemChannels.textInput.invokeMethod('TextInput.hide');
          setState(() {
            Navigator.pushNamed(context, 'policyView');

          });
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.search),
      ),
    );
  }
}
