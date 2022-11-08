import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:suitmedia_intern/common/widget/item_list.dart';
import 'package:suitmedia_intern/data/provider/person_provider.dart';
import '../common/style/color_theme.dart';
import '../common/style/style.dart';
import '../data/model/response_person.dart';
import '../utils/text_string.dart';

class ThirdPage extends ConsumerWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final persons = ref.watch(personProvider);
    // List<Data> datas = [
    //   Data(
    //       id: 1,
    //       email: 'george.bluth@reqres.in',
    //       firstName: 'George',
    //       lastName: 'Bluth',
    //       avatar: 'https://reqres.in/img/faces/1-image.jpg'),
    //   Data(
    //       id: 2,
    //       email: 'dion@gmail.com',
    //       firstName: 'Valendion',
    //       lastName: 'Pradana',
    //       avatar: 'https://reqres.in/img/faces/2-image.jpg')
    // ];
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
      body: Center(
          child: persons.when(
              data: (datas) {
                var data = datas?.data;
                return ListView.builder(
                    itemCount: data?.length,
                    itemBuilder: ((context, index) {
                      return ItemListPerson(
                          image: data![index].avatar,
                          name:
                              '${data[index].firstName} ${data[index].firstName}',
                          email: data[index].email);
                    }));
              },
              error: ((e, s) {
                debugPrint('Error : $e \n $s');
                return const Text('Terjadi Kesalahan');
              }),
              loading: () => const CircularProgressIndicator())),
    );
  }
}
