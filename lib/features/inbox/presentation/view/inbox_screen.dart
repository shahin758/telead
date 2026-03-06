import 'package:flutter/material.dart';
import 'package:telead/core/theme/text_styles.dart';
import 'package:telead/features/inbox/presentation/widgets/inbox_tab_bar.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: false,
        title: Text(
          "Inbox",
          style: TextStyles.caption1.copyWith(fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: const InboxTabBarCard(),
          ),
        ],
      ),
    );
  }
}