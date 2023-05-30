//import 'package:equatable/equatable.dart';

import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(this.id, this.name, this.email, this.password);

  final String id;
  final String name;
  final String email;
  final String password;

  @override
  // TODO: entender melhor esta implementação de comparar objetos com Equatable
  List<Object?> get props => [id, name, email, password];
}
