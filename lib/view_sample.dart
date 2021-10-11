import 'package:flutter/material.dart';
import 'ServiceLocator.dart';
import 'TelAndSmsService.dart';

class ViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'view add or remove',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: ViewPage(),
    );
  }
}

class ViewPage extends StatefulWidget {
  @override
  ViewPageState createState() => ViewPageState();
}

class ViewPageState extends State<ViewPage> {
  bool toggle = true;
  final TelAndSmsService _service = locator<TelAndSmsService>();
  final String number = "123456789";
  final String email = "12345@example.com";
  @override
  Widget build(BuildContext context) {
    TextEditingController _numberCtrl = TextEditingController();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea DEMO'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _numberCtrl,
                decoration: InputDecoration(labelText: "Celular"),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: Text("llamada"),
              onPressed: () => _service.call(_numberCtrl.text),
            ),
            ElevatedButton(
                child: Text("Mensajes de texto"),
                onPressed: () => _service.sendSms(_numberCtrl.text)),

            // ElevatedButton(
            //     child: Text("Correo electrónico"),
            //     onPressed: () => _service.sendEmail(email)),
            Text(
                "The Leguends: \n Jhon Luna \n Fernando Marin \n Zileri Arapa \n Francisco Orbegoso"),
          ],
        ),
      ),
      persistentFooterButtons: [Text(" by GROoT")],
    );
  }
}
