import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit getObject(context) => BlocProvider.of(context);
  bool isChecked = false;
  void Checkbox() {
    isChecked = !isChecked;
    emit(Login_CheckBox());
  }
}
