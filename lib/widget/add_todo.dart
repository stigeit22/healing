import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:healing_project/provaider/todo_list_provaider.dart';
import 'package:healing_project/widget/info_ulasan_widget.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../DetailPage/Componen/Ulasan/Model/todo_Model.dart';

class AddTodoWidget extends StatefulWidget {
  final String title;
  final TodoModel? todo;

  const AddTodoWidget({super.key, required this.title, this.todo});

  @override
  State<AddTodoWidget> createState() => _AddTodoWidgetState();
}

class _AddTodoWidgetState extends State<AddTodoWidget> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController _todoController = TextEditingController();
    if (widget.todo != null) {
      _todoController.text = widget.todo!.todo;
    }

    return AlertDialog(
      title: Text(widget.title),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text('Rating Dan ULasan'),
            buildrating(),
            TextField(
              controller: _todoController,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  isDense: true,
                  fillColor: Colors.grey,
                  label: Text(' ulsan'),
                  hintText: "masukan ulsana"),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('batal')),
        TextButton(
            onPressed: () {
              if (_todoController.text.isEmpty) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return infoWidget(
                          title: "Error", content: "Error Tidak Boleh Kosong");
                    });
              } else {
                if (widget.todo != null) {
                  Provider.of<TodoListProvider>(context, listen: false)
                      .updateTodo(TodoModel(
                    id: widget.todo!.id,
                    todo: _todoController.text,
                  ));
                } else {
                  const uuid = Uuid();
                  Provider.of<TodoListProvider>(context, listen: false)
                      .addTodo(TodoModel(
                    id: uuid.v4(),
                    todo: _todoController.text,
                  ));
                }
                Navigator.pop(context);
              }
            },
            child: Text("Simpan"))
      ],
    );
  }

  Widget buildrating() => RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      itemSize: 25,
      itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
      updateOnDrag: true,
      onRatingUpdate: (rating) => setState(() {
            this.rating;
          }));
}
