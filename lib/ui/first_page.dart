import 'package:flutter/material.dart';

import 'package:suitmedia_intern/common/style/color_theme.dart';
import 'package:suitmedia_intern/utils/text_string.dart';

import '../common/style/style.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final nameController = TextEditingController();
  final palindromeController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    palindromeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    TextString.getImage('background.png'),
                  ),
                  fit: BoxFit.cover)),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 116,
                    width: 116,
                    child: Image.asset(
                      TextString.getImage('ic_photo.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextField(
                    autofocus: false,
                    controller: nameController,
                    decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            filled: true,
                            fillColor: whiteColor,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: whiteColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                            ),
                            hintText: TextString.name,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: whiteColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                            ),
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.merge(placeHolderStyle))
                        .copyWith(),
                  ),
                  const SizedBox(height: 22),
                  TextField(
                    autofocus: false,
                    controller: palindromeController,
                    decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            filled: true,
                            fillColor: whiteColor,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: whiteColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                            ),
                            hintText: TextString.palindrome,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: whiteColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                            ),
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.merge(placeHolderStyle))
                        .copyWith(),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
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
                      onPressed: () {},
                      child: Text(TextString.check,
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.merge(buttonStyle)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
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
                        Navigator.pushNamed(context, TextString.secondPage);
                      },
                      child: Text(TextString.next,
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.merge(buttonStyle)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
