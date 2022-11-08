import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:suitmedia_intern/data/provider/name_provider.dart';

import 'package:suitmedia_intern/utils/text_string.dart';
import '../common/style/color_theme.dart';
import '../common/style/style.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(TextString.secondScreen,
              style: Theme.of(context).textTheme.bodyText1?.merge(titleStyle)),
        ),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: backArrowColor,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: whiteColor,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(TextString.welcome,
                    style:
                        Theme.of(context).textTheme.caption?.merge(titleStyle)),
                Text(ref.watch(nameProvider),
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.merge(subTitleStyle)),
                Expanded(
                    child: Center(
                        child: Text(TextString.selectedUserName,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.merge(titleStyle)))),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),

                      foregroundColor: whiteColor,
                      backgroundColor: bluePrimaryColor, // foreground
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, TextString.thirdPage);
                    },
                    child: Text(TextString.chooseAUser,
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.merge(buttonStyle)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
