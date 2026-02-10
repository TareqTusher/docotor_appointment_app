class SignUpState {

String?selectGender;
SignUpState({this.selectGender});
SignUpState copyWith({String?selectedGender}){
  return SignUpState(selectGender: selectedGender??this.selectGender);
}

}