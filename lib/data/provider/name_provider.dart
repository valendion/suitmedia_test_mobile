import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/text_string.dart';

final nameProvider = StateProvider(
  (ref) => 'No Name',
);

final personChooseProvider = StateProvider((ref) {
  return TextString.selectedUserName;
});
