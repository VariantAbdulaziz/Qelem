import 'package:flutter/material.dart';
import 'package:qelem/widgets/answer_card.dart';

import '../widgets/answer_bottom_sheet.dart';

class QuestionDetailScreen extends StatefulWidget {
  const QuestionDetailScreen({Key? key}) : super(key: key);

  @override
  State<QuestionDetailScreen> createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<QuestionDetailScreen> {
  var dropdownValue = "Recency";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListView(
                      children: const [
                        AnswerCard(),
                        AnswerCard(),
                        AnswerCard(),
                        AnswerCard(),
                        AnswerCard(),
                        AnswerCard(),
                        AnswerCard(),
                        AnswerCard(),
                        AnswerCard(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                right: 0.0,
                bottom: 0.0,
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (builder) {
                        return const AnswerBottomSheet();
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                      ),
                    ),
                    width: 98,
                    height: 44,
                    child: Center(
                      child: Text("ANSWER",
                          style: Theme.of(context).primaryTextTheme.button),
                    ),
                  ),
                ))
          ],
        ),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                // Shown when the user is the author of the question.
                IconButton(
                  color: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1
                      ?.color
                      ?.withOpacity(0.74),
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
                IconButton(
                  color: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1
                      ?.color
                      ?.withOpacity(0.74),
                  icon: const Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
              floating: true,
              forceElevated: innerBoxIsScrolled,
            ),
            SliverPadding(
                padding: EdgeInsets.all(0.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 23.0, left: 16.0, right: 16.0),
                      child: Column(
                        children: [
                          Text(
                            "What is the best way to manage state in flutter?",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text("Emre Varol"),
                              SizedBox(width: 10.0),
                              Text("3000 Reputation"),
                              SizedBox(width: 10.0),
                              Text("Asked:"),
                              SizedBox(width: 5.0),
                              Text("May 12, 2022"),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lacinia id tellus rhoncus facilisi etiam. Leo purus, pellentesque at aliquam risus, lobortis viverra et sed. Vulputate elementum parturient libero sed velit.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 16.0),
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Sort By:",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          const SizedBox(width: 10.0),
                          DropdownButton(
                            value: dropdownValue,
                            hint: Text(dropdownValue),
                            items: const [
                              DropdownMenuItem(
                                value: 'Recency',
                                child: Text('Recency'),
                              ),
                              DropdownMenuItem(
                                value: 'Rating',
                                child: Text('Rating'),
                              ),
                            ],
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValue = value ?? dropdownValue;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ]),
                ))
          ];
        },
      ),
    );
  }
}
