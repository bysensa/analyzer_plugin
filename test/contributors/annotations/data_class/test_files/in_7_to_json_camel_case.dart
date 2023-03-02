import 'package:data_class_plugin/data_class_plugin.dart';

@DataClass(
  toJson: true,
  fromJson: false,
  copyWith: false,
  $toString: false,
  hashAndEquals: false,
)
class CamelCaseTest {
  final String thisVariableWillBeCamelCase;
  final String thisvariablewillnotbecamelcase;
  final String thisIsAVariable;
  final String aNumber11Variable;
}
