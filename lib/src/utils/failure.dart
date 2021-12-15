class Failure {
  const Failure({required this.code, required this.message});

  final String code;
  final String message;

  Failure copyWith({String? code, String? message}) =>
      Failure(code: code ?? this.code, message: message ?? this.message);
}
