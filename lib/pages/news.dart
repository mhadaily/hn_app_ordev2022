import 'package:flutter/material.dart';
import 'package:hn_app_ordev/services/api.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiService().getLatestNews(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            itemCount: snapshot.data!.length,
            itemBuilder: ((context, index) {
              final item = snapshot.data![index];
              return ListTile(
                leading: Text('${item.id}'),
                title: Text(item.title),
                trailing: IconButton(
                  icon: const Icon(Icons.forward),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/item',
                      arguments: item.id,
                    );
                  },
                ),
              );
            }),
            separatorBuilder: ((context, index) {
              return Container(
                height: 1,
                color: Theme.of(context).primaryColor,
              );
            }),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('Error!'),
          );
        }
        return const Center(
          child: Text('Loading...'),
        );
      },
    );
  }
}
