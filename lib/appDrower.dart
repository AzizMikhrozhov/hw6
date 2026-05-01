import 'package:flutter/material.dart';
import 'package:homework6/callPage.dart';
import 'package:homework6/contactPage.dart';


class AppDrower extends StatelessWidget {
  final VoidCallback toggleTheme;
  const AppDrower({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final TelegrmBlue = Color(0xFF2AABEE);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Container(
            height: 170,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: TelegrmBlue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 34, color: Color(0xFF2AABEE)),
                ),
                SizedBox(height: 12),
                Text(
                  'Ратмир ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(' +996999085875', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          drawerItem(
            context,
            icon: Icons.chat,
            title: 'чаты',
            onTap: () => Navigator.pop(context),
          ),
          drawerItem(
            context,
            icon: Icons.call,
            title: 'звонки',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Callpage()),
              );
            },
          ),
          drawerItem(
            context,
            icon: Icons.person_2,
            title: 'Контакты ',
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (_)=> Contactpage() ));
            },
          ),
          Divider(),
            drawerItem(context,
            icon: Icons.settings,
            title: 'Настройки',
            onTap: () {}

          ),
          drawerItem(context, icon: Icons.help_outline,
          title: 'Помощь', onTap: (){}
          ),   ListTile(
      leading: Icon(Icons.dark_mode),
      title: Text("Сменить тему"),
      onTap: () {
        Navigator.pop(context);
        toggleTheme();
      },
    
          ),

        ],
      ),
    );
  }

  Widget drawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      onTap: onTap,
    );
 
  }
}