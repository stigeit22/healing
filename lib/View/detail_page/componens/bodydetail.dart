import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'package:healing_project/View/detail_page/componens/deskripsi.dart';
import 'package:healing_project/View/detail_page/componens/headDetail.dart';
import 'package:healing_project/View/detail_page/componens/ratting.dart';
import 'package:healing_project/View/detail_page/componens/slidefoto.dart';
import 'package:healing_project/View/detail_page/componens/textbutton.dart';
import 'package:healing_project/widget/custombottom.dart';
import 'package:provider/provider.dart';

import '../../../provider/todo_list_provaider.dart';
import '../../../widget/add_todo.dart';
import 'Ulasan/ulasan.dart';
import 'lokasidetail.dart';
import 'map.utils.dart';

class bodydetail extends StatefulWidget {
  const bodydetail({Key? key}) : super(key: key);

  @override
  State<bodydetail> createState() => _bodydetailState();
}

class _bodydetailState extends State<bodydetail> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: <Widget>[
          headDetail(),
          slidefoto(),
          deskripsi(),
          lokasidetail(),
          ratingdetail(),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AddTodoWidget(title: "");
                        });
                  },
                  child: Text(
                    "Tambah ulasan",
                    style: TextStyle(color: Color(0xff5C40CC)),
                  )),
            ),
          ),
          Container(child: Consumer<TodoListProvider>(builder: (
            context,
            todoProvider,
            child,
          ) {
            return Column(
                children: todoProvider.todoList.isNotEmpty
                    ? todoProvider.todoList.map((todo) {
                        return Card(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: buildrating(),
                                  ),
                                  Row(
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
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(
                                              color: Color(0xff5C40CC)),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Provider.of<TodoListProvider>(context,
                                                  listen: false)
                                              .removeTodo(todo);
                                        },
                                        child: Text(
                                          'Hapus',
                                          style: TextStyle(
                                              color: Color(0xff5C40CC)),
                                        ),
                                      ),
                                    ],
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
                          height: 20,
                          child: Center(
                            child: Text('Tidak Ada Ulasan'),
                          ),
                        ),
                      ]);
          }))
        ]),
      )),
    );
  }

  Widget buildrating() => RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      itemSize: 20,
      itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
      updateOnDrag: true,
      onRatingUpdate: (rating) => setState(() {
            this.rating;
          }));
}
