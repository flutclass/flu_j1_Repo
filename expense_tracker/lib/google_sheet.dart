import 'package:gsheets/gsheets.dart';
class GoogleSheetApi{

 static const _credential = r'''
    {
  "type": "service_account",
  "project_id": "versatile-field-360716",
  "private_key_id": "3640c2a49b2b18bf6e61bc519177cab80387e65b",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDDN0eu5MrD1NiO\nGe+ikWfg1JpFlXDDNVNWnkyIZxBCyyzZMI+B7rhVDXFQBJMhV6MwBmVGxjnUSbXB\nlmVjBKAOX0oebIHvDvM/UPxC1C4r+KVH+/4qUIUo1Jgh6ijJV8FWf87OFIWJoqUP\n0Me2Ag5c8zBb8OpWKnxRZMidnnLRYwWoszW1KvpEhl8NYRXfqp9ONF/Kzjtr++6v\nhBdDBJqh1UwbszoXPZ5PUIMJCCzQWpsK47Q6oBPIlAlrWEvjX5u5ec4dEjzncXrJ\nzmFHjEeaKZeTo4RyyF6yLC+3JdQNVbA+7UpdAqbtkx1g1kSVo6+a/Wpuc7QnTJGO\nNxvrfNLNAgMBAAECggEAAXeepmSfVodOGmFSW7CH7UNue76St/uPCmFgYLe/l5+Y\ne8hsPQqFiv7HHtYYogFF33meKhZEKdbk/WprOCo5Jr/WGjJFbBMlcRDOLeq+LxlB\nwBpXhSC7o3yCPo0DQfd9eJriJnU2h2aNeDfg7GVfD26fgC1odtMqbIqF9yimoxwT\nSb/NPB+E4Inrlry9iH5CSSQYCl54uiRyRwKwMRr4Up4YSWxgSgTue3iDr0dzROTt\ntgtYQqr+nNktKkXsc50DmWcC2FMBvXWnT24frKaHJmVrB1p9YzMpAZtEHgUyhHXl\ncKAP1jmWh9EZUbsp8xlItHV2TV3BDhl1gljCCuym4QKBgQD80aP90S+u0JKmnHp/\nHyWQsYHFqSzI9iOMiEpN0b9wxAk6wMGwCL6h+TEFWHZPhS3s/67hMooYx7d8BodT\ndrI2aJdC6bs7svwLgrbDukV2MPxLyc3ijwu7ybBiQ8PGjknyUBNH2LZr7L7fEkaD\nLqCl+3Ys9jRb5tGxSpv0uEqoLQKBgQDFrBfuhU5RcV9G+dih+kWuTSh7UIcx9Qpc\nSRx9zVkJVs1fmvTOlSjBqPmZ8q0Jl9DEO2xytKBsd9rFB2VRMF2YuVUY/lHndBd8\nqPY2jN5JdbOBsnAe3iANsx19Lhkk2C1x3v/htnIJVXlwrVShm2GNrSCMbL3C9HcY\nUgTigOvZIQKBgQDGbBL1ZnSyE2jF8xIBK4TkJyze4YQQxX3pEh6fLPu/mVxVDGv3\nqSVVIqrisydIChKda57piCzyfez4Hneffg0ovrXZAnC8ziEbN6ARxeQ2ewPIx74b\nDoH7BLS2qtDAyXQoBcjcHq4tzkWP9lv5IWNcYhvB9gnqByKUryXvz6RokQKBgQCS\nC0fTLiJjAcRHCCkJ44K/+LnEAgcg3c49yLaIK8NwpvUtgasFRibKjjF7kFRQFh5k\nHRNO3Cz6dsLnd0Nf7L/6KlO5F40j2B3SOHNQclt5IsDxPgighbRg6skKx5hEJIPO\n8ddTyBwQ0Vnb6fPxQn+c0SCPH3hEJaIoEdESF/YogQKBgQDcVTNacQhVBLdoq5YH\n/FpVf8q9jKeuF5n6QhE3zel4jiYsIsDlcoMuWUg4L8j6/LAxcPyQejE4Wvs16s9b\n64UOvz2DwTQ22RqRzTBNJ5D8FPQyRjzi60EEhvb6k5NQvyZiY3FQ1J4PciSC7xqo\n3mB+z8yUmXZCQuNUgvh3rKsX+w==\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheet@versatile-field-360716.iam.gserviceaccount.com",
  "client_id": "112720016797017092895",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheet%40versatile-field-360716.iam.gserviceaccount.com"
}

 ''';
static  const _id = '1W0Gcf0ck5X2IuG44TVgfzSPFy7N7DgHWsPEvvj8YCBc';

static final gsheet = GSheets(_credential);
static Worksheet? _worksheet;


//Variables

  static int numberOfTransactions = 0;
  static List<List<dynamic>> currentTransactions = [];
  static bool loading = true;

static Future init() async{

  final tst = await gsheet.spreadsheet(_id);
  _worksheet = tst.worksheetByTitle("WorkSheet1");
  countRows();
}

static Future countRows() async {
  while ((await _worksheet!.values.value(
      column: 1, row: numberOfTransactions + 1)) != '') {
    numberOfTransactions++;
  }
  loadTransactions();
}

static Future loadTransactions() async{
  if(_worksheet == null) return;
  for(int i = 1;i < numberOfTransactions; i++ ){
    final String transactionName = 
        await _worksheet!.values.value(column: 1, row: i + 1);
    final String transactionsAmount =
    await _worksheet!.values.value(column: 2, row: i + 1);
    final String transactionType =
        await _worksheet!.values.value(column: 3, row: i + 1);
    if(currentTransactions.length < numberOfTransactions){
      currentTransactions.add([
        transactionName,
        transactionsAmount,
        transactionType
      ]);
    }

  }
  print(currentTransactions);

  loading = false;
}
static Future insert(String name , String amount , bool _isIncome) async{

  if(_worksheet == null) return;
  numberOfTransactions++;
  currentTransactions.add([
    name,
    amount,
    _isIncome == true ? 'income' : 'expense',
  ]);
  await _worksheet!.values.appendRow([
    name ,
    amount,
    _isIncome == true ? 'income' : 'expense',
  ]);
}

static double CalculateIncome(){
  double totalIncome = 0;
  for( int i = 0; i <currentTransactions.length; i++ ){
    if(currentTransactions[i][2] =='income'){
      totalIncome+=double.parse(currentTransactions[i][1]);
    }
  }
return totalIncome;

}
static double CalculateExpense() {
  double totalExpense = 0;
  for (int i = 0; i < currentTransactions.length; i++) {
    if (currentTransactions[i][2] == 'expense') {
      totalExpense += double.parse(currentTransactions[i][1]);
    }

  }
  return totalExpense;
}
}