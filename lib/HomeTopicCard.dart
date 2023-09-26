import 'package:flutter/material.dart';

class HomeTopicCard extends StatelessWidget {
  final String title;
  //final String img; 
  final String routeName;

   HomeTopicCard({super.key, 
    required this.title,
    //required this.img,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(alignment: Alignment.center,
        width: 150,
        height: 150,
        
        
        decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 25, 0, 255)),
        borderRadius: BorderRadius.circular(50)),
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(20),
        child: Column(
          children:
          
           <Widget>[
            
            Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fturismo.ig.com.br%2F2023-03-24%2Ftres-pontos-turisticos-brasil-entre-50-melhores-mundo.html&psig=AOvVaw3ngtWJShFEu_6jV_CBEcK6&ust=1695845160095000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKjvvvaJyYEDFQAAAAAdAAAAABAE'),
            Padding(
              padding: EdgeInsets.all(9),
              child:Center(child: 
               Text(
                title,
                style: const TextStyle(
                  
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 2, 12),
                  
                ),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}