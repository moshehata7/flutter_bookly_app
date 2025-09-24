abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure([String message = "Server Failure"]) : super(message);

  @override
  String toString() => message;
}