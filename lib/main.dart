import 'package:flutter/material.dart';
import 'package:task_9/Second.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyScafold(),
    );
  }
}
class MyScafold extends StatefulWidget {
  const MyScafold({super.key});

  @override
  State<MyScafold> createState() => _MyScafoldState();
}

class _MyScafoldState extends State<MyScafold> {

  final user = TextEditingController();
  final password =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login")),
      ),body: Center(
      child: ListView(children: [
        SizedBox(height: 150,),
        Icon (Icons.diamond, size: 50, ),
        Text("Login", textAlign: TextAlign.center,),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: user,
            decoration: InputDecoration(
                labelText: "Username"),),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller:password,
            decoration: InputDecoration(
                labelText: "Password"),),
        ),
        SizedBox(height: 30,),
        OverflowBar(
          alignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                user.clear();
                password.clear();

              },
            ), ElevatedButton(
              child: const Text('NEXT'),
              onPressed: () {

                Navigator.push(  context  ,
                    MaterialPageRoute(builder: (context) =>
                        MySecondScreen(data: "Welcome ${user.text}"
                          ,passdata: password.text,
                        ) ,
                    )  );
                // TODO: Show the next page (101)
              },
            ),
          ],
        ),
      ], ) ,)
      ,
    );
  }
}

