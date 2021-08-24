class Tasks {
  bool? isChecked;
  String? title;

  Tasks({this.isChecked, this.title});

  void toggleCheckValue() {
    isChecked = !isChecked!;
  }
}
