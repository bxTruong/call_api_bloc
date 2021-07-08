abstract class Tab1Event {}

class UpdateDropDownEvent extends Tab1Event {
  late String? dropdownValue;

  UpdateDropDownEvent({this.dropdownValue});
}

class UpdateCheckBoxEvent extends Tab1Event {
  late bool? checkBoxValue;

  UpdateCheckBoxEvent({this.checkBoxValue});
}
