import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  _recuperarCep() async {

    String cep = "04696270";
    String url = "https://viacep.com.br/ws/04696270/json";

    http.Response response;

    response = await http.get(url);

    print("resposta: " + response.statusCode.toString());
    print("resposta: " + response.body);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviço CEP"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Clique aqui"),
              onPressed: _recuperarCep(),
            )
          ],
        ),
      ),
      
    );
  }
}