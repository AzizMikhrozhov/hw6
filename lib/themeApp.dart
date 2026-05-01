// import 'package:flutter/material.dart';

// class Themeapp extends StatefulWidget{

//   Themeapp ({super.key});

//   @override
//   State <Themeapp> createState()=> ThemeappState();

//   }


//   class ThemeappState extends State<Themeapp>{
//         ThemeMode themeMode = ThemeMode.light;


//  void onToggleTheme (){
//   setState(() {
//     themeMode == themeMode == ThemeMode.light
//      ?ThemeMode.dark:
//     ThemeMode.light;
//   });
//  }

//   }
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       title: 'theme Practice',
//       theme:ThemeData(
      
      
//       brightness:  Brightness.light,
//       scaffoldBackgroundColor: Colors.white,
//     appBarTheme: AppBarTheme(
//       backgroundColor: Colors.blue,
//     ),
//     floatingActionButtonTheme: FloatingActionButtonThemeData(
//       backgroundColor: Colors.blueAccent,
//     ),
//     ),
//     darkTheme:  ThemeData(
//       brightness: Brightness.dark,
//       scaffoldBackgroundColor: Colors.black,
//       appBarTheme: AppBarTheme(
//         backgroundColor: Colors.deepPurpleAccent,
//       ),
//     ),
//     home: HomePage(
//       onToggleTheme: toggleTheme, 
//       themeMode: ThemeMode),
  
//         );
  
//   }
  
//   class HomePage extends StatelessWidget{
//     final VoidCallback onToggleTheme;
//     final ThemeMode themeMode;

//    const HomePage({super.key,
//     required this.onToggleTheme,
//     required this.themeMode
    
//     });
    
//       @override
//       Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Пример Temdata и  Temmode'),

//       ),
//       floatingActionButton: FloatingActionButton(onPressed: onToggleTheme,
//       child: Icon(themeMode== themeMode.light? Icons.dark_mode : 
//       Icons.light_mode),
//       ),
//       body: Center(
//         child: Text(themeMode== themeMode.light? 'Светлый тема ':
//         'Темная тема',  style: TextStyle(fontSize: 24,),
//         ),
//       ),
//     );
//       }
//   }
  