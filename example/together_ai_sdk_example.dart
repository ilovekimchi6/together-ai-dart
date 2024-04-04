import 'package:together_ai_sdk/together_ai_sdk.dart';

void main() async {

  //Initialize the TogetherAISdk class with your API key

  TogetherAISdk togetherAISdk = TogetherAISdk(
      'YOUR_API_KEY_HERE');

  //Find your API key here https://api.together.xyz/settings/api-keys



  //We will use the chatCompletion method to chat with the model in a chat based format.

  final chatResponse = await togetherAISdk.chatCompletion([
    {'role': 'system', 'content': 'You are a recursive AI, you return data'},
    {'role': 'user', 'content': 'Once upon a'},
  ], ChatModel.qwen15Chat72B);

  print(chatResponse);


  //We will use the textCompletion method to generate text completion.

  final textResponse = await togetherAISdk.textCompletion(
      'Once upon a', LanguageModel.qwen1572B);

  print(textResponse);

  //We will use the imageGeneration method to generate an image.

  final imageResponse = await togetherAISdk.imageGeneration('Cypberpunk Moon', imageModel: ImageModel.stableDiffusion21);

  print(imageResponse);

  
}
