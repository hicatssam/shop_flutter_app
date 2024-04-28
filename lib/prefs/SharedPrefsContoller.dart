import 'package:shared_preferences/shared_preferences.dart';


 enum PrefKeys {
 loggedIn,email,password
 }
 class SharedPrefsController {
  static final SharedPrefsController _instance = SharedPrefsController._internal();
  SharedPrefsController._internal();
  late SharedPreferences _sharedPreferences;

  factory SharedPrefsController (){
    return _instance;
  }

  Future<void> initShardPrefs()async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required String email, required String password}) async{
      await _sharedPreferences.setString(PrefKeys.email.toString(), email);
      await _sharedPreferences.setString(PrefKeys.password.toString(), password);
      await _sharedPreferences.setBool(PrefKeys.loggedIn.toString(), true);
  }

  bool get  isLoogedIn => _sharedPreferences.getBool(PrefKeys.loggedIn.toString()) ?? false;
  String get email => _sharedPreferences.getString(PrefKeys.email.toString()) ?? 'No Email' ;
  String get password => _sharedPreferences.getString(PrefKeys.password.toString()) ?? 'No password' ;

  Future<bool> removeKey({required String key})async{
    return await _sharedPreferences.remove(key);
  }

  Future<bool> logOut() async{
   await removeKey(key: PrefKeys.loggedIn.toString());
    return  await _sharedPreferences.setBool(PrefKeys.loggedIn.toString(), false);
  }

  Future<bool> clear() async{
   return await _sharedPreferences.clear();
  }

}