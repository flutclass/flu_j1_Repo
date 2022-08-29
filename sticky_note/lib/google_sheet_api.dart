import 'package:gsheets/gsheets.dart';


class GoogleSheetApi {


  static const _credential = r''' 
{
  "type": "service_account",
  "project_id": "fluttergsheet-360605",
  "private_key_id": "db682cb375864d9e74dc3cf90f47937a8193409b",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDFVH62qo2/XU7F\nFMaaFR5qfwpGxSF0U1rvmfnBeVeXzgcWj0rSSNS3+t8HXYOmvJ3si1L4HQjpPcsC\nyZRvwdNce+a799rSHbgQyECqyOxTLoftkeGrGS1A1lV0f2RJBi1daSGvDFN3kYPU\n52ziRPyyyrjtRWJvzARm2deZePouPOYvK3qIyfIZZDEUqKzzk2JlLr6K12J9YB9T\nE0fne4Vk1/qty9rENMAkCL1H+beh3YozFquvkcBeUwYBrppBvw0PpdLsHv3Iy7FJ\nk8Nn8E3vSLaDTVmmqW+uUFqfMVWg9/adT2Ag1rfjUoyjfBE4NLVC+o9CiBcDJ0iB\nI2MsRraRAgMBAAECggEAC0rrF3wKMZ3e4KNwPCgiPfj4NxWX9QbCKP0YUGynyR22\nxSE9KGyXk9HNCqhc3OFlbkCI5n8O3/4zzHyJvJ2MgXnrue0UvjqKKpezL7Lg51+9\n0qgrEHYX42KAsHKL5Cvw06wtC836RtjygPAfiJFnHrpAO//hAsHbrKEh1/wW4Sds\nUUCzq33BxFEDxe7AK+hUcuDbWDjZqaEdO1uOrfuYE0n1SshSIKI64Oztw/yIRVVE\nY1hwIjx7kxMMcItQd5t1s37/qM7i9N3k1IDqV/5Jas0KvyAAmWCQ4XKtf92lfpcW\no3aJHjs89c6+Gde2FehYy0JJI+im4JdkBGnKMPSbkwKBgQDhEy2+urMRg/34SpbU\nVg4DfwKcSCDetSjTE8ylDaBmqs8/IO1+Ty76QArKiptj8K+cSMcczcvQcbbEx0nE\nlaT+A9L+fQPOyjGLwrW+RQWC4ekAfEDGGEF8+mNazWZTKdhm3D/yzWlkEsUmaouS\nKE/l1S9DD5aoRQNbCtM95RfZ2wKBgQDgcWoHjskUhciBsSdxS/P97M6A3DX+X8NW\ndB8lhwG3ONq4s36i1XIzBhmLm7s1OWs+Yh1bKjh8fy9iDbxxRU+V9dS6/LQP/QIf\noSnu0ojzuk6ktnz7Nq8OCf6dA4I48+00uqqSKq/mStJp+IRhmdAUkQsxkLWEXSDH\nw2OXhkRLAwKBgHW0Uur4tibF0S5ky4YVztRTOqlCKzZspQHly9LRUn3+e812ydyR\nSm8CyOHtJKBaQWxIvyA4G4tRvJQh6FkPLS7ODyyZckFVih2d4O+1JtGwlOp1EGbI\nTo8uXoEhA48gRhRcwHCYrbHxAvs5Iu53eHkoSMQYReCP3tZgzeIDibqbAoGATDkY\nKkLqtUaOBsWUQJzr2xO+OfMPfzkkjMrY/RSxl3j+hvWmj0RwCTYMHOahmHzMmB4Y\nHCrljhpfjCxgEBPa6HHZcjt6J2fkfbttE0d67VMbfELhhStYHit0xfw4EIF+0IaI\ngSVwIYTNmuGki8UB7sonhAjCLJa4GD+aJg6aSOMCgYBTJfgjJzxmANihNzyhqLyj\nWvnZxs1yUuJqkX94j5EyKuHqtqwQwnQ+at3bLBATwiZCFX7FurhDmXCdWG1ceexG\n1s49IUJY3QCoek9z0i0u6sDM5BMbgVaFLMOvECEHsAfDkPZgrbCvra2UhvmgWk28\n0Lj2EdGMgSnMXggV5qULmA==\n-----END PRIVATE KEY-----\n",
  "client_email": "fluttergsheet@fluttergsheet-360605.iam.gserviceaccount.com",
  "client_id": "100017025871935548451",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/fluttergsheet%40fluttergsheet-360605.iam.gserviceaccount.com"
}
 ''';
  static const _id = '1IcZMF-cBIzMVtB4-whQpR7axCNmuWj5gQ_yD__AWmeA';
  static final gsheets = GSheets(_credential);
  static Worksheet? _worksheet;

// Variables

  static int numberOfTransactions = 0;
  static List<List<dynamic>> currentTransactions = [];
  static bool loading = true;
  
  static Future init() async{
    final ss = await gsheets.spreadsheet(_id);
    _worksheet = ss.worksheetByTitle('WorkSheet1');
    print('success');
  }
  
  
}