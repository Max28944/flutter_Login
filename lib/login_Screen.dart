import 'package:flutter/material.dart';
 class MyLoginScreen extends StatefulWidget {
    const MyLoginScreen({super.key});
  
    @override
    State<MyLoginScreen> createState() => _MyLoginScreenState();
  }
  
  class _MyLoginScreenState extends State<MyLoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
          width: 400.0,
          height: 400.0,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(25),
           // color: Color.fromARGB(255, 255, 176, 231),
            shape: BoxShape.circle,
            image: DecorationImage(
             image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGS_G-JkFldEfIiRiGzfnlibRuSg8hDf5ELA&usqp=CAU'),
            fit: BoxFit.fill
            ),
          //child: Text(
           // 'This is container',
           // textAlign: TextAlign.center,
           ),
        ),
           // Container(
           //     alignment: Alignment.center,
           //     padding: const EdgeInsets.all(10),
           //     child: Icon(Icons.key, size: 50,),
           //    ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
    }
  }