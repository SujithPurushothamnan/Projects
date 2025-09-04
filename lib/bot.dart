import 'package:flutter/material.dart';

class Bot extends StatefulWidget {
  const Bot({super.key});

  @override
  State<Bot> createState() => _BotState();
}

class _BotState extends State<Bot> {
  final TextEditingController _controller = TextEditingController();
  final List<String> userMessages = [];

  void _handleSend() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      userMessages.add(text);
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChatBot"),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          // Message area
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: userMessages.length,
              itemBuilder: (context, index) {
                return const Align(
                  alignment: Alignment.centerLeft,
                  child: TextBubble("Hi, how can I help you?", false),
                ); // First static bot message (optional)
              },
            ),
          ),

          // Show user messages
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: userMessages.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: TextBubble(userMessages[index], true),
                );
              },
            ),
          ),

          // Input box
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            color: Colors.grey[100],
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Type something...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.cyan),
                  onPressed: _handleSend,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextBubble extends StatelessWidget {
  final String text;
  final bool isUser;

  const TextBubble(this.text, this.isUser, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isUser ? Colors.blue[100] : Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text),
    );
  }
}
