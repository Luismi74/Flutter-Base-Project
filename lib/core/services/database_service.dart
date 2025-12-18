import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Abstract interface for Database operations.
abstract class DatabaseService {
  Future<void> initialize();
  // Add common CRUD methods here
  Future<Map<String, dynamic>?> getDocument(String collection, String id);
  Future<void> createDocument(String collection, Map<String, dynamic> data);
}

/// Supabase implementation of [DatabaseService].
class SupabaseDatabaseService implements DatabaseService {
  @override
  Future<void> initialize() async {
    // TODO: Initialize Supabase logic
    // await Supabase.initialize(url: '', anonKey: '');
  }

  @override
  Future<void> createDocument(
    String collection,
    Map<String, dynamic> data,
  ) async {
    // TODO: implement createDocument
  }

  @override
  Future<Map<String, dynamic>?> getDocument(
    String collection,
    String id,
  ) async {
    // TODO: implement getDocument
    return null;
  }
}

/// Firebase implementation of [DatabaseService].
class FirebaseDatabaseService implements DatabaseService {
  @override
  Future<void> initialize() async {
    // TODO: Initialize Firebase logic
    // await Firebase.initializeApp();
  }

  @override
  Future<void> createDocument(
    String collection,
    Map<String, dynamic> data,
  ) async {
    // TODO: implement createDocument
  }

  @override
  Future<Map<String, dynamic>?> getDocument(
    String collection,
    String id,
  ) async {
    // TODO: implement getDocument
    return null;
  }
}

// Provider to easily switch implementations
final databaseServiceProvider = Provider<DatabaseService>((ref) {
  // Toggle this or use environment variables to switch
  const useSupabase = bool.fromEnvironment('USE_SUPABASE', defaultValue: true);
  if (useSupabase) {
    return SupabaseDatabaseService();
  } else {
    return FirebaseDatabaseService();
  }
});
