import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/presentation/routes/routes.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  const QuestionCard(this.question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          GoRouter.of(context).push("${Routes.questionDetail}/${question.id}"),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 14, 16, 12),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: Image.network(
                      question.author.profilePicture,
                      fit: BoxFit.cover,
                    ).image,
                    radius: 20,
                  ),
                ),
                title: Text(
                  question.topic,
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.left,
                ),
                subtitle: Row(children: [
                  Text(
                    "${question.author.firstName} ${question.author.lastName}",
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.left,
                  ),
                ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              alignment: Alignment.centerLeft,
              child: Text(
                question.content,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
