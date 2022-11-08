import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:suitmedia_intern/common/style/color_theme.dart';
import 'package:suitmedia_intern/data/provider/name_provider.dart';
import 'package:suitmedia_intern/utils/checker.dart';
import 'package:suitmedia_intern/utils/text_string.dart';

import '../common/style/style.dart';

class FirstPage extends ConsumerStatefulWidget {
  const FirstPage({super.key});

  @override
  ConsumerState<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends ConsumerState<FirstPage> {
  var nameController = TextEditingController();
  var palindromeController = TextEditingController();

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
                      onPressed: () {
                        if (palindromeController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      'Silahkan mengisi teks yang mau di uji')));
                        } else {
                          bool isPalindrome =
                              Checker.isPalindrome(palindromeController.text);

                          if (isPalindrome) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    '${palindromeController.text} adalah Palindrom')));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    '${palindromeController.text} adalah bukan Palindrom')));
                          }
                        }
                      },
                      child: Text(TextString.check,
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.merge(buttonStyle)),
                    ),
                  ),
                  const SizedBox(
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
                        ref.read(nameProvider.notifier).state =
                            nameController.text.isEmpty
                                ? 'No Name'
                                : nameController.text;

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
