import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yt_safari/core/constants/assets_consts.dart';
import 'package:yt_safari/core/extensions/context_ext.dart';
import 'package:yt_safari/features/common/widgets/custom_network_image.dart';
import 'package:yt_safari/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final theme = context.theme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          /* <<--------->> sliver appbar <<---------->> */
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 400.h,
            pinned: true,
            backgroundColor: theme.colorScheme.primary,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* <<--------->> appbar title <<---------->> */
                Text(
                  "YTSafari",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),

                /* <<--------->> appbar subtitle <<---------->> */
                Text(
                  "Listen Your Favorite Songs",
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
            actions: [
              /* <<--------->> search button <<---------->> */
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  /* <<--------->> background image <<---------->> */
                  Image.asset(
                    height: 500.h,
                    width: screenSize.width,
                    AssetsConsts.imgListeningMusic,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        /* <<--------->> trending song image <<---------->> */
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const CustomNetworkImage(
                            height: 40,
                            width: 40,
                            imgUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0PoJe-tzgZ13yK64HoBRGy1OnJSm6noKENA&s",
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /* <<--------->> trending song title <<---------->> */
                              Text(
                                "Title of the song",
                                style: theme.textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: theme.colorScheme.onPrimary,
                                ),
                              ),

                              /* <<--------->> trending song subtitle <<---------->> */
                              Text(
                                "Sub Title of the song",
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: theme.colorScheme.onPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),

                        /* <<--------->> play now button <<---------->> */
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Play Now"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              collapseMode: CollapseMode.parallax,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /* <<--------->> short title <<---------->> */
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: Text(
                        "Shorts",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),

                    /* <<--------->> shorts list <<---------->> */
                    SizedBox(
                      height: 400.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 1020.w,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /* <<--------->> video thumbnail <<---------->> */
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: CustomNetworkImage(
                                    height: 300.h,
                                    width: 1020.w,
                                    imgUrl:
                                        "https://img.freepik.com/premium-psd/movie-poster-design-template_841014-16988.jpg",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        /* <<--------->> shorts title <<---------->> */
                                        Text(
                                          "Title of the song",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleSmall
                                              ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        /* <<--------->> shorts sub title <<---------->> */
                                        Text(
                                          "Sub Title of the song",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    /* <<--------->> videos title <<---------->> */
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: Text(
                        "Videos",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: Expanded(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: 100,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    /* <<--------->> channel image <<---------->> */
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: const CustomNetworkImage(
                                        height: 40,
                                        width: 40,
                                        imgUrl:
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0PoJe-tzgZ13yK64HoBRGy1OnJSm6noKENA&s",
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          /* <<--------->> video title <<---------->> */
                                          Text(
                                            "Title of the song",
                                            style: theme.textTheme.titleSmall
                                                ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          /* <<--------->> video subtitle <<---------->> */
                                          Text(
                                            "Sub Title of the song",
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ],
                                      ),
                                    ),

                                    /* <<--------->> favorite button <<---------->> */
                                    IconButton(
                                      onPressed: () {},
                                      icon: Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color:
                                                  theme.colorScheme.onSurface),
                                        ),
                                        child: Icon(
                                          Icons.favorite_outlined,
                                          color: theme.colorScheme.error,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                /* <<--------->> video thumbnail <<---------->> */
                                Container(
                                  height: 350.h,
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.only(bottom: 5, top: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: const CustomNetworkImage(
                                      imgUrl:
                                          "https://static1.xdaimages.com/wordpress/wp-content/uploads/2022/10/Screenshots-showing-the-new-YouTube-Shorts-and-Live-tabs-on-Channel-pages.jpg",
                                    ),
                                  ),
                                ),

                                /* <<--------->> video upload time <<---------->> */
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    "4:00PM 23 Oct, 2024",
                                    style: theme.textTheme.labelSmall?.copyWith(
                                      color: theme.colorScheme.tertiary,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      /* <<--------->> video likes info <<---------->> */
                                      Text(
                                        "23.5M Likes",
                                        style: theme.textTheme.labelSmall
                                            ?.copyWith(
                                          color: theme.colorScheme.tertiary,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),

                                      /* <<--------->> video views info <<---------->> */
                                      Text(
                                        "23.5M Views",
                                        style: theme.textTheme.labelSmall
                                            ?.copyWith(
                                          color: theme.colorScheme.tertiary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}
