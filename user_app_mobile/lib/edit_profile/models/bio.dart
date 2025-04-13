import 'package:formz/formz.dart';

enum BioValidationError { empty, invalid }

final class Bio extends FormzInput<String, BioValidationError> {
  const Bio.pure([super.value = '']) : super.pure();
  const Bio.dirty([super.value = '']) : super.dirty();

  @override
  BioValidationError? validator(String value) {
    if (value.isEmpty) return BioValidationError.empty;
    if (value.length > 1000) {
      return BioValidationError.invalid;
    }

    return null;
  }
}
