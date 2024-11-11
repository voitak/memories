import 'package:email_validator/email_validator.dart';

class Validators {
  const Validators._();

  static bool isEmail(String input) => EmailValidator.validate(input);

  static bool isPhone(String input) =>
      RegExp(r'(^[+]?[(]?[0-9]{3}[)]?[-\s.]?[0-9]{3}[-\s.]?[0-9]{4,6}$)')
          .hasMatch(input);
}
