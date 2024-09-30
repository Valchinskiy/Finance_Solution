import 'package:flutter/material.dart';
import '../../styleApp/ColorApp.dart';
import '../Pages/Autorization.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApplication.backColor_2,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsApplication.backColor_1,
        title: const Text(
          'Аккаунт',
          textAlign: TextAlign.right,
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
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            color: ColorsApplication.widgetColor,
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Authorization()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 50),
          const Center(
            child: CircleAvatar(
              radius: 75,
              backgroundColor: ColorsApplication.widgetColor,
              backgroundImage:
                  AssetImage('assets/icons/Ava_icons.jpg'), // Аватарка
            ),
          ),
          const SizedBox(height: 50),
          _buildInputField('Фамилия', 'Введите фамилию'),
          const SizedBox(height: 20),
          _buildInputField('Имя', 'Введите имя'),
          const SizedBox(height: 20),
          _buildInputField('Отчество', 'Введите отчество'),
          const SizedBox(height: 20),
          _buildInputField('Номер телефона', 'Введите номер телефона'),
          const SizedBox(height: 20),
          _buildInputField('Общее количество трат', 'Итоговая сумма трат'),
          const SizedBox(height: 20),
          _buildInputField(
              'Общее количество пополнений', 'Итоговая сумма пополнений'),
        ],
      ),
    );
  }

  // Метод для построения стилизованного поля ввода
  Widget _buildInputField(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: ColorsApplication.fontColor,
                fontSize: 16,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              color: ColorsApplication.fontColor,
              onPressed: () {
                // Вызов виджета для изменения данных
              },
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 1), // Смещение тени
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
                hintText: hintText,
                hintStyle: TextStyle(
                  color: ColorsApplication.fontColor.withOpacity(0.5),
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(
                color: ColorsApplication.fontColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void showEditDialog(BuildContext context, String label, String hintText) {
    // Реализация виджета для изменения данных
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Изменить $label'),
          content: TextField(
            decoration: InputDecoration(
              hintText: hintText,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Сохранение данных
                Navigator.of(context).pop();
              },
              child: const Text('Сохранить'),
            ),
            TextButton(
              onPressed: () {
                // Отмена изменений
                Navigator.of(context).pop();
              },
              child: const Text('Отмена'),
            ),
          ],
        );
      },
    );
  }
}
