class Tab1State {
  late bool checkBoxValue;
  late String dropdownValue;

  Tab1State({bool? checkBoxValue, String? dropdownValue}) {
    this.checkBoxValue = checkBoxValue ?? false;
    this.dropdownValue = dropdownValue ?? '';
  }

  Tab1State copyWith({bool? checkBoxValue, String? dropdownValue}) {
    return Tab1State(
      checkBoxValue: checkBoxValue ?? this.checkBoxValue,
      dropdownValue: dropdownValue ?? this.dropdownValue,
    );
  }
}
