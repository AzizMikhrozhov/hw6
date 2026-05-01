import 'package:flutter/material.dart';

class Contactpage extends StatelessWidget{

const Contactpage ({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контакты  ',),
      
      ),
      body: Center(
        child: Text('Список Контактов',
        style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
class chat {
  final String name;
  final String missage;
  final String time;
  final int unreadCount;
  chat ({
    required this.name,
    required this.missage,
    required this.time,
    required this.unreadCount,
  });
}
  final List<chat> chats=[
chat(
  name: 'Maмa', 
  missage: 'Купи хлеб дамой',
   time: '12:30', 
   unreadCount: 2,),
   chat(name: 'billi Ellish',
    missage: 'Hi, ',
     time: '11:00', 
     unreadCount: 0,),
     chat(name: "Путин",
      missage: 'че делать с депутатами)',
       time: 'Вчера', 
       unreadCount:  1),
       chat(name: 'Жена', 
       missage: 'Ужин готов)',
        time: 'Пн',
         unreadCount: 0)
  ];


