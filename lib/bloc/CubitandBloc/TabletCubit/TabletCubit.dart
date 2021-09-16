import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'TabletState.dart';

class TabletCubit extends Cubit<TabletState>{

  TabletCubit() : super(TabletInit());
  TabletCubit get(context)=>BlocProvider.of(context);

  //=====Home Icon =========
  bool tapHomeSelected = true;
  String homeImage = "assets/icons/tabs/home.png";
  String selectHomeImage = "assets/icons/tabs/selected/selectedHome.png";
  void methodHomeSelected(){
    tapHomeSelected = ! tapHomeSelected;
    tapVideoSelected = false;
    tapPageSelected = false;
     tapFriendsSelected = false;
    emit(TabletHomeSelected());
  }
  //=====Friends Icon =========
  bool tapFriendsSelected = false;
  String friendsImage = "assets/icons/tabs/friendsTap.png";
  String selectFriendsImage = "assets/icons/tabs/selected/selectedFriends.png";
  void methodFriendsSelected() {
    tapFriendsSelected = !tapFriendsSelected;
    tapVideoSelected = false;
    tapPageSelected = false;
    tapHomeSelected = false;
    emit(TabletFriendsSelected());
  }
  //=====Page Icon =========
  bool tapPageSelected = false;
  String pageImage = "assets/icons/tabs/page.png";
  String selectPageImage = "assets/icons/tabs/selected/selectedPage.png";
  void methodPageSelected() {
    tapPageSelected = ! tapPageSelected;
    tapVideoSelected = false;
    tapFriendsSelected = false;
    tapHomeSelected = false;

    emit(TabletPageSelected());
  }


//=====Video Icon =========
  bool tapVideoSelected = false;
  String videoImage = "assets/icons/tabs/video.png";
  String selectVideoImage = "assets/icons/tabs/selected/selectedVideo.png";
  void methodVideoSelected(){
    tapVideoSelected = ! tapVideoSelected;
    tapPageSelected = false;
    tapFriendsSelected = false;
    tapHomeSelected = false;
    emit(TabletVideoSelected());
  }

}