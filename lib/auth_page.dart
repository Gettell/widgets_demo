import 'package:flutter/material.dart';

class AuthPageScreen extends StatelessWidget {
  const AuthPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: const Color(0xFFeceff1), width: 2));

    const inkWellStyle = TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold,color: Color(0xFF0079D0));

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/fon.jpg'),
            fit: BoxFit.cover)
          ),
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 150,),
                const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/ninja.png'),),),
                SizedBox(height: 20),
                Text('Введите логин в виде 10 цифр номера телефона', style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
                SizedBox(height: 20),
               TextField(
                 keyboardType: TextInputType.phone,
                   decoration: InputDecoration(
                   filled: true,
                   fillColor: Color(0xFFeceff1),
                   labelText: 'Телефон',
                   enabledBorder: borderStyle,
                   focusedBorder: borderStyle,
                 ),
               ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Пароль',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
                SizedBox(height: 28),
                SizedBox(width: 154, height: 42,
                  child: ElevatedButton(onPressed: () {},
                    child: Text('Войти'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0079D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 32),
                InkWell(
                   child: const Text('Регистрация',
                       style: inkWellStyle),
                   onTap: () {}),
                SizedBox(height: 20),
                InkWell(
                    child: const Text('Забыли пароль',
                        style: inkWellStyle),
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
