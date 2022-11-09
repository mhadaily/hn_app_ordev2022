import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hn_app_ordev/services/api.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context)!.settings.arguments as int?;
    return itemId != null
        ? Scaffold(
            appBar: AppBar(
              title: Text('$itemId'),
            ),
            body: FutureBuilder(
              future: ApiService().getArticle(itemId),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final item = snapshot.data!;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.title,
                          ),
                        ),
                        TextButton(
                          onPressed: () async {
                            final url = Uri.parse(item.url!);
                            if (item.url != null && await canLaunchUrl(url)) {
                              await launchUrl(
                                url,
                                mode: LaunchMode.externalApplication,
                              );
                            }
                          },
                          child: const Icon(Icons.ads_click),
                        ),
                      ],
                    ),
                  );
                }
                return const Center(child: Text('loading'));
              },
            ),
          )
        : Scaffold(
            appBar: AppBar(),
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                  Center(child: Text('No Item ID')),
                ],
              ),
            ),
          );
  }
}
