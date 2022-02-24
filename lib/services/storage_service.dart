import 'package:get_storage/get_storage.dart';
import 'package:workout_application/constants/storage_constant.dart';

class StorageService {
  static final _storage = GetStorage();

  static bool get isDarkMode =>
      _storage.read(StorageConstant.isDarkMode) ?? false;

  static set isDarkMode(bool isDarkMode) =>
      _storage.write(StorageConstant.isDarkMode, isDarkMode);

  static bool get isFirstEntrance =>
      _storage.read(StorageConstant.isFirstEntrance) ?? false;

  static set isFirstEntrance(bool isFirstEntrance) =>
      _storage.write(StorageConstant.isFirstEntrance, isFirstEntrance);
}
