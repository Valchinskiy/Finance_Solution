import 'package:flutter/material.dart';
import '../../styleApp/ColorApp.dart';

class Replenishment extends StatefulWidget {
  const Replenishment({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ReplenishmentState createState() => _ReplenishmentState();
}

class _ReplenishmentState extends State<Replenishment> {
  final List<String> _replenishments = [];
  final TextEditingController _controller = TextEditingController();

  String itemAmount = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addReplenishment() {
    setState(() {
      if (itemAmount.isNotEmpty) {
        _replenishments.add(itemAmount);
      }
    });
    _controller.clear();
    itemAmount = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApplication.backColor_2,
      appBar: AppBar(
        backgroundColor: ColorsApplication.backColor_1,
        title: const Text(
          'Список пополнений',
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
      body: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await Future.delayed(const Duration(seconds: 2));
              },
              child: _replenishments.isEmpty
                  ? const Center(
                      child: Text(
                        'Здесь отображается список пополнений',
                        style: TextStyle(
                          color: ColorsApplication.fontColor,
                          fontSize: 16,
                        ),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemCount: _replenishments.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
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
                                color: ColorsApplication.fontColor
                                    .withOpacity(0.5),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              color: ColorsApplication.includeTextColor,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: ListTile(
                                title: Text(
                                  'Пополнение: ${_replenishments[index]}',
                                  style: const TextStyle(
                                    color: ColorsApplication.fontColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                color: ColorsApplication.includeTextColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "Введите сумму пополнения",
                        hintStyle: TextStyle(
                          color: ColorsApplication.fontColor.withOpacity(0.5),
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          itemAmount = value;
                        });
                      },
                      style: const TextStyle(color: ColorsApplication.fontColor),
                    ),
                    const SizedBox(height: 10),
                    Row(
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
                          onPressed: itemAmount.isEmpty
                              ? null
                              : () {
                                  _addReplenishment();
                                },
                          child: const Text('Добавить'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
