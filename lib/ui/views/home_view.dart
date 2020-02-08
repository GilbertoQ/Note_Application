import 'package:Note_Application/ui/widgets/note_page.dart';
import 'package:Note_Application/viewmodels/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class HomeView  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<HomeViewModel>.withConsumer(
      viewModel: HomeViewModel(),
      builder: (context,model,child) => Scaffold(
        body: NotesScreen()
      ),
    );
  }
}