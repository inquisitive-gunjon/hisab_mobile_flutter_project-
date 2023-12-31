import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/provider/noteProvider.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:provider/provider.dart';
import '../widgets/notesDetails.dart';
class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    final notesProvider = Provider.of<NotesProvider>(context);

    return Scaffold(
      backgroundColor: AppConst.appBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child:  Text('Notes',style: AppConst.appTextStyle,),
        ),
      ),
      body: ListView.builder(
        itemCount: notesProvider.notes.length,
        itemBuilder: (context, index) {
          final note = notesProvider.notes[index];
          return ListTile(
            title: Text(note.title ?? 'Untitled'),
            subtitle: Text(note.date),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NoteDetailScreen(note: note),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NoteDetailScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}