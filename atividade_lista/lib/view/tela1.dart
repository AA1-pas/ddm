import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(36),
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 200),
              child: Icon(
                Icons.facebook,
                color: Colors.white,
                size: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.image,
                          size: 50,
                          color: Colors.blue,
                        )),
                  ),
                  Text(
                    "Allan Ricardo Pasquali",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  color: Colors.grey[900],
                  child: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Entrar em outra conta",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    color: Colors.grey[900],
                    child: const Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Encontrar sua conta",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              color: Colors.grey[900],
              width: 500,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Text(
                "CRIAR NOVA CONTA DO FACEBOOK",
                style: TextStyle(color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
