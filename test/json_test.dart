import 'dart:io';

import 'package:test/test.dart';
import 'package:wikipedia_project_final/revision.dart';
import 'package:wikipedia_project_final/wikipedia_json_parser.dart';

void main() {
  test('Return revisions', () async {
    final parser = WikipediaJsonParser();
    final testFile = File('test/test_resource.json');
    final testFileContents = await testFile.readAsString();
    List<Revision> revisions = parser.readRevisions(testFileContents);
    expect(revisions.length, 2);
    expect(revisions[0].username, 'DrOrinScrivello');
    expect(
        revisions[0].timestamp.toIso8601String(), '2025-02-03T18:59:07.000Z');
  });
}
