import 'package:together_ai_sdk/src/repositories/conversation_memory.dart';
import 'package:together_ai_sdk/together_ai_sdk.dart';

void main() async {
  //Initialize the TogetherAISdk class with your API key

  TogetherAISdk togetherAISdk = TogetherAISdk('YOUR_API_KEY');

  //Find your API key here https://api.together.xyz/settings/api-keys

  //We will use the chatCompletion method to chat with the model in a chat based format.

  final chatResponse = await togetherAISdk.chatCompletion([
    {'role': 'system', 'content': 'You are a helpful AI'},
    {'role': 'user', 'content': 'Tell me about Singapore in 10 words'},
  ], ChatModel.qwen15Chat72B);

  // print(chatResponse!.choices[0].message.content);

  print(chatResponse);

  //We will use the visionChatCompletion method to chat with the model in a chat based format.

  String imagePath =
      '/Users/kimchi/Documents/Packages/together_ai_sdk/example/your_image_name.jpg';

//   //This function converts the image to base64
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

  // We will use the textCompletion method to generate text completion.

  final textResponse = await togetherAISdk.textCompletion(
      'Once upon a', LanguageModel.mixtral8X7B);

  print(textResponse);

  //We will use the imageGeneration method to generate an image.

  final imageResponse = await togetherAISdk.imageGeneration(
      'A group of cute cats',
      imageModel: ImageModel.stableDiffusionXL1_0);

  print(imageResponse);

//Conversation memory is made to manage conversation history.
//We'll take a look at conversationbuffermemory and how to use it.
//Please use this with only ChatModel, not the vision model.

  // ConversationMemory memory = ConversationBufferWindowMemory(4);
  // memory.addMessage(chatResponse.choices[0].message);

  // print(memory.getMessages());

  //Printing that gives you
  //[{role: assistant, content: Diverse, multicultural, modern, cosmopolitan, city-state, financial hub, green spaces, food paradise, vibrant nightlife,狮城。}]
}
