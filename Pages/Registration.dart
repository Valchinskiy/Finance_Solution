import 'package:flutter/material.dart';
import 'package:registration_autorization/Pages/Autorization.dart';
import 'package:registration_autorization/Pages/main_page.dart';
import '../../styleApp/ColorApp.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Регистрация',
          style: TextStyle(
            color: ColorsApplication.fontColor,
            fontSize: 32,
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
        backgroundColor: ColorsApplication.backColor_1,
      ),
      // Черный фон для страницы регистрации
      backgroundColor: ColorsApplication.backColor_2,
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
                              hintText: "Фамилия",
                              hintStyle: TextStyle(
                                color: ColorsApplication.fontColor
                                    .withOpacity(0.5),
                              ),
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                                color: ColorsApplication.fontColor),
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
                              hintText: "Имя",
                              hintStyle: TextStyle(
                                color: ColorsApplication.fontColor
                                    .withOpacity(0.5),
                              ),
                              border: InputBorder.none,
                            ),
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
                              hintText: "Почта",
                              hintStyle: TextStyle(
                                color: ColorsApplication.fontColor
                                    .withOpacity(0.5),
                              ),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                                color: ColorsApplication.fontColor),
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
                                color: ColorsApplication.fontColor),
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
                                    0, 0), // changes position of shadow
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
                              hintText: "Подтверждение пароля",
                              hintStyle: TextStyle(
                                color: ColorsApplication.fontColor
                                    .withOpacity(0.5),
                              ),
                              border: InputBorder.none,
                            ),
                            obscureText: true,
                            style: const TextStyle(
                                color: ColorsApplication.fontColor),
                          ),
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
                            builder: (context) => const Authorization(),
                          ),
                        );
                      },
                      child: const Text(
                        'Назад',
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
