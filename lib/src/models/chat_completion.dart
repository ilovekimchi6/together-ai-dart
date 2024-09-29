// This file contains the model for the chat completion response

class ChatCompletion {
  final String id;
  final String object;
  final int created;
  final String model;
  final List<dynamic> prompt;
  final List<Choice> choices;
  final Usage usage;

  ChatCompletion({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.prompt,
    required this.choices,
    required this.usage,
  });

  factory ChatCompletion.fromJson(Map<String, dynamic> json) {
    return ChatCompletion(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      model: json['model'],
      prompt: json['prompt'],
      choices:
          List<Choice>.from(json['choices'].map((x) => Choice.fromJson(x))),
      usage: Usage.fromJson(json['usage']),
    );
  }
  @override
  String toString() {
    return 'ChatCompletion(id: $id, object: $object, created: $created, model: $model, prompt: $prompt, choices: $choices, usage: $usage)';
  }
}

class Choice {
  final String finishReason;
  final dynamic logprobs;
  final int index;
  final Message message;

  Choice({
    required this.finishReason,
    this.logprobs,
    required this.index,
    required this.message,
  });

  factory Choice.fromJson(Map<String, dynamic> json) {
    return Choice(
      finishReason: json['finish_reason'],
      logprobs: json['logprobs'],
      index: json['index'],
      message: Message.fromJson(json['message']),
    );
  }
  @override
  String toString() {
    return 'Choice(finishReason: $finishReason, logprobs: $logprobs, index: $index, message: $message)';
  }
}

class Message {
  final String role;
  final String content;

  Message({
    required this.role,
    required this.content,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      role: json['role'],
      content: json['content'],
    );
  }
  @override
  String toString() {
    return """{'role': '$role', 'content': '$content'}""";
  }
}

// "messages": [
//     {
//       "role": "user",
//       "content": [
//         {
//           "type": "text",
//           "text": "What's in this image?"
//         },
//         {
//           "type": "image_url",
//           "image_url": {
//             "url": f"data:image/jpeg;base64,{base64_image}"
//           }
//         }
//       ]
//     }
//   ]

class Usage {
  final int promptTokens;
  final int completionTokens;
  final int totalTokens;

  Usage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
  });

  factory Usage.fromJson(Map<String, dynamic> json) {
    return Usage(
      promptTokens: json['prompt_tokens'],
      completionTokens: json['completion_tokens'],
      totalTokens: json['total_tokens'],
    );
  }
  @override
  String toString() {
    return 'Usage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }
}
