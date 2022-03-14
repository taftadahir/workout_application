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

  // Profile
  static set firstname(String? firstname) {
    _storage.write(StorageConstant.firstname, firstname);
  }

  static String? get firstname => _storage.read(StorageConstant.firstname);

  static set lastname(String? lastname) {
    _storage.write(StorageConstant.lastname, lastname);
  }

  static String? get lastname => _storage.read(StorageConstant.lastname);

  static set email(String? email) {
    _storage.write(StorageConstant.email, email);
  }

  static String? get email => _storage.read(StorageConstant.email);

  static set avatar(String? avatar) {
    _storage.write(StorageConstant.avatar, avatar);
  }

  static String? get avatar => _storage.read(StorageConstant.avatar);
}
