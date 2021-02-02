class DataModel {
  final int rowId;
  final String question;
  final int answerCount;
  final bool answer;
  final int progress;

  const DataModel({
    this.rowId,
    this.question,
    this.answerCount,
    this.answer,
    this.progress,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        rowId: json['rowid'],
        question: json['question'],
        answerCount: json['answer_count'],
        answer: json['answer'],
        progress: json['progress'],
      );
}
