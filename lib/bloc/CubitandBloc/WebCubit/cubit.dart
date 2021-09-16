import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskwork_app/bloc/CubitandBloc/WebCubit/state.dart';

class WebCubit extends Cubit<WebState> {
  WebCubit() : super(WebInitState());

  static WebCubit get(context) => BlocProvider.of(context);

  //=====Home Icon =========
  bool tapHomeSelected = true;
  String homeImage = "assets/icons/tabs/home.png";
  String selectHomeImage = "assets/icons/tabs/selected/selectedHome.png";

  void methodHomeSelected() {
    tapHomeSelected = !tapHomeSelected;
    tapFriendsSelected = false;
    tapPageSelected = false;
    tapVideoSelected = false;
    tapGroupSelected = false;
    emit(WebHomeSelected());
  }

  //=====Friends Icon =========
  bool tapFriendsSelected = false;
  String friendsImage = "assets/icons/tabs/friendsTap.png";
  String selectFriendsImage = "assets/icons/tabs/selected/selectedFriends.png";

  void methodFriendsSelected() {
    tapFriendsSelected = !tapFriendsSelected;
    tapHomeSelected = false;
    tapPageSelected = false;
    tapVideoSelected = false;
    tapGroupSelected = false;
    tapHomeSelected = false;
    emit(WebFriendsSelected());
  }

//=====Page Icon =========
  bool tapPageSelected = false;
  String pageImage = "assets/icons/tabs/page.png";
  String selectPageImage = "assets/icons/tabs/selected/selectedPage.png";
  void methodPageSelected() {
    tapPageSelected = ! tapPageSelected;
    tapHomeSelected = false;
    tapFriendsSelected = false;
    tapVideoSelected = false;
    tapGroupSelected = false;
    emit(WebPageSelected());
  }

//=====Video Icon =========
  bool tapVideoSelected = false;
  String videoImage = "assets/icons/tabs/video.png";
  String selectVideoImage = "assets/icons/tabs/selected/selectedVideo.png";
  void methodVideoSelected(){
    tapVideoSelected = ! tapVideoSelected;
    tapHomeSelected = false;
    tapFriendsSelected = false;
    tapPageSelected = false;
    tapGroupSelected = false;

    emit(WebVideoSelected());
  }
  //===Group Icon =========

  bool tapGroupSelected = false;
  String groupImage = "assets/icons/tabs/group.png";
  String selectGroupImage = "assets/icons/tabs/selected/selectedGroup.png";
  void methodGroupSelected(){
    tapGroupSelected = ! tapGroupSelected;
    tapHomeSelected = false;
    tapFriendsSelected = false;
    tapPageSelected = false;
    tapVideoSelected = false;
    emit(WebGroupSelected());
  }













}
