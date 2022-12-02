import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:data_class_plugin/src/options/extensions.dart';
import 'package:data_class_plugin/src/options/options_config.dart';

@DataClass()
class DataClassOptions {
  /// Shorthand constructor
  const DataClassOptions({
    this.optionsConfig = const <String, OptionConfig>{},
  });

  final Map<String, OptionConfig> optionsConfig;

  bool effectiveCopyWith(String filePath) =>
      optionsConfig.effectiveCopyWith(filePath: filePath, defaultValue: true);

  bool effectiveHashAndEquals(String filePath) =>
      optionsConfig.effectiveHashAndEquals(filePath: filePath, defaultValue: true);

  bool effectiveToString(String filePath) =>
      optionsConfig.effectiveToString(filePath: filePath, defaultValue: true);

  bool effectiveFromJson(String filePath) =>
      optionsConfig.effectiveFromJson(filePath: filePath, defaultValue: false);

  bool effectiveToJson(String filePath) =>
      optionsConfig.effectiveToJson(filePath: filePath, defaultValue: false);

  /// Creates an instance of [DataClassOptions] from [json]
  factory DataClassOptions.fromJson(Map<dynamic, dynamic> json) {
    return DataClassOptions(
      optionsConfig: json['options_config'] == null
          ? const <String, OptionConfig>{}
          : <String, OptionConfig>{
              for (final MapEntry<dynamic, dynamic> e0
                  in (json['options_config'] as Map<dynamic, dynamic>).entries)
                e0.key: OptionConfig.fromJson(e0.value),
            },
    );
  }
}
