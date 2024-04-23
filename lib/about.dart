import 'package:flutter/material.dart';
import 'component/about.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerHeight = 0.8 * screenWidth;
    return Scaffold(
      appBar: AppBar(
        title: Text('О нас'),
      ),
      backgroundColor: const Color(0xFF0D0D0D),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png', // Замените на путь к вашему преобразованному логотипу
                  height: containerHeight * 0.9,
                  color: Colors.red,
                ),
              ],
            ),
            CustomContainer(
              width: screenWidth * 0.95,
              height: 100,
              name: 'Иван Бильо',
              position: 'Backend разработчие',
            ),
            SizedBox(height: 16),
            CustomContainer(
              width: screenWidth * 0.95,
              height: 100,
              name: 'Демьян Пашков',
              position: 'Frontend разработчик',
            ),
          ],
        ),
      ),
    );
  }
}
