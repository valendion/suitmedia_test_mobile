import 'package:flutter/material.dart';

import '../style/style.dart';

class ItemListPerson extends StatelessWidget {
  final String image;
  final String name;
  final String email;

  ItemListPerson(
      {super.key,
      required this.image,
      required this.name,
      required this.email});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(backgroundImage: NetworkImage(image, scale: 49)),
      title: Text(
        name,
        style: Theme.of(context).textTheme.bodyText1?.merge(subTitleStyle),
      ),
      subtitle: Text(
        email,
        style: Theme.of(context).textTheme.overline?.merge(subTitleStyle),
      ),
    );
  }
}
