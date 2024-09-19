import 'package:klontong/ui_export.dart';

void showMyLoading(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return const _MyLoading();
    }
  );
}

class _MyLoading extends StatelessWidget {
  const _MyLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
        ),
        padding: const EdgeInsets.all(20),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 12,),
            Text('Getting data ...')
          ],
        ),
      ),
    );
  }
}
