import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:healing_project/DetailPage/Componen/textbutton.dart';
import 'package:healing_project/provaider/todo_list_provaider.dart';
import 'package:healing_project/widget/add_todo.dart';
import 'package:provider/provider.dart';

class ulasan extends StatefulWidget {
  const ulasan({super.key});

  @override
  State<ulasan> createState() => _ulasanState();
}

class _ulasanState extends State<ulasan> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<TodoListProvider>(builder: (
        context,
        todoProvider,
        child,
      ) {
        return ListView(
            padding: const EdgeInsets.all(20),
            children: todoProvider.todoList.isNotEmpty
                ? todoProvider.todoList.map((todo) {
                    return Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AddTodoWidget(
                                          title: "Edit Ulasan",
                                          todo: todo,
                                        );
                                      });
                                },
                                child: Text('Edit'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Provider.of<TodoListProvider>(context,
                                          listen: false)
                                      .removeTodo(todo);
                                },
                                child: Text('Hapus'),
                              ),
                            ],
                          ),
                          ListTile(
                            title: Text(todo.todo),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AddTodoWidget(
                                      title: "Edit Ulasan",
                                      todo: todo,
                                    );
                                  });
                            },
                          ),
                        ],
                      ),
                    );
                  }).toList()
                : [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 100,
                      child: Center(
                        child: Text('Tidak Ada Ulasan'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AddTodoWidget(title: "");
                              });
                        },
                        child: Text("tambah ulasan"))
                  ]);
      }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AddTodoWidget(title: "");
                });
          },
          child: Icon(Icons.add)),
    );
  }
}
