abstract class FailureSearch implements Exception {}

class InvalidListId implements FailureSearch {
  String? msg;
  InvalidListId({msg});
}
