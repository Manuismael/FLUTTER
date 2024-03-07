import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  Person person = new Person(size: 180);
  print(person.name);
}

class Person {
  String? name;
  int? age;
  String? sex;
  int? size;

  Person({this.name, this.age, this.sex, this.size});

}
Person jonathan = new Person(name: "Jonathan", age:20, sex:"M", size: 184);
Person sephora = new Person(name: "Sephora", age:18, sex:"F", size: 160);
Person michkath = new Person(name: "Michkath", age:18, sex:"M", size: 174);
Person mendel = new Person(name: "Mendel", age:18, sex:"M", size: 162);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var names=[jonathan, sephora, michkath, mendel];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFab0ab),
          title: Text("Users Profiles"),
        ),
        body:  ListView(
            children: [

              ... names.map((e) =>
                  ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.EXIU48YDcroeADMh12l3xQHaHa?rs=1&pid=ImgDetMain'),),
                    title: Text(e.name.toString()),
                    subtitle: Text("Age:"+e.age.toString()+" Taille:"+e.size.toString()+" Sexe:"+e.sex.toString()),
                  )
              ).toList()

            ]

        ),
        bottomNavigationBar:  NavigationBar(
          selectedIndex: 1,

          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Favoris',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: () {  },),
      ),
    );
  }
}