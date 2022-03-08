class Exercise {
  final int id;
  final int userId;
  final String sysId;
  final String name;
  final String? image;
  final bool published;
  final bool? timeBased;
  final bool? repBased;
  final bool? useWeight;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  Exercise({
    required this.id,
    required this.userId,
    required this.sysId,
    required this.name,
    required this.published,
    this.image,
    this.timeBased,
    this.repBased,
    this.useWeight,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
}
