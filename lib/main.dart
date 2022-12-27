import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var txt = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          body:SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(txt.toString(),style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                  const SizedBox(height: 40,),
                  TextButton(onPressed: (){
                    setState(() {
                      txt+=1;
                    });
                  },style: TextButton.styleFrom(
                      foregroundColor: Colors.black45, backgroundColor: Colors.grey[400]
                  ),child: const Text('Change me',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),),
                ],
              ),
            ),
          ),
        ));
  }
}
