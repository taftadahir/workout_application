class Workout {
  final int id;
  final int exerciseId;
  final int programId;
  final int? setId;
  final int? day;
  final bool timeBased;
  final int? time;
  final bool repBased;
  final int? reps;
  final bool useWeight;
  final int? weight;
  final int? set;
  final int? restTime;
  final int? prevId;
  final String? prevType;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  Workout({
    required this.id,
    required this.exerciseId,
    required this.programId,
    this.setId,
    this.day,
    required this.timeBased,
    this.time,
    required this.repBased,
    this.reps,
    required this.useWeight,
    this.weight,
    this.set,
    this.restTime,
    this.prevId,
    this.prevType,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
}
