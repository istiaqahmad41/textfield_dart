import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText= TextEditingController();
  var passText= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.phone,
              controller: emailText,

              decoration: InputDecoration(
                hintText: "Enter your email",
                //code for enabled border
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 3)),
                //focusborder means when user hover on the textfield
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black, width: 3)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                //suffixText: "Username exits",
               /* suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.green,
                    )),*/
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              height: 20,
            ),
            TextField(
              controller: passText,

              obscureText: true,//hide pass text
             // obscuringCharacter: "*",
              //enabled: false,
              decoration: InputDecoration(
                hintText: "Enter your passward",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.green, width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Colors.purpleAccent, width: 3)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blueGrey, width: 3)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            Container(
              height: 20,
            ),
            ElevatedButton(onPressed: (){

              String uemail= emailText.text.toString();
              String upass=passText.text;
              
              
              print("Email: $uemail, Pass:$upass");
            }, child: Text("Login"),)
          ],
        ),
      ),
    ));
  }
}
