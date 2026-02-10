class DoctorsOnlineState {

   int? selectedIndex;
DoctorsOnlineState({this.selectedIndex});

DoctorsOnlineState copyWith({int?selectedIndex}){

  return DoctorsOnlineState(selectedIndex: selectedIndex??this.selectedIndex);
}
}