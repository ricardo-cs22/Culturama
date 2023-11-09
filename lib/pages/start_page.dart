import 'package:culturama_beta/components/buttonR.dart';
import 'package:flutter/material.dart';

class StartPagState extends StatefulWidget {
  const StartPagState({Key? key}) : super(key: key);

  @override
  State<StartPagState> createState() => StartPagStateState();
}

class StartPagStateState extends State<StartPagState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollNotificationObserver(child:Padding(
        padding: EdgeInsets.only(top: 20, bottom: 10, left: 15, right: 15),
        child: Stack(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Image.asset(
                      "lib/img/logo.png",
                      width: 241,
                      height: 250,
                    ),
                    SizedBox(height: 100),
                    Text(
                      "Olá viajante",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    
                    SizedBox(height: 45),
                    Text("Está pronto para descobrir um novo lugar incrível?",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 200),
                    
                  ],
                ),
              ),
            ),
            Positioned(
              top: 16.0,
              right: 16.0,
              child: IconButton(
                icon: Icon(Icons.mode_night_outlined,size: 40.0),
                onPressed: () {
                  // Adicione ação desejada ao pressionar o ícone.
                },
              ),
            ),
            Positioned(
              bottom: 16.0,
              right: 16.0,
               child:ButtonR(text: "Começar", onPressed: () {}),),
          ],
        ),
      ),
    ),);
  }
}
