import 'package:flutter/material.dart';
import 'package:flutter_application_6/provider/home_proider.dart';
import 'package:provider/provider.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var text1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: text1,
        ),

        ElevatedButton(onPressed: (){

          var provider = context.read<HomeProvider>();
          provider.add1(text1.text);
        }, child: Text("ADD")),


        Builder(
          builder: (context) {
            var provider =  context.watch<HomeProvider>();
            return ListView.builder(
              shrinkWrap: true,
              itemCount: provider.items.length,
              itemBuilder: (context,index){
              return ListTile(
                trailing: IconButton(onPressed: (){provider.remove1(index);}, icon: Icon(Icons.delete)),
                title: Text(provider.items[index].toString()),
              );
            });
          }
        )
      ],),
    );
  }
}