part of merge_table;

abstract class BaseMColumn {
  final Text header;
  final List<Text>? columns;

  bool get isMergedColumn => columns != null;

  BaseMColumn({
    required this.header,
    this.columns,
  });
}

class MColumn extends BaseMColumn {
  MColumn({
    required Text header,
  }) : super(header: header, columns: null);
}

class MMergedColumns extends BaseMColumn {
  @override
  List<Text> get columns => super.columns!;

  MMergedColumns({
    required Text header,
    required List<Text> columns,
  }) : super(columns: columns, header: header);
}
