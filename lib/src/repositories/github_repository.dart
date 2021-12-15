import 'dart:developer';

import 'package:github/github.dart';

class GitHubRepository {
  GitHubRepository({
    required String token,
    required String owner,
    required String name,
  }) {
    github = GitHub(auth: Authentication.withToken(token));
    repositorySlug = RepositorySlug(owner, name);
  }

  late final GitHub github;
  late final RepositorySlug repositorySlug;

  Future<List<User>?> getUsers() async {
    try {
      final users = await github.issues.listAssignees(repositorySlug).toList();
      return users;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  Future<List<IssueLabel>?> getLabels() async {
    try {
      final labels = await github.issues.listLabels(repositorySlug).toList();
      return labels;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
