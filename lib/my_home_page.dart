import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> name = ['Al-Hasan', 'Tali', 'Hasib', 'Karim', 'Rahim', 'Malik'];
  List<String> tempName = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'GetX Favourite App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: (){
                if(tempName.contains(name[index].toString())){
                  tempName.remove(name[index].toString());
                }else{
                  tempName.add(name[index].toString());
                }
                setState(() {

                });
              },
              title: Text(name[index].toString()),
              trailing: Icon(tempName.contains(name[index].toString()) ? Icons.favorite_border : Icons.favorite_rounded, color: Colors.red,),
            ),
          );
        },
      ),
    );
  }
}
