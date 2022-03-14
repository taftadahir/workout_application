class Statistic {
  final int id;
  final int userId;
  final int workoutId;
  final int? time;
  final int? reps;
  final int? weight;
  final int? set;
  final int? restTime;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  Statistic({
    required this.id,
    required this.userId,
    required this.workoutId,
    this.time,
    this.reps,
    this.weight,
    this.set,
    this.restTime,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
}
