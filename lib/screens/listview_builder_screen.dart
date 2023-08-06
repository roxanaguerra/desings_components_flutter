import 'package:desings_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<dynamic> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // print(
      //     ' ${scrollController.position.pixels} , ${scrollController.position.maxScrollExtent} ');
      if ((scrollController.position.pixels + 100) >=
          scrollController.position.maxScrollExtent) {
        // AGREGAR 5 IMAGENES MAS
        // add5();
        // MOSTRAR EL LOAGIND Y LUEGO MOSTRAR LAS IMAGENES CUANDO TERMINO DE CARGAR
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;

    setState(() {});

    Future.delayed(const Duration(seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    // si estoy al inicio del scroll, entonces no mostrar una parte de la siguiente imagen
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    // si estoy al final, una vez q cargue las img, mostrar una parte de la siguiente imagen
    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    print('object');
    // saber el ultimo valor del array - ejem: 10
    final lastId = imagesIds.last;
    // imagesIds.add([1, 2, 3, 4, 5].map((e) => lastId + e));
    // imagesIds.add([1, 2, 3, 4, 5]);
    setState(() {});
  }

  Future<void> onRefresh() async {
    Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;

    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
              // mostrar el scroll al inicio y final del listview
              physics: const BouncingScrollPhysics(),
              // info del listView
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      // 'https://picsum.photos/500/300?image=${index + 1}'),
                      'https://picsum.photos/500/300?image=${imagesIds[index]}'),
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                );
              },
            ),
            // RefreshIndicator(
            // color: AppTheme.primary,
            //   onRefresh: onRefresh,
            //   child: ListView.builder(
            //     // mostrar el scroll al inicio y final del listview
            //     physics: const BouncingScrollPhysics(),
            //     // info del listView
            //     controller: scrollController,
            //     itemCount: imagesIds.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return FadeInImage(
            //         width: double.infinity,
            //         height: 300,
            //         fit: BoxFit.cover,
            //         image: NetworkImage(
            //             // 'https://picsum.photos/500/300?image=${index + 1}'),
            //             'https://picsum.photos/500/300?image=${imagesIds[index]}'),
            //         placeholder: const AssetImage('assets/jar-loading.gif'),
            //       );
            //     },
            //   ),
            // ),

            // MOSTRAR EL LOADING ******HABILITAR CODIGO******
            // if (isLoading)
            // posicionar este widget donde querramos
            Positioned(
                bottom: 40,
                // posicionar a la mitad, pero restandole la mitad del ancho  - del contenedor _LoadingIcon
                left: size.width * 0.5 - 30,
                child: _LoagingIcon())
          ],
        ),
      ),
    );
  }
}

class _LoagingIcon extends StatelessWidget {
  const _LoagingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
