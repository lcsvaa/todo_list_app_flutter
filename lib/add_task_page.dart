import 'package:flutter/material.dart';
import 'task_model.dart';

class AddTaskPage extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Tarefa')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'Título da tarefa'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Salvar'),
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  Navigator.pop(context, Task(title: controller.text));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
