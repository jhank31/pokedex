/// {@template usecase}
/// A class that represents a generic use case.
/// {@endtemplate}
abstract class UseCase<T, Params> {
  Future<T> call(Params params);
}

/// {@template no_params}
/// A class that represents a no params.
/// {@endtemplate}
class NoParams {}
