import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  /// User Table
  static final String USER_Table = 'users';
  static final String USER_Id = 'uid';
  static final String USER_Name = 'uName';
  static final String USER_Mobile = 'uMobile';
  static final String USER_Pasword = 'uPassword';

  /// Expense Table
  static final String Expense_Table = 'expense';
  static final String Col_ExId = 'exId';
  static final String Col_ExTitle = 'exTitle';
  static final String Col_ExDesc = 'exDesc';
  static final String Col_ExTimeStamp = 'exTimeStamp';
  static final String Col_ExAmmount = 'exAmount';
  static final String Col_ExBalance = 'exBalance';
  static final String Col_ExType = 'exType';
  static final String Col_ExCatType = 'exCatType';

  ///Create Singleton Object
  AppDatabase._();

  ///Access  Class privet object through beloved creation
  static final AppDatabase db = AppDatabase._();

  Database? myDb;

  Future<Database> getDb() async {
    if (myDb != null) {
      return await myDb!;
    } else {
      myDb = await initDb();
      return myDb!;
    }
  }

  Future<Database> initDb() async {
    var rootPath = await getApplicationDocumentsDirectory();
    var actualPath = join(rootPath.path, "myExpenseDb.db");

    return openDatabase(
      actualPath,
      version: 1,
      onCreate: (db, version) {
        db.execute(
            " Create Table $USER_Table ( $USER_Id Integer Primary key , $USER_Name Text , $USER_Mobile Text , $USER_Pasword Text)");
        db.execute(
            " Create Table $Expense_Table ( $Col_ExId Integer Primary key , $USER_Id Integer , $Col_ExTitle Text , $Col_ExDesc Text , $Col_ExTimeStamp Text , $Col_ExAmmount  real, $Col_ExBalance real, $Col_ExType Text , $Col_ExCatType Text)");
      },
    );
  }
}
