import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final String password;

  const User(this.id, this.name, this.email, this.password);

  @override
  // TODO: entender melhor esta implementação de comparar objetos com Equatable
  List<Object?> get props => [id, name, email, password];
}
