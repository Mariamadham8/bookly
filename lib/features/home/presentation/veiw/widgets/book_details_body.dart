import 'package:bookly/features/home/presentation/veiw/widgets/preveiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model.dart';
import 'book_details_appbar.dart';
import 'book_list_veiw.dart';
import 'custume_listveiw_item.dart';

class BookVeiwBody extends StatelessWidget {
  final BookModel? bookModel;
  const BookVeiwBody({super.key, this.bookModel});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookDetailsAppBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: CustumListVeiwItem(
                  Hieght: 50.h,
                  img: bookModel?.volumeInfo?.imageLinks?.thumbnail,
                ),
              ),
              SizedBox(height: 20.h),
              Preveiw(
                title: bookModel?.volumeInfo?.title,
                subTitle: bookModel?.volumeInfo?.publisher,
                count: bookModel?.volumeInfo?.pageCount.toString(),
                rating: bookModel?.volumeInfo?.maturityRating,
                previewLink: bookModel?.volumeInfo?.previewLink!,
              ),
              Expanded(child: SizedBox(height: 40.h)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("    You Can also like", style: Styles.Font14W600),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: BooksListVeiw(Hieght: 10.h),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
