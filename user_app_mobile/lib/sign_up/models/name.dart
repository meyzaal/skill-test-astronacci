import 'package:formz/formz.dart';

enum NameValidationError { empty, invalid }

final class Name extends FormzInput<String, NameValidationError> {
  const Name.pure([super.value = '']) : super.pure();
  const Name.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(String value) {
    if (value.isEmpty) return NameValidationError.empty;
    if (value.length < 2 || value.length > 50) {
      return NameValidationError.invalid;
    }

    return null;
  }
}
