import 'package:password_dart/password_dart.dart';

void main() {
  final password = 'secret';
  final algorithm = PBKDF2();
  final hash = Password.hash(password, algorithm);

  print(hash);
  print(Password.verify(password, hash));
  print(Password.verify('wrongpass', hash));
}
