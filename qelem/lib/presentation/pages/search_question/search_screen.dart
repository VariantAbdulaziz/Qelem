import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/search_question/search_queation_state.dart';
import 'package:qelem/application/search_question/search_question_bloc.dart';
import 'package:qelem/application/search_question/search_question_event.dart';

class SearchQuestionScreen extends StatefulWidget {
  const SearchQuestionScreen({Key? key}) : super(key: key);

  @override
  _SearchQuestionScreenState createState() => _SearchQuestionScreenState();
}

class _SearchQuestionScreenState extends State<SearchQuestionScreen> {
  TextEditingController keyWordController = TextEditingController();
  late final String keyWord;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) => {},
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3.1, color: Colors.red),
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Container(
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Theme.of(context).primaryColor))),
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                'Questions',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const Card(
                  child: ListTile(
                    title: Text('text'),
                    subtitle: Text('text'),
                  ),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
