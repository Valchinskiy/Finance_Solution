import 'package:flutter/material.dart';
import 'package:registration_autorization/Pages/Forgot_password.dart';
import 'package:registration_autorization/Pages/main_page.dart';
import 'Registration.dart';
import '../../styleApp/ColorApp.dart';

class Authorization extends StatelessWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: ColorsApplication.backColor_1,
        title: const Text(
          'Финансовое решение',
          style: TextStyle(
            fontSize: 32,
            color: ColorsApplication.fontColor,
            shadows: [
              Shadow(
                offset: Offset(
                    2.0, 2.0), // горизонтальное и вертикальное смещение тени
                blurRadius: 3.0, // радиус размытия тени
                color: Colors.grey, // цвет тени
              ),
            ],
          ),
        ),
      ),
      // Черный фон для всего экрана
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: screenWidth < 600 ? screenWidth * 0.9 : 400,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                            border: Border.all(
                              color:
                                  ColorsApplication.fontColor.withOpacity(0.5),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            color: ColorsApplication.includeTextColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Почта",
                              hintStyle: TextStyle(
                                color: ColorsApplication.fontColor
                                    .withOpacity(0.5),
                              ),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: ColorsApplication.fontColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                            border: Border.all(
                              color:
                                  ColorsApplication.fontColor.withOpacity(0.5),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            color: ColorsApplication.includeTextColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Пароль",
                              hintStyle: TextStyle(
                                color: ColorsApplication.fontColor
                                    .withOpacity(0.5),
                              ),
                              border: InputBorder.none,
                            ),
                            obscureText: true,
                            style: const TextStyle(
                              color: ColorsApplication.fontColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsApplication.backColor_2,
                        foregroundColor: ColorsApplication.fontColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPassword(),
                          ),
                        );
                      },
                      child: const Text(
                        'Забыли пароль?',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(2.0,
                                  2.0), // горизонтальное и вертикальное смещение тени
                              blurRadius: 3.0, // радиус размытия тени
                              color: Colors.grey, // цвет тени
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsApplication.widgetColor,
                        foregroundColor: ColorsApplication.fontColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Войти',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(2.0,
                                  2.0), // горизонтальное и вертикальное смещение тени
                              blurRadius: 3.0, // радиус размытия тени
                              color: Colors.grey, // цвет тени
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsApplication.widgetColor,
                        foregroundColor: ColorsApplication.fontColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Registration(),
                          ),
                        );
                      },
                      child: const Text(
                        'Регистрация',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(2.0,
                                  2.0), // горизонтальное и вертикальное смещение тени
                              blurRadius: 3.0, // радиус размытия тени
                              color: Colors.grey, // цвет тени
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
