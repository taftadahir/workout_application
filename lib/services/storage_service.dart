import 'package:get_storage/get_storage.dart';
import 'package:workout_application/constants/storage_constant.dart';

class StorageService {
  static final _storage = GetStorage();

  static bool isDarkModeFromStorage() =>
      _storage.read(
        StorageConstant.isDarkMode,
      ) ??
      false;

  static saveIsDarkModeToStorage(
    bool isDarkMode,
  ) =>
      _storage.write(
        StorageConstant.isDarkMode,
        isDarkMode,
      );
}
