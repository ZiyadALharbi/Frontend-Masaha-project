import 'package:supabase/supabase.dart';

class SupabaseEnv {
  final _url = "https://qjjzsudjbsudodsamcpw.supabase.co";
  final _key =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFqanpzdWRqYnN1ZG9kc2FtY3B3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NDIzMDU5NiwiZXhwIjoxOTk5ODA2NTk2fQ.ykuwAxviz5vqDmBwaGZOB-B8LDLSuk62ZtW3yreNyXU";
  final _jwt =
      "X8HJoWYoDvfs1xFF65RpSlL8Tz3IT2tSnjY4Wdjckf5Zmr1QTgHBpxnz5w0dxK54bMMnCjXbku6PPwaepuzINw==";

  get getJWT {
    return _jwt;
  }

  SupabaseClient get supabase {
    final supabase = SupabaseClient(_url, _key);

    return supabase;
  }
}
