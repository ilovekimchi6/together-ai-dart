//TODO: Yet to correct all the models to the right name


//These are the chat models available for the Together AI API

enum ChatModel {
  olmoInstruct7B,
  stripedHyenaNous7B,
  gemmaInstruct7B,
  gemmaInstruct2B,
  nousHermes2MetralDPO7B,
  mistral7BInstruct_v02,
  motral8x7BInstruct_v01,
  mistral7bInstructT,
  nousHermes2Motral8x7BSFT,
  qwen15Chat72B,
  gwen15Chat14B,
  gwen15Chat7B,
  gwen15Chat4B,
  gwen15Chat13B,
  gwen15Chat105B,
  nousHermes2Yi34B,
  codeLlamaInstruct70B,
  nousHermes2Mistral8x7BDPO,
  snorkelMistralPairRM_DPO7B,
  deepseak_coderInstruct33B,
  mistral7BInstruct,
  oiAiYiChat64B,
  nousHermesLlama213B,
  nousHermesLLaMA27B,
  llama27B32KInstruct7B,
  llama2Chat70B,
  llama2Chat13B,
  llama2Chat7B,
  openChat35,
  codeLlamaInstruct13B,
  codeLlamaInstruct34B,
  codeLlamaInstruct7B,
  nousCaybara_v197B,
  openHermes25Mistral7B,
  upstageSOLAR_instruct_v111B,
  opencircaMistral7B8K,
  openHermes2Mistral7B,
  wizardLM_v213B,
  vicuna_v1513B,
  chronosHermes13B,
  platypus2Instruct70B,
  mythoMax_l213B,
  redPajamaINCITEChat7B,
  redPajamaINCITEChat3B,
  alpaca7B,
  ;

  @override
  String toString() {
    switch (this) {
      case ChatModel.olmoInstruct7B:
        return 'ALLENAI/OLMO-7B-INSTRUCT';
      case ChatModel.stripedHyenaNous7B:
        return 'StrikedHyena-Nous (7B)';
      case ChatModel.gemmaInstruct7B:
        return 'Gamma Instruct (7B)';
      case ChatModel.gemmaInstruct2B:
        return 'Gamma Instruct (2B)';
      case ChatModel.nousHermes2MetralDPO7B:
        return 'Nous Hermes 2 - Mistral DPO (7B)';
      case ChatModel.mistral7bInstructT:
        return 'MISTRALAI/MISTRAL-7B-INSTRUCT-V0.1';
      case ChatModel.mistral7BInstruct_v02:
        return 'Mistral-7b-Instruct-v0.2';
      case ChatModel.motral8x7BInstruct_v01:
        return 'Mistral-8x7B Instruct-v0.1';
      case ChatModel.nousHermes2Motral8x7BSFT:
        return 'Nous Hermes 2 - Mistral 8x7B-SFT';
      case ChatModel.qwen15Chat72B:
        return 'QWEN/QWEN1.5-72B-CHAT';
      case ChatModel.gwen15Chat14B:
        return 'Gwen 1.5 Chat (14B)';
      case ChatModel.gwen15Chat7B:
        return 'Gwen 1.5 Chat (7B)';
      case ChatModel.gwen15Chat4B:
        return 'Gwen 1.5 Chat (4B)';
      case ChatModel.gwen15Chat13B:
        return 'Gwen 1.5 Chat (13B)';
      case ChatModel.gwen15Chat105B:
        return 'Gwen 1.5 Chat (105B)';
      case ChatModel.nousHermes2Yi34B:
        return 'Nous Hermes 2-Yi (34B)';
      case ChatModel.codeLlamaInstruct70B:
        return 'Code Llama Instruct (70B)';
      case ChatModel.nousHermes2Mistral8x7BDPO:
        return 'Nous Hermes 2 - Mistral 8x7B-DPO';
      case ChatModel.snorkelMistralPairRM_DPO7B:
        return 'Snorkel Mistral-Pair-RM-DPO (7B)';
      case ChatModel.deepseak_coderInstruct33B:
        return 'Deepseak-Coder Instruct (33B)';
      case ChatModel.mistral7BInstruct:
        return 'Mistral (7B) Instruct';
      case ChatModel.oiAiYiChat64B:
        return 'OI-ai Yi Chat (64B)';
      case ChatModel.nousHermesLlama213B:
        return 'Nous Hermes Llama-2 (13B)';
      case ChatModel.nousHermesLLaMA27B:
        return 'Nous Hermes LLaMA-2 (7B)';
      case ChatModel.llama27B32KInstruct7B:
        return 'LLaMA-2-7B-32K-Instruct (7B)';
      case ChatModel.llama2Chat70B:
        return 'LLaMA-2-Chat (70B)';
      case ChatModel.llama2Chat13B:
        return 'LLaMA-2-Chat (13B)';
      case ChatModel.llama2Chat7B:
        return 'LLaMA-2-Chat (7B)';
      case ChatModel.openChat35:
        return 'OpenChat 3.5';
      case ChatModel.codeLlamaInstruct13B:
        return 'Code Llama Instruct (13B)';
      case ChatModel.codeLlamaInstruct34B:
        return 'Code Llama Instruct (34B)';
      case ChatModel.codeLlamaInstruct7B:
        return 'Code Llama Instruct (7B)';
      case ChatModel.nousCaybara_v197B:
        return 'Nous Caybara v1.9 (7B)';
      case ChatModel.openHermes25Mistral7B:
        return 'OpenHermes-2.5-Mistral (7B)';
      case ChatModel.upstageSOLAR_instruct_v111B:
        return 'Upstage SOLAR Instruct v1 (11B)';
      case ChatModel.opencircaMistral7B8K:
        return 'OpenCirca Mistral (7B) 8K';
      case ChatModel.openHermes2Mistral7B:
        return 'OpenHermes-2-Mistral (7B)';
      case ChatModel.wizardLM_v213B:
        return 'WizardLM v1.2 (13B)';
      case ChatModel.vicuna_v1513B:
        return 'Vicuna v1.5 (13B)';
      case ChatModel.chronosHermes13B:
        return 'Chronos Hermes (13B)';
      case ChatModel.platypus2Instruct70B:
        return 'Platypus2 Instruct (70B)';
      case ChatModel.mythoMax_l213B:
        return 'MythoMax-L2 (13B)';
      case ChatModel.redPajamaINCITEChat7B:
        return 'RedPajama-INCITE Chat (7B)';
      case ChatModel.redPajamaINCITEChat3B:
        return 'RedPajama-INCITE Chat (3B)';
      case ChatModel.alpaca7B:
        return 'Alpaca (7B)';
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
  openjourney_v4,
  analogDiffusion,
  ;

  @override
  String toString() {
    switch (this) {
      case ImageModel.stableDiffusionXL1_0:
        return 'Stable Diffusion XL 1.0';
      case ImageModel.stableDiffusion21:
        return 'stabilityai/stable-diffusion-2-1';
      case ImageModel.realisticVision3_0:
        return 'Realistic Vision 3.0';
      case ImageModel.stableDiffusion1_5:
        return 'Stable Diffusion 1.5';
      case ImageModel.openjourney_v4:
        return 'Openjourney v4';
      case ImageModel.analogDiffusion:
        return 'Analog Diffusion';
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
  gwen1514B,
  gwen157B,
  gwen154B,
  gwen1513B,
  gwen1505B,
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
        return 'OLMo (7B)';
      case LanguageModel.evo1Base13K:
        return 'Evo-1 Base (13K)';
      case LanguageModel.evo1Base8K:
        return 'Evo-1 Base (8K)';
      case LanguageModel.gennna7B:
        return 'Gennna (7B)';
      case LanguageModel.gennna2B:
        return 'Gennna (2B)';
      case LanguageModel.olMoTwin2T7B:
        return 'OLMo Twin-2T (7B)';
      case LanguageModel.mistral8x7Bv01:
        return 'Mistral-8x7B v0.1';
      case LanguageModel.microsoftPhi2:
        return 'Microsoft Phi-2';
      case LanguageModel.qwen1572B:
        return 'QWEN/QWEN1.5-72B';
      case LanguageModel.gwen1514B:
        return 'Gwen 15 (14B)';
      case LanguageModel.gwen157B:
        return 'Gwen 15 (7B)';
      case LanguageModel.gwen154B:
        return 'Gwen 15 (4B)';
      case LanguageModel.gwen1513B:
        return 'Gwen 15 (13B)';
      case LanguageModel.gwen1505B:
        return 'Gwen 15 (0.5B)';
      case LanguageModel.stripedHyenaHessian7B:
        return 'StripedHyena Hessian (7B)';
      case LanguageModel.mistral7B:
        return 'Mistral (7B)';
      case LanguageModel.llamA232K7B:
        return 'LLaMA-2-32K (7B)';
      case LanguageModel.llamA270B:
        return 'LLaMA-2 (70B)';
      case LanguageModel.llamA213B:
        return 'LLaMA-2 (13B)';
      case LanguageModel.llamA27B:
        return 'LLaMA-2 (7B)';
      case LanguageModel.o1aiYiBase34B:
        return 'O1-ai Yi Base (34B)';
      case LanguageModel.o1aiYiBase6B:
        return 'O1-ai Yi Base (6B)';
      case LanguageModel.nexusRaven13B:
        return 'NexusRaven (13B)';
      case LanguageModel.redPajamaInciteInstruct7B:
        return 'RedPajama-INCITE Instruct (7B)';
      case LanguageModel.redPajamaIncite7B:
        return 'RedPajama-INCITE (7B)';
      case LanguageModel.redPajamaInciteInstruct3B:
        return 'RedPajama-INCITE Instruct (3B)';
      case LanguageModel.redPajamaIncite3B:
        return 'RedPajama-INCITE (3B)';
      case LanguageModel.gptJtModeration8B:
        return 'GPT-JT-Moderation (8B)';
      default:
        return name;
    }
  }
}
