import 'package:flutter/material.dart';
import 'package:qelem/domain/models/QuestionModel.dart';

class QuestionCard extends StatelessWidget {
  final QuestionModel question;
  const QuestionCard(this.question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(question.img),
              ),
              title: Text(question.heading,
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.left
              ),
              subtitle: Text(
                question.userName,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15.0, 0, 10.0),
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(question.questionDescription,
                  style: Theme.of(context).textTheme.subtitle2),
            )
          ],
        ),
      ),
    );
  }
}
