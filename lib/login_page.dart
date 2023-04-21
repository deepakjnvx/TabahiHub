import 'package:flutter/material.dart';
import 'chat_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "MyApp",
//       home: Homepage(),
//       theme: ThemeData(
//         accentColor: Colors.red,
//         primarySwatch: Colors.green,
//         brightness: Brightness.dark,
//       ),
//     );
//   }
// }

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   String mytext = "Hello World";
//   void _changetext() {
//     setState(() {
//       if (mytext.startsWith("H")) {
//         mytext = "Welcome to my app";
//       } else {
//         mytext = "Hello World";
//       }
//     });
//   }

//   Widget _bodywidget() {
//     return Container(
//       padding: EdgeInsets.all(5),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               mytext,
//               style: TextStyle(
//                 color: Colors.blueAccent,
//                 fontSize: 20,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(20),
//             ),
//             ElevatedButton(
//               onPressed: _changetext,
//               child: Text(
//                 "click",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("new app"),
//       ),
//       body: _bodywidget(),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//         primaryColor: Colors.amber,
//         brightness: Brightness.light,
//       ),
//       home: LoginPage(),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _user = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("OxyShine HealthCare 👨‍⚕️"),
      // ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const Image(
            image: AssetImage("assets/backg.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(
                size: 100,
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: const InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: "Enter your Patient ID."),
                          keyboardType: TextInputType.emailAddress,
                          controller: _user,
                        ),
                        Container(
                          padding: EdgeInsets.all(25),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Password"),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Container(
                          padding: EdgeInsets.all(25),
                        ),
                        MaterialButton(
                          color: Colors.teal,
                          splashColor: Colors.red,
                          textColor: Colors.white,
                          child: Text("Login"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => chatScreen(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
