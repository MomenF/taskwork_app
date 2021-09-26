import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskwork_app/bloc/CubitandBloc/states.dart';

class TabsCubit extends Cubit<TabsState>{
  TabsCubit() : super(AppStateInitState());
  static TabsCubit get(context)=>BlocProvider.of(context);


  //=====Home Icon =========
  bool tapHomeSelected = true;
  String homeImage = "assets/icons/tabs/home.png";
  String selectHomeImage = "assets/icons/tabs/selected/selectedHome.png";
  //==========  =============
  bool tapGroupSelected = false;
  String groupImage = "assets/icons/tabs/group.png";
  String selectGroupImage = "assets/icons/tabs/selected/selectedGroup.png";
  //=============  ===========
  bool tapVideoSelected = false;
  String videoImage = "assets/icons/tabs/video.png";
  String selectVideoImage = "assets/icons/tabs/selected/selectedVideo.png";
  //===========  =========
  bool tapPageSelected = false;
  String pageImage = "assets/icons/tabs/page.png";
  String selectPageImage = "assets/icons/tabs/selected/selectedPage.png";
  //========================
  bool tapNotificationSelected = false;
  String notificationImage = "assets/icons/tabs/notifications.png";
  String selectNotificationImage = "assets/icons/tabs/selected/selectedNotification.png";
  //=====Friends Icon =========
  bool tapFriendsSelected = false;
  String friendsImage = "assets/icons/tabs/friendsTap.png";
  String selectFriendsImage = "assets/icons/tabs/selected/selectedFriends.png";
  //=========================

  toggleTabs({
    bool home = false,
    bool group = false ,
    bool video = false ,
    bool page = false ,
    bool notification = false,
    bool friends = false ,
  }) {
    tapHomeSelected = home ;
    tapGroupSelected = group ;
    tapVideoSelected = video ;
    tapPageSelected = page ;
    tapNotificationSelected = notification ;
    tapFriendsSelected = friends ;
    emit(AppStateInitState());
  }

// when calling on face tap
//   toggleTabs(face: true);

}