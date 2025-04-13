import 'package:formz/formz.dart';

enum PasswordValidationError { empty, invalid }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure([super.value = '']) : super.pure();
  const Password.dirty([super.value = '']) : super.dirty();

  static final _passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*\d).{6,}$');

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
    if (!_passwordRegex.hasMatch(value)) {
      return PasswordValidationError.invalid;
    }
    return null;
  }
}
