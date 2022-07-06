import 'package:challenge_movies/app/utilities/app_colors.dart';
import 'package:challenge_movies/app/utilities/app_txt_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../data/models/movie.dart';

class MovieListItem extends StatelessWidget {
 const MovieListItem({
    Key? key,
    required this.movie,
  }) : super(key: key);
 final Movie? movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 8),
        child: movie != null
        ? Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: movie != null
                && movie!.posterPath != null
                ? Image.network(movie!.posterPath.toString())
                : Image.network('https://placehold.jp/80x150.png'),
              ),
            ),

            const SizedBox(width: 8,),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                   width: 250,
                   child: Text(movie!.title.toString(),
                      maxLines: 2,
                      style: AppTextStyles.paragraphBold.copyWith(
                        color: AppColors.colorWhite,
                      ),
                ),
                 ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(movie!.originalLanguage.toString(),
                      style: AppTextStyles.paragraph.copyWith(
                        color: AppColors.colorWhite,
                        fontSize: 16
                      ),
                    ),

                    Text(' | ',
                      style: AppTextStyles.paragraph.copyWith(
                        color: AppColors.colorWhite,
                      ),
                    ),

                    Text('+18: ',
                      style: AppTextStyles.paragraph.copyWith(
                        color: AppColors.colorWhite,
                      ),
                    ),
                    Text(movie!.adult != true
                      ? 'Não'
                      : 'Sim',
                      style: AppTextStyles.paragraph.copyWith(
                        color: AppColors.colorWhite,
                      ),
                    ),

                    Text(' | ',
                      style: AppTextStyles.paragraph.copyWith(
                        color: AppColors.colorWhite,
                      ),
                    ),

                    Text(movie!.releaseDate != null
                      ? DateFormat('dd/MM/yyyy').format(DateTime.parse(movie!.releaseDate.toString()))
                      : '00/00/0000',
                      style: AppTextStyles.paragraph.copyWith(
                        color: AppColors.colorWhite,
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 8,),

                SizedBox(
                  width: 250,
                  child: Text(movie!.overview.toString(),
                  softWrap: true,
                  maxLines: 5,
                    style: AppTextStyles.small.copyWith(
                      color: AppColors.colorWhite,
                      overflow: TextOverflow.ellipsis
                    ),
                  ),
                ),
              ],
            )
          ],
        )
        : Container(),
      ),
    );
  }
}
