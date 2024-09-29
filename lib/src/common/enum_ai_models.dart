//These are the chat models available for the Together AI API

enum ChatModel {
  gemmaInstruct2B,
  gemmaInstruct7B,
  nousHermes2Mistral8x7BDPO,
  nousHermes2Yi34B,
  mistral7BInstruct,
  mistral7BInstructV02,
  mixtral8X7BInstructV01,
  codeLlamaInstruct34B,
  llama2Chat13B,
  llama2Chat7B,
  llama3Chat8B,
  llama3Chat70B,
  qwen15Chat72B,
  solar107BInstruct,
  platypus2Instruct70B,
  mythoMaxL213B,
  llama318B,
  llama323B,
  llama3170B,
  llama31405B,
  hermes31405B,
  mythoMaxL213BLite,
  llama370B,
  llama38BLite,
  qwen15Chat72BI,
  gemma227B,
  gemma29B,
  mistral7BInstructV03,
  qwen15Chat110B,
  wizardLMv28x22B,
  dbrxInstruct,
  deepseekllm67bchat,
  mixtral822B;

  @override
  String toString() {
    switch (this) {
      //Google
      case ChatModel.gemmaInstruct2B:
        return 'google/gemma-2b-it';
      case ChatModel.gemmaInstruct7B:
        return 'GOOGLE/GEMMA-7B-IT';
      //NousResearch
      case ChatModel.nousHermes2Mistral8x7BDPO:
        return 'NousResearch/Nous-Hermes-2-Mixtral-8x7B-DPO';
      //mistralai
      case ChatModel.mistral7BInstruct:
        return 'mistralai/Mistral-7B-Instruct-v0.1';
      case ChatModel.mistral7BInstructV02:
        return 'mistralai/Mistral-7B-Instruct-v0.2';
      case ChatModel.mixtral8X7BInstructV01:
        return 'mistralai/Mixtral-8x7B-Instruct-v0.1';
      //Qwen
      case ChatModel.qwen15Chat72B:
        return 'Qwen/Qwen1.5-72B-Chat';
      //Meta
      case ChatModel.codeLlamaInstruct34B:
        return 'codellama/CodeLlama-34b-Instruct-hf';
      case ChatModel.llama2Chat13B:
        return 'meta-llama/Llama-2-13b-chat-hf';
      case ChatModel.llama2Chat7B:
        return 'meta-llama/Llama-2-7b-chat-hf';
      case ChatModel.llama3Chat8B:
        return 'meta-llama/Llama-3-8b-chat-hf';
      case ChatModel.llama3Chat70B:
        return 'meta-llama/Llama-3-70b-chat-hf';
      //Upstage
      case ChatModel.solar107BInstruct:
        return 'upstage/SOLAR-10.7B-Instruct-v1.0';

      case ChatModel.platypus2Instruct70B:
        return 'GARAGE-BAIND/PLATYPUS2-70B-INSTRUCT';
      //Gryphe
      case ChatModel.mythoMaxL213B:
        return 'Gryphe/MythoMax-L2-13b';
      //Meta
      case ChatModel.llama323B:
        return 'meta-llama/Llama-3.2-3B-Instruct-Turbo';
      //Meta
      case ChatModel.llama318B:
        return 'meta-llama/Meta-Llama-3.1-8B-Instruct-Turbo';

      case ChatModel.llama370B:
        return 'meta-llama/Meta-Llama-3-70B-Instruct-Turbo';
      //Mistral
      case ChatModel.mixtral822B:
        return 'mistralai/Mixtral-8x22B-Instruct-v0.1';

      case ChatModel.llama3170B:
        return 'meta-llama/Meta-Llama-3.1-70B-Instruct-Turbo';

      case ChatModel.llama31405B:
        return 'meta-llama/Meta-Llama-3.1-405B-Instruct-Turbo';

      case ChatModel.hermes31405B:
        return 'NousResearch/Hermes-3-Llama-3.1-405B-Turbo';

      case ChatModel.mythoMaxL213BLite:
        return 'Gryphe/MythoMax-L2-13b-Lite';

      case ChatModel.llama38BLite:
        return 'meta-llama/Meta-Llama-3-8B-Instruct-Lite';

      case ChatModel.qwen15Chat72BI:
        return 'Qwen/Qwen2-72B-Instruct';

      case ChatModel.gemma227B:
        return 'google/gemma-2-27b-it';

      case ChatModel.gemma29B:
        return 'google/gemma-2-9b-it';

      case ChatModel.mistral7BInstructV03:
        return 'mistralai/Mistral-7B-Instruct-v0.3';

      case ChatModel.qwen15Chat110B:
        return 'Qwen/Qwen1.5-110B-Chat';

      case ChatModel.wizardLMv28x22B:
        return 'microsoft/WizardLM-2-8x22B';

      case ChatModel.dbrxInstruct:
        return 'databricks/dbrx-instruct';

      case ChatModel.deepseekllm67bchat:
        return 'deepseek-ai/deepseek-llm-67b-chat';

      default:
        return name;
    }
  }
}

enum ChatVisionModel {
  llama3211BV,
  llama3290BV,
  llamaVFree,
  llama318BV;

  @override
  String toString() {
    switch (this) {
      case ChatVisionModel.llama3211BV:
        return 'meta-llama/Llama-3.2-11B-Vision-Instruct-Turbo';
      case ChatVisionModel.llama3290BV:
        return 'meta-llama/Llama-3.2-90B-Vision-Instruct-Turbo';
      case ChatVisionModel.llamaVFree:
        return 'meta-llama/Llama-Vision-Free';
      default:
        return name;
    }
  }
}

/// These are the image models available for the Together AI API

enum ImageModel {
  stableDiffusionXL1_0;

  @override
  String toString() {
    switch (this) {
      case ImageModel.stableDiffusionXL1_0:
        return 'stabilityai/stable-diffusion-xl-base-1.0';
      default:
        return name;
    }
  }
}

/// These are the language models available for the Together AI API, use these for text completion.

enum LanguageModel {
  mixtral8X7B,
  mistral7B,
  llama270bhf;

  @override
  String toString() {
    switch (this) {
      case LanguageModel.mixtral8X7B:
        return 'mistralai/Mixtral-8x7B-v0.1';
      case LanguageModel.mistral7B:
        return 'mistralai/Mistral-7B-v0.1';
      case LanguageModel.llama270bhf:
        return 'meta-llama/Llama-2-70b-hf';
      default:
        return name;
    }
  }
}
