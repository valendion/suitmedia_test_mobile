import 'package:suitmedia_intern/data/model/response_person.dart';
import 'package:suitmedia_intern/data/network/service_person.dart';

class PersonRepository {
  Future<ResponsePerson?> getPerPagePerson(int page) async {
    return await ServicePerson.getPerson(page);
  }
}
