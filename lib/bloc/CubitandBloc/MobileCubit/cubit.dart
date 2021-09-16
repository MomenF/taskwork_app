import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskwork_app/bloc/CubitandBloc/MobileCubit/state.dart';


class MobileCubit extends Cubit<MobileState> {
  MobileCubit() : super(MobileInitial());
  static MobileCubit get(context)=> BlocProvider.of(context);
//=====Home Icon =========
  bool tapHomeSelected = true;
  String homeImage = "assets/icons/tabs/home.png";
  String selectHomeImage = "assets/icons/tabs/selected/selectedHome.png";
  void methodHomeSelected(){
    tapHomeSelected = ! tapHomeSelected;
    tapGroupSelected = false;
    tapVideoSelected = false;
    tapPageSelected = false;
    tapNotificationSelected = false;

    emit(MobileHomeSelected());
  }
//=====Group Icon =========

  bool tapGroupSelected = false;
  String groupImage = "assets/icons/tabs/group.png";
  String selectGroupImage = "assets/icons/tabs/selected/selectedGroup.png";
  void methodGroupSelected(){
    tapGroupSelected = ! tapGroupSelected;
    tapVideoSelected = false;
    tapPageSelected = false;
    tapNotificationSelected = false;
    tapHomeSelected = false;

    emit(MobileGroupSelected());
  }
//=====Video Icon =========
  bool tapVideoSelected = false;
  String videoImage = "assets/icons/tabs/video.png";
  String selectVideoImage = "assets/icons/tabs/selected/selectedVideo.png";
  void methodVideoSelected(){
    tapVideoSelected = ! tapVideoSelected;
    tapPageSelected = false;
    tapNotificationSelected = false;
    tapHomeSelected = false;
    tapGroupSelected = false;

    emit(MobileVideoSelected());
  }

//=====Page Icon =========
  bool tapPageSelected = false;
  String pageImage = "assets/icons/tabs/page.png";
  String selectPageImage = "assets/icons/tabs/selected/selectedPage.png";
  void methodPageSelected(){
    tapPageSelected = ! tapPageSelected;
    tapVideoSelected = false;
    tapNotificationSelected = false;
    tapHomeSelected = false;
    tapGroupSelected = false;
    emit(MobilePageSelected());
  }

//=====Notification Icon =========
  bool tapNotificationSelected = false;
  String notificationImage = "assets/icons/tabs/notifications.png";
  String selectNotificationImage = "assets/icons/tabs/selected/selectedNotification.png";
  void methodNotificationSelected(){
    tapNotificationSelected = ! tapNotificationSelected;
    tapVideoSelected = false;
    tapPageSelected = false;
    tapHomeSelected = false;
    tapGroupSelected = false;
    emit(MobileNotificationSelected());
  }


}
