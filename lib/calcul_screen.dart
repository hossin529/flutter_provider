import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/CalculProvider.dart';

class CalculScreen extends StatefulWidget {
  @override
  _CalculScreenState createState() => _CalculScreenState();
}

class _CalculScreenState extends State<CalculScreen> {
  TextEditingController t1 = new TextEditingController();
  TextEditingController t2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(21.0),
          child: ChangeNotifierProvider(
              builder: (_) => CalculProvider(),
              child: Consumer<CalculProvider>(
                builder: (context, provider, child) => provider.busy
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Column(
                        children: <Widget>[
                          TextField(
                            controller: t1,
                          ),
                          TextField(
                            controller: t2,
                          ),
                          RaisedButton(
                            onPressed: () {
                              provider.setResult(t1.text + ' ' + t2.text);
                            },
                            child: Text('data'),
                          ),
                          Text(provider.result)
                        ],
                      ),
              ))),
    );
  }
}
