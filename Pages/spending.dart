import 'package:flutter/material.dart';
import '../../styleApp/ColorApp.dart';

class Spending extends StatefulWidget {
  const Spending({super.key});

  @override
  State<Spending> createState() => _SpendingState();
}

class _SpendingState extends State<Spending> {
  // Список для хранения трат и пополнений
  List<String> spendings = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApplication.backColor_2,
      appBar: AppBar(
        backgroundColor: ColorsApplication.backColor_1,
        title: const Text(
          'Список трат',
          style: TextStyle(
            color: ColorsApplication.fontColor,
            fontSize: 24,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: spendings.isEmpty
          ? const Center(
              child: Text(
                'Здесь отображается список трат',
                style:
                    TextStyle(color: ColorsApplication.fontColor, fontSize: 16),
              ),
            )
          : ListView.builder(
              itemCount: spendings.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 1),
                        ),
                      ],
                      border: Border.all(
                        color: ColorsApplication.fontColor.withOpacity(0.5),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[800],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 16.0),
                      child: Text(
                        spendings[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
            bottom: 15.0), // Поднимаем кнопку на 15 пикселей
        child: FloatingActionButton(
          backgroundColor: ColorsApplication.widgetColor,
          onPressed: () async {
            // Открываем модальное окно для добавления новой траты
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddSpendingScreen(
                  spendings: spendings,
                ),
              ),
            );

            // Обновляем список после возвращения с экрана добавления
            if (result != null) {
              setState(() {
                spendings = result;
              });
            }
          },
          child: const Icon(Icons.add, color: ColorsApplication.fontColor),
        ),
      ),
    );
  }
}

class AddSpendingScreen extends StatefulWidget {
  final List<String> spendings;

  const AddSpendingScreen({super.key, required this.spendings});

  @override
  // ignore: library_private_types_in_public_api
  _AddSpendingScreenState createState() => _AddSpendingScreenState();
}

class _AddSpendingScreenState extends State<AddSpendingScreen> {
  String selectedCategory = 'Траты';
  String itemAmount = '';
  String itemName = ''; // Поле для названия траты

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApplication.backColor_2,
      appBar: AppBar(
        backgroundColor: ColorsApplication.backColor_1,
        title: const Text(
          'Добавить трату',
          style: TextStyle(color: ColorsApplication.fontColor, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),

            // Контейнер для ввода названия траты с тенями
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 1),
                  ),
                ],
                border: Border.all(
                  color: ColorsApplication.fontColor.withOpacity(0.5),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
                color: ColorsApplication.includeTextColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Название траты",
                    hintStyle: TextStyle(
                      color: ColorsApplication.fontColor.withOpacity(0.5),
                    ),
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(color: ColorsApplication.fontColor),
                  onChanged: (value) {
                    setState(() {
                      itemName = value;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 15), // Отступ между элементами

            // Контейнер для ввода суммы с тенями
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 1),
                  ),
                ],
                border: Border.all(
                  color: ColorsApplication.fontColor.withOpacity(0.5),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
                color: ColorsApplication.includeTextColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Сумма траты",
                    hintStyle: TextStyle(
                      color: ColorsApplication.fontColor.withOpacity(0.5),
                    ),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: ColorsApplication.fontColor),
                  onChanged: (value) {
                    setState(() {
                      itemAmount = value;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Контейнер для кнопок и стилизация
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 1),
                  ),
                ],
                border: Border.all(
                  color: ColorsApplication.fontColor.withOpacity(0.5),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
                color: ColorsApplication.includeTextColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: ColorsApplication.fontColor,
                        backgroundColor: ColorsApplication.widgetColor,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Отмена'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: ColorsApplication.fontColor,
                        backgroundColor: ColorsApplication.widgetColor,
                      ),
                      onPressed: itemAmount.isEmpty || itemName.isEmpty
                          ? null
                          : () {
                              setState(() {
                                widget.spendings
                                    .add('Трата: $itemName - $itemAmount');
                              });
                              Navigator.of(context).pop(widget.spendings);
                            },
                      child: const Text('Добавить'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20), // Отступ
          ],
        ),
      ),
    );
  }
}
