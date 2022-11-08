import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:suitmedia_intern/data/repository/person_repo.dart';

final personProvider = FutureProvider((ref) {
  final response = ref.watch(personRepo).getPerPagePerson(1);
  return response;
});

final personRepo = Provider((_) => PersonRepository());
