import 'package:flutter/material.dart';
import '../../styleApp/ColorApp.dart';
import 'account.dart';
import 'replenishment.dart';
import 'spending.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (_selectedIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Replenishment(),
        ),
      );
    } else if (_selectedIndex == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Spending(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApplication.backColor_2,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: ColorsApplication.backColor_1,
        title: Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Account(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsApplication.widgetColor,
              foregroundColor: ColorsApplication.fontColor,
              shape: const CircleBorder(),
            ),
            child: const Icon(Icons.account_circle),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 50),
          const Center(
            child: Text(
              'Траты',
              style: TextStyle(
                height: 0,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ColorsApplication.fontColor,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  gradient: LinearGradient(
                      colors: [
                        ColorsApplication.backColor_1, // первый цвет градиента
                        ColorsApplication.includeTextColor
                      ],
                      end: Alignment.centerLeft,
                      begin: Alignment
                          .centerRight)), // Здесь можно добавить другие стили
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // Статистика трат и пополнений
          const Card(
            color: ColorsApplication.widgetColor,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Статистика',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorsApplication.fontColor,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Общая сумма трат:',
                        style: TextStyle(
                          color: ColorsApplication.fontColor,
                        ),
                      ),
                      Text(
                        '0 руб.',
                        style: TextStyle(
                          color: ColorsApplication.fontColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Общая сумма пополнений:',
                        style: TextStyle(
                          color: ColorsApplication.fontColor,
                        ),
                      ),
                      Text(
                        '0 руб.',
                        style: TextStyle(
                          color: ColorsApplication.fontColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          // Категории трат
          const Card(
            color: ColorsApplication.widgetColor,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Категории трат',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorsApplication.fontColor,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Еда',
                style: TextStyle(
                  color: ColorsApplication.fontColor,
                ),
              ),
              Text(
                '35%',
                style: TextStyle(
                  color: ColorsApplication.fontColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Транспорт',
                    style: TextStyle(
                      color: ColorsApplication.fontColor,
                    ),
                  ),
                  Text(
                    '20%',
                    style: TextStyle(
                      color: ColorsApplication.fontColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Развлечения',
                    style: TextStyle(
                      color: ColorsApplication.fontColor,
                    ),
                  ),
                  Text(
                    '15%',
                    style: TextStyle(
                      color: ColorsApplication.fontColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // Цели и бюджет
              Card(
                color: ColorsApplication.widgetColor,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Цели и бюджет',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorsApplication.fontColor,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Цель сбережений:',
                            style: TextStyle(
                              color: ColorsApplication.fontColor,
                            ),
                          ),
                          Text(
                            '50,000 руб.',
                            style: TextStyle(
                              color: ColorsApplication.fontColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: ColorsApplication.backColor_1,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            ColorsApplication.includeTextColor),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Месячный бюджет:',
                            style: TextStyle(
                              color: ColorsApplication.fontColor,
                            ),
                          ),
                          Text(
                            '30,000 руб.',
                            style: TextStyle(
                              color: ColorsApplication.fontColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorsApplication.backColor_1,
        selectedItemColor: ColorsApplication.widgetColor,
        unselectedItemColor: ColorsApplication.fontColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Пополнения',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Траты',
          ),
        ],
      ),
    );
  }
}
