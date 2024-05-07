// TextCompletion model class

class TextCompletion {
  final String id;
  final String object;
  final int created;
  final String model;
  final List<dynamic> prompt;
  final List<TextChoice> choices;
  final TextUsage usage;

  TextCompletion({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.prompt,
    required this.choices,
    required this.usage,
  });

  factory TextCompletion.fromJson(Map<String, dynamic> json) {
    return TextCompletion(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      model: json['model'],
      prompt: json['prompt'],
      choices: List<TextChoice>.from(
          json['choices'].map((x) => TextChoice.fromJson(x))),
      usage: TextUsage.fromJson(json['usage']),
    );
  }

  @override
  String toString() {
    return 'TextCompletion(id: $id, object: $object, created: $created, model: $model, prompt: $prompt, choices: $choices, usage: $usage)';
  }
}

class TextChoice {
  final String text;
  final String finishReason;
  final dynamic logprobs;
  final int index;

  TextChoice({
    required this.text,
    required this.finishReason,
    this.logprobs,
    required this.index,
  });

  factory TextChoice.fromJson(Map<String, dynamic> json) {
    return TextChoice(
      text: json['text'],
      finishReason: json['finish_reason'],
      logprobs: json['logprobs'],
      index: json['index'],
    );
  }

  @override
  String toString() {
    return 'TextChoice(text: $text, finishReason: $finishReason, logprobs: $logprobs, index: $index)';
  }
}

class TextUsage {
  final int promptTokens;
  final int completionTokens;
  final int totalTokens;

  TextUsage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  factory TextUsage.fromJson(Map<String, dynamic> json) {
    return TextUsage(
      promptTokens: json['prompt_tokens'],
      completionTokens: json['completion_tokens'],
      totalTokens: json['total_tokens'],
    );
  }

  @override
  String toString() {
    return 'TextUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }
}
