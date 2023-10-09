import 'package:flutter/material.dart';
import 'package:untitled2/models/articles_model.dart';
import 'package:untitled2/screens/web_view_screen.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlesModel});

  final ArticlesModel articlesModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return WebView(
              webUrl: '${articlesModel.webUrl}',
            );
          }));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  articlesModel.imageUrl ??
                      'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg',
                  loadingBuilder:
                      (context, child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.collections_rounded),
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 12,
            ),
            Text(
              articlesModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: (const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${articlesModel.description}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: (const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
            )
          ],
        ),
      ),
    );
  }
}
