//These are the chat models available for the Together AI API

enum ChatModel {
  llama27B32KInstruct7B,
  redPajamaINCITEChat7B,
  redPajamaINCITEChat3B,
  stripedHyenaNous7B,
  olmoInstruct7B,
  gemmaInstruct2B,
  gemmaInstruct7B,
  nousCapybaraV1P97B,
  nousHermes2MistralDPO7B,
  nousHermes2Mistral8x7BDPO,
  nousHermes2Mistral8x7BSFT,
  nousHermes2Yi34B,
  nousHermesLlama213B,
  nousHermesLLaMA27B,
  mistral7BInstruct,
  mistral7BInstructV02,
  mixtral8X7BInstructV01,
  dolphin25Mixtral8X7B,
  qwen15Chat05B,
  qwen15Chat18B,
  qwen15Chat14B,
  qwen15Chat4B,
  qwen15Chat72B,
  qwen15Chat7B,
  codeLlamaInstruct13B,
  codeLlamaInstruct34B,
  codeLlamaInstruct70B,
  codeLlamaInstruct7B,
  llama2Chat13B,
  llama2Chat70B,
  llama2Chat7B,
  llama3Chat8B,
  llama3Chat70B,
  solar107BInstruct,
  snorkelMistralPairRMDPO7B,
  deepseakcoderInstruct33B,
  openChat35,
  openHermes2Mistral7B,
  openHermes2p5Mistral7B,
  upstageSOLARinstructV111B,
  yi34B,
  mistralOpenorca7B,
  wizardLMv213B,
  vicunaV1513B,
  chronosHermes13B,
  platypus2Instruct70B,
  mythoMaxL213B,
  alpaca7B;

  @override
  String toString() {
    switch (this) {
      //Together
      case ChatModel.llama27B32KInstruct7B:
        return 'TOGETHERCOMPUTER/LLAMA-2-7B-32K-INSTRUCT';
      case ChatModel.redPajamaINCITEChat7B:
        return 'TOGETHERCOMPUTER/REDPAJAMA-INCITE-7B-CHAT';
      case ChatModel.redPajamaINCITEChat3B:
        return 'TOGETHERCOMPUTER/REDPAJAMA-INCITE-CHAT-3B-V1';
      case ChatModel.stripedHyenaNous7B:
        return 'TOGETHERCOMPUTER/STRIPEDHYENA-NOUS-7B';
      //AllenAI
      case ChatModel.olmoInstruct7B:
        return 'ALLENAI/OLMO-7B-INSTRUCT';
      //Google
      case ChatModel.gemmaInstruct2B:
        return 'GOOGLE/GEMMA-2B-IT';
      case ChatModel.gemmaInstruct7B:
        return 'GOOGLE/GEMMA-7B-IT';
      //NousResearch
      case ChatModel.nousCapybaraV1P97B:
        return 'NOUSRESEARCH/NOUS-CAPYBARA-7B-V1P9';
      case ChatModel.nousHermes2MistralDPO7B:
        return 'NOUSRESEARCH/NOUS-HERMES-2-MISTRAL-7B-DPO';
      case ChatModel.nousHermes2Mistral8x7BDPO:
        return 'NOUSRESEARCH/NOUS-HERMES-2-MIXTRAL-8X7B-DPO';
      case ChatModel.nousHermes2Mistral8x7BSFT:
        return 'NOUSRESEARCH/NOUS-HERMES-2-MIXTRAL-8X7B-SFT';
      case ChatModel.nousHermes2Yi34B:
        return 'NOUSRESEARCH/NOUS-HERMES-2-YI-34B';
      case ChatModel.nousHermesLlama213B:
        return 'NOUSRESEARCH/NOUS-HERMES-LLAMA2-13B';
      case ChatModel.nousHermesLLaMA27B:
        return 'NOUSRESEARCH/NOUS-HERMES-LLAMA-2-7B';
      //mistralai
      case ChatModel.mistral7BInstruct:
        return 'MISTRALAI/MISTRAL-7B-INSTRUCT-V0.1';
      case ChatModel.mistral7BInstructV02:
        return 'MISTRALAI/MISTRAL-7B-INSTRUCT-V0.2';
      case ChatModel.mixtral8X7BInstructV01:
        return 'MISTRALAI/MIXTRAL-8X7B-INSTRUCT-V0.1';
      //cognitivecomputations
      case ChatModel.dolphin25Mixtral8X7B:
        return 'COGNITIVECOMPUTATIONS/DOLPHIN-2.5-MIXTRAL-8X7B';
      //Qwen
      case ChatModel.qwen15Chat05B:
        return 'QWEN/QWEN1.5-0.5B-CHAT';
      case ChatModel.qwen15Chat18B:
        return 'QWEN/QWEN1.5-1.8B-CHAT';
      case ChatModel.qwen15Chat14B:
        return 'QWEN/QWEN1.5-14B-CHAT';
      case ChatModel.qwen15Chat4B:
        return 'QWEN/QWEN1.5-4B-CHAT';
      case ChatModel.qwen15Chat72B:
        return 'QWEN/QWEN1.5-72B-CHAT';
      case ChatModel.qwen15Chat7B:
        return 'QWEN/QWEN1.5-7B-CHAT';
      //Meta
      case ChatModel.codeLlamaInstruct13B:
        return 'CODELLAMA/CODELLAMA-13B-INSTRUCT-HF';
      case ChatModel.codeLlamaInstruct34B:
        return 'CODELLAMA/CODELLAMA-34B-INSTRUCT-HF';
      case ChatModel.codeLlamaInstruct70B:
        return 'CODELLAMA/CODELLAMA-70B-INSTRUCT-HF';
      case ChatModel.codeLlamaInstruct7B:
        return 'CODELLAMA/CODELLAMA-7B-INSTRUCT-HF';
      case ChatModel.llama2Chat13B:
        return 'META-LLAMA/LLAMA-2-13B-CHAT-HF';
      case ChatModel.llama2Chat70B:
        return 'META-LLAMA/LLAMA-2-70B-CHAT-HF';
      case ChatModel.llama2Chat7B:
        return 'META-LLAMA/LLAMA-2-7B-CHAT-HF';
      case ChatModel.llama3Chat8B:
        return 'META-LLAMA/LLAMA-3-8B-CHAT-HF';
      case ChatModel.llama3Chat70B:
        return 'META-LLAMA/LLAMA-3-70B-CHAT-HF';
      //Upstage
      case ChatModel.solar107BInstruct:
        return 'UPSTAGE/SOLAR-10.7B-INSTRUCT-V1.0';
      //Snorkel AI
      case ChatModel.snorkelMistralPairRMDPO7B:
        return 'SNORKELAI/SNORKEL-MISTRAL-PAIRRM-DPO';
      //DeepSeek
      case ChatModel.deepseakcoderInstruct33B:
        return 'DEEPSEEK-AI/DEEPSEEK-CODER-33B-INSTRUCT';
      //01.AI
      case ChatModel.yi34B:
        return 'ZERO-ONE-AI/YI-34B-CHAT';
      //OpenChat
      case ChatModel.openChat35:
        return 'OPENCHAT/OPENCHAT-3.5-1210';
      //teknium
      case ChatModel.openHermes2Mistral7B:
        return 'TEKNIUM/OPENHERMES-2-MISTRAL-7B';
      case ChatModel.openHermes2p5Mistral7B:
        return 'TEKNIUM/OPENHERMES-2P5-MISTRAL-7B';
      //upstage
      case ChatModel.upstageSOLARinstructV111B:
        return 'UPSTAGE/SOLAR-10.7B-INSTRUCT-V1.0';
      //OpenOrca
      case ChatModel.mistralOpenorca7B:
        return 'OPEN-ORCA/MISTRAL-7B-OPENORCA';
      //WizardLM
      case ChatModel.wizardLMv213B:
        return 'WIZARDLM/WIZARDLM-13B-V1.2';
      //LM Sys
      case ChatModel.vicunaV1513B:
        return 'LMSYS/VICUNA-13B-V1.5';
      //Austism
      case ChatModel.chronosHermes13B:
        return 'AUSTISM/CHRONOS-HERMES-13B';
      //garage-bAInd
      case ChatModel.platypus2Instruct70B:
        return 'GARAGE-BAIND/PLATYPUS2-70B-INSTRUCT';
      //Gryphe
      case ChatModel.mythoMaxL213B:
        return 'GRYPHE/MYTHOMAX-L2-13B';
      //Stanford
      case ChatModel.alpaca7B:
        return 'TOGETHERCOMPUTER/ALPACA-7B';
      default:
        return name;
    }
  }
}

/// These are the image models available for the Together AI API

enum ImageModel {
  stableDiffusionXL1_0,
  stableDiffusion21,
  realisticVision3_0,
  stableDiffusion1_5,
  openjourneyV4,
  analogDiffusion;

  @override
  String toString() {
    switch (this) {
      case ImageModel.stableDiffusionXL1_0:
        return 'stabilityai/stable-diffusion-xl-base-1.0';
      case ImageModel.stableDiffusion21:
        return 'stabilityai/stable-diffusion-2-1';
      // case ImageModel.realisticVision3_0:
      //   return 'sg161222/realistic_vision_v3.0_vae';
      // case ImageModel.stableDiffusion1_5:
      //   return 'runwayml/stable-diffusion-v1-5';
      // case ImageModel.openjourneyV4:
      //   return 'promptHero/openjourney-v4';
      // case ImageModel.analogDiffusion:
      //   return 'wavymulder/analog-diffusion';
      default:
        return name;
    }
  }
}

/// These are the language models available for the Together AI API, use these for text completion.

enum LanguageModel {
  olMo7B,
  evo1Base13K,
  evo1Base8K,
  gennna7B,
  gennna2B,
  olMoTwin2T7B,
  mistral8x7Bv01,
  microsoftPhi2,
  qwen1572B,
  qwen1514B,
  qwen157B,
  qwen154B,
  qwen1513B,
  qwen1505B,
  stripedHyenaHessian7B,
  mistral7B,
  llamA232K7B,
  llamA270B,
  llamA213B,
  llamA27B,
  o1aiYiBase34B,
  o1aiYiBase6B,
  nexusRaven13B,
  redPajamaInciteInstruct7B,
  redPajamaIncite7B,
  redPajamaInciteInstruct3B,
  redPajamaIncite3B,
  gptJtModeration8B;

  @override
  String toString() {
    switch (this) {
      case LanguageModel.olMo7B:
        return 'ALLENAI/OLMO-7B';
      case LanguageModel.evo1Base13K:
        return 'TOGETHERCOMPUTER/EVO-1-131K-BASE';
      case LanguageModel.evo1Base8K:
        return 'TOGETHERCOMPUTER/EVO-1-8K-BASE';
      case LanguageModel.gennna7B:
        return 'GOOGLE/GEMMA-7B';
      case LanguageModel.gennna2B:
        return 'GOOGLE/GEMMA-2B';
      case LanguageModel.olMoTwin2T7B:
        return 'ALLENAI/OLMO-7B-TWIN-2T';
      case LanguageModel.mistral8x7Bv01:
        return 'MISTRALAI/MIXTRAL-8X7B-V0.1';
      case LanguageModel.microsoftPhi2:
        return 'MICROSOFT/PHI-2';
      case LanguageModel.qwen1572B:
        return 'QWEN/QWEN1.5-72B';
      case LanguageModel.qwen1514B:
        return 'QWEN/QWEN1.5-14B';
      case LanguageModel.qwen157B:
        return 'QWEN/QWEN1.5-7B';
      case LanguageModel.qwen154B:
        return 'QWEN/QWEN1.5-4B';
      case LanguageModel.qwen1513B:
        return 'QWEN/QWEN1.5-1.8B';
      case LanguageModel.qwen1505B:
        return 'QWEN/QWEN1.5-0.5B';
      case LanguageModel.stripedHyenaHessian7B:
        return 'TOGETHERCOMPUTER/STRIPEDHYENA-HESSIAN-7B';
      case LanguageModel.mistral7B:
        return 'MISTRALAI/MISTRAL-7B-V0.1';
      case LanguageModel.llamA232K7B:
        return 'TOGETHERCOMPUTER/LLAMA-2-7B-32K';
      case LanguageModel.llamA270B:
        return 'META-LLAMA/LLAMA-2-70B-HF';
      case LanguageModel.llamA213B:
        return 'META-LLAMA/LLAMA-2-13B-HF';
      case LanguageModel.llamA27B:
        return 'META-LLAMA/LLAMA-2-7B-HF';
      case LanguageModel.o1aiYiBase34B:
        return 'ZERO-ONE-AI/YI-34B';
      case LanguageModel.o1aiYiBase6B:
        return 'ZERO-ONE-AI/YI-6B';
      case LanguageModel.nexusRaven13B:
        return 'NEXUSFLOW/NEXUSRAVEN-V2-13B';
      case LanguageModel.redPajamaInciteInstruct7B:
        return 'TOGETHERCOMPUTER/REDPAJAMA-INCITE-7B-INSTRUCT';
      case LanguageModel.redPajamaIncite7B:
        return 'TOGETHERCOMPUTER/REDPAJAMA-INCITE-7B-BASE';
      case LanguageModel.redPajamaInciteInstruct3B:
        return 'TOGETHERCOMPUTER/REDPAJAMA-INCITE-INSTRUCT-3B-V1';
      case LanguageModel.redPajamaIncite3B:
        return 'TOGETHERCOMPUTER/REDPAJAMA-INCITE-BASE-3B-V1';
      case LanguageModel.gptJtModeration8B:
        return 'TOGETHERCOMPUTER/GPT-JT-MODERATION-6B';
      default:
        return name;
    }
  }
}
