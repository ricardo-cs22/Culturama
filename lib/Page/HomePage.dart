import 'package:culturama1/HomeTopicCard.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollNotificationObserver(
      child: Scaffold( 
        drawer:Drawer(
      child: ListView(
       
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 3, 101, 182),
          ),
          child: Text('Culturama'),
        ),
        ListTile(
          title: const Text('Inicio'),
          onTap: () {
            
          },
        ),
        ListTile(
          
          title: const Text('Item 2'),
          onTap: () {
            
          },
        ),
      ],
      ),
    ),
        appBar: AppBar(
          title: const Text('Culturama'),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),),
          IconButton(onPressed: (){}, icon: Icon(Icons.star),),
          IconButton(onPressed: (){}, icon: Icon(Icons.person))]
          
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
            Padding(
            
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIconColor: Colors.blueAccent,
                  fillColor: Colors.amber,
                  labelText: 'Pesquisar',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                  
                ),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                HomeTopicCard(
                  title: 'Conheça +',
                                  routeName: '/melhores_destinos', /*img: ''*/
                ),
                HomeTopicCard(
                  title: '    Guias\nTurísticos',
                  
                  routeName: '/guias_turisticos', /*img: 'l*/
                ),]),
                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[HomeTopicCard(
                  title: 'Eventos',
                  
                  routeName: '/eventos', /*img: ''*/
                ),
                 HomeTopicCard(
                  title: 'Restaurantes',
                
                  routeName: '/restaurantes', /*img: ''*/
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                HomeTopicCard(
                  title:  '    Pontos\n Turisticos ',
                
                  routeName: '/trilhas', /*img: ''*/
                ),
                
                HomeTopicCard(title: '  eventos\nem tempo\n     real' ,  routeName: '', /*img: ''*/),
              ],
            ),
          ],
        ),
      ),
    );
  }
}