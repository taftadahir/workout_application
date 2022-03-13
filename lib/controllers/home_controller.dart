import 'package:get/get.dart';
import 'package:workout_application/models/program.dart';

class HomeController extends GetxController {
  // Get Popular Programs
  static List<Program> get popularPrograms => [
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'V-Sit',
          published: true,
          days: 23,
          image: 'v_sit.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Handstand',
          published: true,
          days: 23,
          image: 'handstand.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Back Lever',
          published: true,
          days: 23,
          image: 'back_lever.png',
        ),
      ];

  // Get Calisthenic Programs
  static List<Program> get calisthenicPrograms => [
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Front lever',
          published: true,
          days: 23,
          image: 'front_lever.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Planche',
          published: true,
          days: 23,
          image: 'planche.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Pistol Squat',
          published: true,
          days: 23,
          image: 'pistol_squat.png',
        ),
      ];

  // Get BodyBuild Programs
  static List<Program> get bodyBuildPrograms => [
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Front lever',
          published: true,
          days: 23,
          image: 'front_lever.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Planche',
          published: true,
          days: 23,
          image: 'planche.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Pistol Squat',
          published: true,
          days: 23,
          image: 'pistol_squat.png',
        ),
      ];

  // Get Home Workout Programs
  static List<Program> get homeWorkoutPrograms => [
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Front lever',
          published: true,
          days: 23,
          image: 'front_lever.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Planche',
          published: true,
          days: 23,
          image: 'planche.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Pistol Squat',
          published: true,
          days: 23,
          image: 'pistol_squat.png',
        ),
      ];

  // Get Boxing Programs
  static List<Program> get boxingPrograms => [
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Front lever',
          published: true,
          days: 23,
          image: 'front_lever.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Planche',
          published: true,
          days: 23,
          image: 'planche.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Pistol Squat',
          published: true,
          days: 23,
          image: 'pistol_squat.png',
        ),
      ];

  // Popular Exercises
  static List<Program> get popularExercises => [
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Front lever',
          published: true,
          days: 23,
          image: 'front_lever.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Planche',
          published: true,
          days: 23,
          image: 'planche.png',
        ),
        Program(
          id: 1,
          userId: 1,
          sysId: 'Program1',
          name: 'Pistol Squat',
          published: true,
          days: 23,
          image: 'pistol_squat.png',
        ),
      ];
}
