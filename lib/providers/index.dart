import 'package:flutter/cupertino.dart';
import 'package:flutter_supabase/constant.dart';

class IndexProvider extends ChangeNotifier {
  Future<void> getTodos() async {
    var data = await supabase.from('todos').select().execute();
    print(data.data);
  }

  Future<void> addTodo() async {
    var response = await supabase.from('todos').insert([
      {'text': 'adding another content', 'user_id': '1'}
    ]).execute();
    print(response.data);
  }

  Future<void> updateTodo() async {
    var response = await supabase
        .from('todos')
        .update({'text': 'from phone now', 'user_id': '1'})
        .eq('id', 2)
        .execute();
    print(response.data);
  }

  Future<void> deleteTodo() async {
    var response = await supabase.from('todos').delete().eq('id', 3).execute();
    print(response.data);
  }

  Future<void> login() async {
    var responsive =
        await supabase.auth.signIn(email: EMAIL.trim(), password: 'zaiditit');
    print(responsive.data?.user?.id);
    print(responsive.data?.user?.email);
    if (responsive.error != null) {
      print(responsive.error?.message);
    }
  }

  Future<void> register() async {
    print('called sign up');
    var responsive =
        await supabase.auth.signUp(EMAIL.trim(), 'zaiditit'.trim());
    print(responsive.data?.user?.id);
    print(responsive.data?.user?.email);
    if (responsive.error != null) {
      print(responsive.error?.message);
    }
  }

  Future<void> logout() async {
    var responsive = await supabase.auth.signOut();
    print(responsive.rawData);
  }

  void currentUser() {
    print(supabase.auth.currentUser?.id);
  }
}
