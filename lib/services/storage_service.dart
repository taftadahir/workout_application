import 'package:get_storage/get_storage.dart';

class StorageService {
  final _storage = GetStorage();

  bool isDarkModeFromStorage() => _storage.read('isDarkMode') ?? false;

  saveIsDarkModeToStorage(bool isDarkMode) => _storage.write(
        'isDarkMode',
        isDarkMode,
      );
}
