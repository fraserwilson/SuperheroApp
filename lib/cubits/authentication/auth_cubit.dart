import 'package:bloc/bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialState()) {
    InitialState();
  }

  void LoginUser(String email, String password) async {
    try {
      emit(UnAuthenticatedState(state.mainAuthState));
      //var user = await repo.loginWithEmailPassword(email.trim(), password);
      emit(AuthenticatedState(state.mainAuthState));
    } catch (e) {
      emit(AuthErrorState(state.mainAuthState, e.toString()));
    }
  }

  void registerUser(String email, String password, String name, String surname, int age, ) async {
    try {
      emit(UnAuthenticatedState(state.mainAuthState));
      //var user = await repo.registerWithEmailPassword(email, password);
      emit(AuthenticatedState(state.mainAuthState));
    } catch (e) {
      emit(AuthErrorState(state.mainAuthState, e.toString()));
    }
  }

  Future<void> signOutOfApp() async{
    try{
      //await repo.signOut();
      emit(UnAuthenticatedState(state.mainAuthState));
    }catch (e){
      emit(AuthErrorState(state.mainAuthState, e.toString()));
    }
  }

}