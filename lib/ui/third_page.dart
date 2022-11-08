import 'package:flutter/material.dart';
import 'package:suitmedia_intern/common/widget/item_list.dart';
import '../common/style/color_theme.dart';
import '../common/style/style.dart';
import '../model/response_person.dart';
import '../utils/text_string.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Data> datas = [
      Data(
          id: 1,
          email: 'george.bluth@reqres.in',
          firstName: 'George',
          lastName: 'Bluth',
          avatar: 'https://reqres.in/img/faces/1-image.jpg'),
      Data(
          id: 2,
          email: 'dion@gmail.com',
          firstName: 'Valendion',
          lastName: 'Pradana',
          avatar: 'https://reqres.in/img/faces/2-image.jpg')
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(TextString.thirdScreen,
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
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: ((context, index) {
            var data = datas[index];
            return ItemListPerson(
                image: data.avatar,
                name: '${data.firstName} ${data.firstName}',
                email: data.email);
          })),
    );
  }
}
