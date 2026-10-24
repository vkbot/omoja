.class public Lorg/apache/poi/ss/util/AreaReference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CELL_DELIMITER:C = ':'

.field private static final DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

.field private static final SHEET_NAME_DELIMITER:C = '!'

.field private static final SPECIAL_NAME_DELIMITER:C = '\''


# instance fields
.field private final _firstCell:Lorg/apache/poi/ss/util/CellReference;

.field private final _isSingleCell:Z

.field private final _lastCell:Lorg/apache/poi/ss/util/CellReference;

.field private final _version:Lorg/apache/poi/ss/SpreadsheetVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    sput-object v0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :goto_0
    iput-object p2, p0, Lorg/apache/poi/ss/util/AreaReference;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->isContiguous(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3
    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 4
    aget-object v1, p2, v0

    .line 5
    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    iput-boolean v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    return-void

    .line 7
    :cond_1
    array-length v2, p2

    const/4 v4, 0x2

    const-string v5, "\'"

    const-string v6, "Bad area ref \'"

    if-ne v2, v4, :cond_4

    .line 8
    aget-object p2, p2, v3

    .line 9
    invoke-static {v1}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {p2}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result p1

    .line 12
    invoke-static {p2}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result v2

    .line 13
    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v1

    .line 14
    invoke-static {p2}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result p2

    .line 15
    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, v0, v1, v3, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 16
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    const v1, 0xffff

    invoke-direct {p1, v1, p2, v3, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    iput-boolean v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    goto :goto_1

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    invoke-static {v6, p1, v5}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_3
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 21
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    :goto_1
    return-void

    .line 23
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    invoke-static {v6, p1, v5}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "References passed to the AreaReference must be contiguous, use generateContiguous(ref) if you have non-contiguous references"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 15

    move-object v0, p0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    move-object/from16 v1, p3

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :goto_0
    iput-object v1, v0, Lorg/apache/poi/ss/util/AreaReference;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 73
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    .line 74
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    if-le v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move-object/from16 v2, p1

    move-object/from16 v5, p2

    goto :goto_3

    :cond_4
    move-object/from16 v2, p1

    iput-object v2, v0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    move-object/from16 v5, p2

    iput-object v5, v0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    goto/16 :goto_8

    :goto_3
    if-eqz v1, :cond_5

    .line 75
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    .line 76
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v6

    .line 77
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v7

    .line 78
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v8

    :goto_4
    move v11, v1

    move v13, v6

    move v1, v8

    goto :goto_5

    .line 79
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    .line 80
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v6

    .line 81
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v7

    .line 82
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v8

    goto :goto_4

    :goto_5
    if-eqz v3, :cond_6

    .line 83
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v6

    .line 85
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v5

    .line 86
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v9

    .line 88
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v2

    move-object v10, v3

    move v14, v5

    :goto_6
    move v12, v6

    move-object v6, v8

    move v8, v9

    goto :goto_7

    .line 89
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v6

    .line 91
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v2

    .line 92
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v9

    .line 94
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v5

    move v14, v2

    move-object v10, v3

    move v2, v5

    goto :goto_6

    .line 95
    :goto_7
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    iput-object v3, v0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 96
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    move-object v5, v3

    move v9, v1

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    iput-object v3, v0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    :goto_8
    iput-boolean v4, v0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    return-void
.end method

.method public static generateContiguous(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;)[Lorg/apache/poi/ss/util/AreaReference;
    .locals 6

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->splitAreaReferences(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    new-instance v5, Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v2, [Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/ss/util/AreaReference;

    return-object p0
.end method

.method public static getWholeColumn(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$1:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public static getWholeRow(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    const-string v1, "$A"

    const-string v2, ":$"

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public static isContiguous(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/poi/ss/util/AreaReference;->splitAreaReferences(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPlainColumn(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method public static isWholeColumnReference(Lorg/apache/poi/ss/SpreadsheetVersion;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result p0

    if-ne p1, p0, :cond_1

    .line 4
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const-string v5, "\'"

    const/4 v6, 0x1

    if-ge v3, v0, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-eq v7, v8, :cond_2

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_5

    if-gez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one cell delimiter \':\' appears in area reference \'"

    invoke-static {v1, p0, v5}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v4, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_6

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_4

    move v3, v5

    goto :goto_1

    :cond_4
    move v4, v2

    :cond_5
    :goto_1
    add-int/2addr v3, v6

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Area reference \'"

    const-string v2, "\' ends with special name delimiter \'\'\'"

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-gez v1, :cond_8

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-gez p0, :cond_9

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    add-int/2addr p0, v6

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected ! in second cell reference of \'"

    invoke-static {v1, p0, v5}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static splitAreaReferences(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_0
    move-object v3, p0

    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v3}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x27

    invoke-static {v3, v4}, Lorg/apache/poi/util/StringUtil;->countMatches(Ljava/lang/CharSequence;C)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public formatAsString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    if-nez v1, :cond_2

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/CellReference;->appendCellReference(Ljava/lang/StringBuilder;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllReferencedCells()[Lorg/apache/poi/ss/util/CellReference;
    .locals 15

    iget-boolean v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellReference;

    iget-object p0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v0, v2, :cond_2

    move v13, v3

    :goto_1
    if-gt v13, v4, :cond_1

    new-instance v14, Lorg/apache/poi/ss/util/CellReference;

    iget-object v6, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v10

    iget-object v6, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v11

    move-object v6, v14

    move-object v7, v5

    move v8, v0

    move v9, v13

    invoke-direct/range {v6 .. v11}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v1, [Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v12, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/ss/util/CellReference;

    return-object p0
.end method

.method public getFirstCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    return-object p0
.end method

.method public getLastCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    return-object p0
.end method

.method public isSingleCell()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    return p0
.end method

.method public isWholeColumnReference()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    iget-object p0, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    .line 5
    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference(Lorg/apache/poi/ss/SpreadsheetVersion;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
