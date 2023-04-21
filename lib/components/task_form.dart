import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task_list.dart';

// ignore: must_be_immutable
class TaskForm extends StatefulWidget {
  final Function() goToDashboard;
  String newTaskTitle;
  TaskForm(this.goToDashboard, this.newTaskTitle, {super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final formData = <String, Object>{};
  final formKey = GlobalKey<FormState>();
  final dateController =
      TextEditingController(text: DateFormat('dd/MM/y').format(DateTime.now()));

  @override
  Widget build(BuildContext context) {
    void saveForm() {
      final isValid = formKey.currentState?.validate() ?? false;

      if (!isValid) {
        return;
      }

      formKey.currentState?.save();

      print('formData limit date  ${formData['limitDate']}');
      print('formData title  ${formData['title']}');

      Provider.of<TaskList>(
        context,
        listen: false,
      ).addTask({
        'title': formData['title'] as String,
        'description': formData['description'] as String,
        'limitDate': formData['limitDate'] ?? DateTime.now(),
        'done': false,
      });

      widget.goToDashboard();
    }

    pressShowDatePicker() {
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime.now(),
      ).then((pickedDate) {
        if (pickedDate == null) {
          return;
        }
        setState(() {
          formData['limitDate'] = pickedDate;
          dateController.text = DateFormat('dd/MM/y').format(pickedDate);
        });
      });
    }

    return Align(
      alignment: Alignment.topCenter,
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Title'),
                TextFormField(
                  initialValue: widget.newTaskTitle,
                  validator: (title) {
                    if (title == null ||
                        title.isEmpty ||
                        title.trim().length < 3) {
                      return 'Please enter a title that has at least 3';
                    }
                    return null;
                  },
                  onSaved: (title) => formData['title'] = title ?? '',
                ),
                const SizedBox(height: 16),
                const Text('Description'),
                TextFormField(
                  maxLines: null,
                  onSaved: (description) =>
                      formData['description'] = description ?? '',
                ),
                const SizedBox(height: 16),
                const Text('Date'),
                TextField(
                  controller: dateController,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      labelText: "Selecione uma data"),
                  readOnly: true,
                  onTap: pressShowDatePicker,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton.icon(
                      onPressed: saveForm,
                      icon: const Icon(Icons.save),
                      label: const Text('Save'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
