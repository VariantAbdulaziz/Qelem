import 'package:flutter/material.dart';
import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/common/vote.dart';

class AnswerCard extends StatelessWidget {
  final Answer answer;
  final Function() onUpVote;
  final Function() onDownVote;
  final Function() onDelete;
  final Function() onEdit;
  final Function() onUnVote;
  final bool isOwner;

  const AnswerCard(
      {Key? key,
      required this.answer,
      required this.onUpVote,
      required this.onDownVote,
      required this.onDelete,
      required this.onEdit,
      required this.isOwner,
      required this.onUnVote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vottedTheme = Theme.of(context)
        .textTheme
        .bodyText1
        ?.copyWith(color: Theme.of(context).primaryColor);
    final notVottedTextTheme = Theme.of(context).textTheme.bodyText1;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage(answer.author.profilePicture)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                      "${answer.author.firstName} ${answer.author.lastName}",
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                const Spacer(),
                if (isOwner)
                  PopupMenuButton(itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        value: "edit",
                        child: Text("Edit"),
                      ),
                      const PopupMenuItem(
                        value: "delete",
                        child: Text("Delete"),
                      ),
                    ];
                  }, onSelected: (value) {
                    if (value == "edit") {
                      onEdit();
                    } else if (value == "delete") {
                      onDelete();
                    }
                  }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                answer.content,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                Text(answer.upVotes.toString(),
                    style: answer.userVote == Vote.upVote
                        ? vottedTheme
                        : notVottedTextTheme),
                IconButton(
                    onPressed: () {
                      if (answer.userVote == Vote.upVote) {
                        onUnVote();
                      } else {
                        onUpVote();
                      }
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_up,
                      color: answer.userVote == Vote.upVote
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                    )),
                Text(answer.downVotes.toString(),
                    style: answer.userVote == Vote.downVote
                        ? vottedTheme
                        : notVottedTextTheme),
                IconButton(
                  onPressed: () {
                    if (answer.userVote == Vote.downVote) {
                      onUnVote();
                    } else {
                      onDownVote();
                    }
                  },
                  icon: Icon(Icons.keyboard_arrow_down,
                      color: answer.userVote == Vote.downVote
                          ? Theme.of(context).primaryColor
                          : Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
