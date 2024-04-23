import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'register.dart';
import 'about.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marlo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerHeight = 0.8 * screenWidth;
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell( // лого
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png', // Замените на путь к вашему преобразованному логотипу
                    height: containerHeight * 0.9,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Spacer(),
            Row( // войти
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Действия при нажатии на кнопку
                        print("Войти");
                        Navigator.push(
                          // Добавьте эту строку
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          
                          minimumSize: const Size(double.infinity, 70),
                          backgroundColor: const Color(
                              0xFFD20C34) // Задайте желаемую высоту кнопки
                          ),
                      child: const Text(
                        'Войти',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox( // промежуток между кнопками
              height: 20,
            ),
            Row( // зарегистрироватся 
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Действия при нажатии на кнопку
                        print("Зарегистрироваться");
                        Navigator.push(
                          // Добавьте эту строку
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 70),
                        backgroundColor:
                            Color(0xFF191919), // Замените на серый цвет
                      ),
                      child: const Text(
                        'Зарегистрироваться',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox( // промежуток между кнопками
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
