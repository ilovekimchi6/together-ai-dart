//TODO 1: Implement the ConversationMemory interface
//This code is yet to be fully implemented.

abstract class ConversationMemory {
  List<Map<String, String>> getMessages();
  void addMessage(String role, String content);
  void clear();
}

class ConversationBufferMemory implements ConversationMemory {
  final List<Map<String, String>> _messages = [];

  @override
  List<Map<String, String>> getMessages() {
    return _messages;
  }

  @override
  void addMessage(String role, String content) {
    _messages.add({'role': role, 'content': content});
  }

  @override
  void clear() {
    _messages.clear();
  }
}

class ConversationBufferWindowMemory implements ConversationMemory {
  final int _windowSize;
  final List<Map<String, String>> _messages = [];

  ConversationBufferWindowMemory(this._windowSize);

  @override
  List<Map<String, String>> getMessages() {
    if (_messages.length <= _windowSize) {
      return _messages;
    }
    return _messages.sublist(_messages.length - _windowSize);
  }

  @override
  void addMessage(String role, String content) {
    _messages.add({'role': role, 'content': content});
    if (_messages.length > _windowSize) {
      _messages.removeAt(0);
    }
  }

  @override
  void clear() {
    _messages.clear();
  }
}
