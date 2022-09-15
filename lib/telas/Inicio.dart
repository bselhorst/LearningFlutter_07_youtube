import 'package:app7_youtube/Api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    Api api = Api();
    api.pesquisar("");

    return Container(
      child: Center(
        child: Text(
          "Início",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
