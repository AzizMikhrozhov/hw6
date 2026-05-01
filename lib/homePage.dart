import 'package:flutter/material.dart';
import 'package:homework6/appDrower.dart';

import 'contactPage.dart';

class HomePage extends StatelessWidget{
  final VoidCallback toggleTheme;
  const HomePage ({super.key, required this.toggleTheme});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        

      ),
      drawer: AppDrower(toggleTheme: toggleTheme),
      body:  ListView.builder(
        itemCount: chats.length,

        itemBuilder: (context, index)
        {
          final chat=  chats [index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                chat.name[0],
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text(chat.name,
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              chat.missage,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(chat.time),
                if(chat.unreadCount>0)
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    chat.unreadCount.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            )
          );

        }
      ),
    
    );
    
  }
}