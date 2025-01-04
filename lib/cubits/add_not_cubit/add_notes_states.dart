class AddNotsStates {}

class AddNotInitial extends AddNotsStates {}

class AddNotLoading extends AddNotsStates {}

class AddNotSuccess extends AddNotsStates {}

class AddNotFailiur extends AddNotsStates {
  final String errorMessage;

  AddNotFailiur({required this.errorMessage});
}
