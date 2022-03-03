class Program {
  final int id;
  final int userId;
  final String sysId;
  final String name;
  final int? days;
  final bool published;
  final String? image;
  final bool? useWarmUp;
  final bool? useProgramSet;
  final bool? useWorkoutSet;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  Program({
    required this.id,
    required this.userId,
    required this.sysId,
    required this.name,
    this.days,
    required this.published,
    this.image,
    this.useWarmUp,
    this.useProgramSet,
    this.useWorkoutSet,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
}
