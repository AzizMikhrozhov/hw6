import 'package:flutter/material.dart';

class Callpage extends StatelessWidget{

const Callpage ({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('звонки ',),
      
      ),
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index)
        {
          final callItem=calls[index];
          return ListTile(
            leading: CircleAvatar(
              child: Icon(
                callItem.isMissed? Icons.call_missed: Icons.call,
                color: callItem.isMissed? Colors.red: Colors.green,
              ),
            ),
            title: Text(callItem.name),
            subtitle: Text(
              callItem.isMissed? 'Пропущеный звонок': 'Входящий звонок',
            ),
            trailing: Text(callItem.time),
          );

        }),
    ) ;
  
  }
}
class call {
  final String name;
  final String time;
  final bool isMissed;
  call ({
    required this.name,
    required this.time,
    required this.isMissed,
  });
}
final List <call> calls=[
  call(name: 'Jay Z', time:'15:30', isMissed: false),
  call(name: 'Biber Bober', time: '18:30', isMissed: false),
  call(name: 'Shifu', time: 'Сегодня', isMissed: true),
  call(name: 'CAt', time: 'Чт', isMissed: true),
];