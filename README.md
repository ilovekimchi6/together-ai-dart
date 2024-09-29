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
  together_ai_sdk: ^2.0.1
```

Then, run `dart pub get` to fetch the package.

## Usage

First, import the package in your Dart code:

```dart
import 'package:together_ai_sdk/together_ai_sdk.dart';
```

### Security Disclaimer

⚠️ **IMPORTANT: API Key Security** ⚠️

When using this SDK, please be aware of the following security considerations:

1. **Never expose your API key in client-side code.** The `TogetherAISdK` initialization with an API key should not be done directly in mobile or web applications that are distributed to end-users.

2. **Use environment variables** to store your API key during development and testing. Never commit these to version control.


### Initializing the Together AI SDK

Create an instance of the `TogetherAISDK` class with your API key and the desired model:

```dart
final togetherAI = TogetherAISdK('YOUR_API_KEY');
```

### Generating Chat

To generate text using a chat model, use the `chatCompletion` method:

```dart

  final chatResponse = await togetherAISdk.chatCompletion([
    {'role': 'system', 'content': 'You are a helpful'},
    {'role': 'user', 'content': 'Once upon a'},
  ], ChatModel.qwen15Chat72B);

  print(chatResponse);
```

### Generating Chat using stream

To generate a stream, use the `streamResponse` method:

```dart

  final chatResponse = await togetherAISdk.streamResponse([
    {'role': 'system', 'content': 'You are a helpful AI assistant'},
    {'role': 'user', 'content': 'Tell me a cyberpunk story'},
  ], ChatModel.qwen15Chat72B);

  print(chatResponse);
```

### Generating Chat With Vision Models

To generate text using a vision model, use the `visionChatCompletion` method:

```dart

  String imagePath =
      '/Users/kimchi/Documents/Packages/together_ai_sdk/example/your_image_name.jpeg';

  //This function converts the image to base64
  String base64ImageUrl = await imageToBase64(imagePath);

//The message object is a list of maps with role and content keys. Which is not the same as the Message class in the SDK.
  final messages = [
    {'role': 'system', 'content': 'You are a helpful AI'},
    {
      'role': 'user',
      'content': [
        {'type': 'text', 'text': 'What\'s in this image?'},
        {
          'type': 'image_url',
          'image_url': {'url': base64ImageUrl}
        }
      ]
    },
  ];

  //Please use ChatVision model.
  //LlamaVFree, the free model is included.

  final chatVisionResponse = await togetherAISdk.visionChatCompletion(
      messages, ChatVisionModel.llama3290BV);

  print(chatVisionResponse);
```

### Generating Text 

To generate text, use the `textCompletion` method:

```dart
 final textResponse = await togetherAISdk.textCompletion(
      'Once upon a', LanguageModel.qwen1572B);

  print(textResponse);
```

### Simple conversation memory class

To use simple memory, use the `ConversationBufferWindowMemory` class or `ConversationBufferMemory`:

```dart
  ConversationMemory memory = ConversationBufferWindowMemory(4);
  memory.addMessage(chatResponse.choices[0].message);

  print(memory.getMessages());

  //Printing that gives you 
  //[{role: assistant, content: Diverse, multicultural, modern, cosmopolitan, city-state, financial hub, green spaces, food paradise, vibrant nightlife,狮城。}]
```

### Generating Images

To generate an image, use the `imageGeneration` method:

```dart
  final imageResponse = await togetherAISdk.imageGeneration('Group of cats', imageModel: ImageModel.stableDiffusionXL1_0);

  print(imageResponse);
```

Please note currently there is only one model that is supported.
1) stabilityai/stable-diffusion-xl-base-1.0



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

The Together AI Dart package supports various chat and image generation models. You can find the available models in the `ChatModel`, `ImageModel` and `ChatVisionModel` enums, respectively in the `enum_ai_models.dart` file, which is in the common folder.
If there are any missing models please let me know.

## Conflicts

If you have any conflicts with your existing codebase, make sure to import the sdk using the `as` keyword.

## Contributing

Contributions to the Together AI Dart package are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request on the [GitHub repository](https://github.com/ilovekimchi6/together-ai-dart).

Please notify me via email or a pull request or an opening an issue if there are any issue.

## License

This package is released under the [MIT License](https://opensource.org/licenses/MIT).
```


