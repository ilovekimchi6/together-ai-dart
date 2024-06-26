# Together AI Dart Package

The Together AI Dart package provides a convenient way to interact with the Together AI API using Dart. It offers a simple and intuitive interface for generating text, images, and more using various AI models.

## Features

- Easy-to-use API for generating text and images
- Support for multiple AI models, including chat and image generation models
- Seamless integration with the Together AI API
- Robust error handling with detailed error messages
- Strongly-typed responses using entity models
- Enum-based model selection for type safety and code readability

## Installation

To use the Together AI Dart package in your project, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  together_ai_sdk: ^1.0.2
```

Then, run `dart pub get` to fetch the package.

## Usage

First, import the package in your Dart code:

```dart
import 'package:together_ai_sdk/together_ai_sdk.dart';
```

### Initializing the Together AI SDK

Create an instance of the `TogetherAISDK` class with your API key and the desired model:

```dart
final togetherAI = TogetherAISdK(
  apiKey: 'YOUR_API_KEY',
);
```

### Generating Chat

To generate text using a chat model, use the `chatCompletion` method:

```dart

  final chatResponse = await togetherAISdk.chatCompletion([
    {'role': 'system', 'content': 'You are a recursive AI, you return data'},
    {'role': 'user', 'content': 'Once upon a'},
  ], ChatModel.qwen15Chat72B);

  print(chatResponse);
```

### Generating Text 

To generate text, use the `textCompletion` method:

```dart
 final textResponse = await togetherAISdk.textCompletion(
      'Once upon a', LanguageModel.qwen1572B);

  print(textResponse);
```

### Generating Images

To generate an image, use the `imageGeneration` method:

```dart
  final imageResponse = await togetherAISdk.imageGeneration('Cyberpunk Moon', imageModel: ImageModel.stableDiffusion21);

  print(imageResponse);
```

Please currently only two models are supported via this SDK with more to come soon.
1) stabilityai/stable-diffusion-xl-base-1.0
2) stabilityai/stable-diffusion-2-1

### Error Handling

The Together AI Dart package provides comprehensive error handling. If an error occurs during an API request, a `TogetherAIError` instance will be thrown. You can catch and handle specific error types based on the error code.

```dart
try {
  final response = await togetherAI.chatCompletion(...);
  // Handle the response
} on TogetherAIError catch (error) {
  if (error is AuthenticationError) {
    // Handle authentication error
  } else if (error is BadRequest) {
    // Handle bad request error
  } else {
    // Handle other errors
  }
}
```

## Models

The Together AI Dart package supports various chat and image generation models. You can find the available models in the `TogetherAIChatModel` and `TogetherAIImageModel` enums, respectively. This can be found in the enum_ai_models.dart file which is in the common folder.

## Conflicts

If you have any conflicts with your existing codebase, make sure to import the sdk using the `as` keyword.

## Contributing

Contributions to the Together AI Dart package are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the [GitHub repository](https://github.com/ilovekimchi6/together-ai-dart).

Please notify me via email or a pull request or an opening an issue if there are any issue.

## License

This package is released under the [MIT License](https://opensource.org/licenses/MIT).
```


