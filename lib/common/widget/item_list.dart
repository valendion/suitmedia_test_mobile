import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/provider/name_provider.dart';
import '../style/style.dart';

class ItemListPerson extends ConsumerWidget {
  final String image;
  final String name;
  final String email;

  const ItemListPerson(
      {super.key,
      required this.image,
      required this.name,
      required this.email});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () {
        ref.read(personChooseProvider.notifier).state = name;
        Navigator.pop(context);
      },
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
