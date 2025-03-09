import 'dart:async';

class ErrorNotifier {
  final _controller = StreamController<String>.broadcast();
  Stream<String> get stream => _controller.stream;

  void notify(String message) {
    _controller.add(message);
  }

  void dispose() => _controller.close();
}
