import 'package:get_storage/get_storage.dart';
import 'package:workout_application/constants/storage_constant.dart';

class StorageService {
  final _storage = GetStorage();

  bool isDarkModeFromStorage() =>
      _storage.read(
        StorageConstant.isDarkMode,
      ) ??
      false;

  saveIsDarkModeToStorage(
    bool isDarkMode,
  ) =>
      _storage.write(
        StorageConstant.isDarkMode,
        isDarkMode,
      );
}
