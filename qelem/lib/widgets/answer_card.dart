import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0), // if you need this
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
          width: 1,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.arrow_drop_down_circle),
            title: Text('Emre Varol'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur some adipiscing elit, sed do eiusmod tempor.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              Text("20",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Theme.of(context).primaryColor)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_up,
                    color: Theme.of(context).primaryColor,
                  )),
              Text("0"),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.keyboard_arrow_down)),
            ],
          ),
        ],
      ),
    );
  }
}
