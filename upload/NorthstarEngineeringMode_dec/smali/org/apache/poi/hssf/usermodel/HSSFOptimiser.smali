.class public Lorg/apache/poi/hssf/usermodel/HSSFOptimiser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isUserDefined(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;I)Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getStyleRecord(I)Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static optimiseCellStyles(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 14

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    new-array v1, v0, [S

    new-array v2, v0, [Z

    new-array v3, v0, [Z

    new-array v4, v0, [Z

    new-array v5, v0, [Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v0, :cond_0

    aput-boolean v6, v2, v7

    int-to-short v8, v7

    aput-short v8, v1, v7

    aput-boolean v6, v3, v7

    invoke-static {p0, v7}, Lorg/apache/poi/hssf/usermodel/HSSFOptimiser;->isUserDefined(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;I)Z

    move-result v8

    aput-boolean v8, v4, v7

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/16 v7, 0x15

    move v8, v7

    :goto_1
    const/4 v9, 0x1

    if-ge v8, v0, :cond_4

    move v10, v6

    :goto_2
    const/4 v11, -0x1

    if-ge v10, v8, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v12

    aget-object v13, v5, v8

    invoke-virtual {v12, v13}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    aget-boolean v12, v4, v10

    if-nez v12, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    move v10, v11

    :goto_3
    if-eq v10, v11, :cond_3

    int-to-short v10, v10

    aput-short v10, v1, v8

    aput-boolean v9, v3, v8

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v5

    if-ge v4, v5, :cond_b

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v10}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v12, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v12

    if-ge v12, v0, :cond_6

    aput-boolean v9, v2, v12

    goto :goto_6

    :cond_7
    check-cast v10, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/poi/hssf/record/RowRecord;->getXFIndex()S

    move-result v10

    if-ge v10, v0, :cond_5

    aput-boolean v9, v2, v10

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/hssf/model/InternalSheet;->getMinColumnIndex()I

    move-result v8

    :goto_7
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/poi/hssf/model/InternalSheet;->getMaxColumnIndex()I

    move-result v10

    if-gt v8, v10, :cond_a

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v10

    int-to-short v11, v8

    invoke-virtual {v10, v11}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v10

    if-ge v10, v0, :cond_9

    aput-boolean v9, v2, v10

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    move v4, v7

    :goto_8
    if-ge v4, v0, :cond_e

    invoke-static {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFOptimiser;->isUserDefined(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;I)Z

    move-result v5

    if-eqz v5, :cond_c

    aput-boolean v9, v2, v4

    :cond_c
    aget-short v5, v1, v4

    if-eq v5, v4, :cond_d

    aget-boolean v8, v2, v4

    if-eqz v8, :cond_d

    aput-boolean v9, v2, v5

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    move v4, v7

    :goto_9
    if-ge v4, v0, :cond_10

    aget-boolean v5, v2, v4

    if-nez v5, :cond_f

    aput-boolean v9, v3, v4

    aput-short v6, v1, v4

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_10
    move v2, v7

    :goto_a
    if-ge v2, v0, :cond_14

    aget-short v4, v1, v2

    move v8, v4

    move v5, v6

    :goto_b
    if-ge v5, v4, :cond_12

    aget-boolean v10, v3, v5

    if-eqz v10, :cond_11

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_12
    aput-short v8, v1, v2

    if-eq v2, v8, :cond_13

    if-eqz v8, :cond_13

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateStyleRecord(II)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v5

    if-ge v5, v0, :cond_13

    aget-short v5, v1, v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setParentIndex(S)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    move v2, v0

    move v4, v6

    :goto_c
    if-ge v7, v2, :cond_16

    add-int v5, v7, v4

    aget-boolean v5, v3, v5

    if-eqz v5, :cond_15

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeExFormatRecord(I)V

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, 0x1

    :cond_15
    add-int/2addr v7, v9

    goto :goto_c

    :cond_16
    :goto_d
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v2

    if-ge v6, v2, :cond_1d

    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/usermodel/Cell;

    move-object v8, v7

    check-cast v8, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    if-lt v8, v0, :cond_17

    goto :goto_f

    :cond_17
    aget-short v8, v1, v8

    invoke-virtual {p0, v8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    goto :goto_f

    :cond_18
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/RowRecord;->getXFIndex()S

    move-result v5

    if-lt v5, v0, :cond_19

    goto :goto_e

    :cond_19
    aget-short v5, v1, v5

    invoke-virtual {p0, v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/poi/ss/usermodel/Row;->setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getMinColumnIndex()I

    move-result v3

    :goto_10
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getMaxColumnIndex()I

    move-result v4

    if-gt v3, v4, :cond_1c

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v4

    int-to-short v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v4

    if-lt v4, v0, :cond_1b

    goto :goto_11

    :cond_1b
    aget-short v4, v1, v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    :cond_1d
    return-void
.end method

.method public static optimiseFonts(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 14

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumberOfFontRecords()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v2, v0, [S

    new-array v3, v0, [Z

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    int-to-short v6, v5

    aput-short v6, v2, v5

    aput-boolean v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v0, [Lorg/apache/poi/hssf/record/FontRecord;

    move v6, v4

    :goto_1
    const/4 v7, 0x4

    if-ge v6, v0, :cond_2

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v7

    aput-object v7, v5, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x5

    move v8, v6

    :goto_3
    if-ge v8, v0, :cond_7

    const/4 v9, -0x1

    move v10, v4

    move v11, v9

    :goto_4
    if-ge v10, v8, :cond_5

    if-ne v11, v9, :cond_5

    if-ne v10, v7, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v12

    aget-object v13, v5, v8

    invoke-virtual {v12, v13}, Lorg/apache/poi/hssf/record/FontRecord;->sameProperties(Lorg/apache/poi/hssf/record/FontRecord;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v11, v10

    :cond_4
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    if-eq v11, v9, :cond_6

    int-to-short v9, v11

    aput-short v9, v2, v8

    aput-boolean v1, v3, v8

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move v1, v6

    :goto_6
    if-ge v1, v0, :cond_a

    aget-short v7, v2, v1

    move v8, v4

    move v9, v7

    :goto_7
    if-ge v8, v7, :cond_9

    aget-boolean v10, v3, v8

    if-eqz v10, :cond_8

    add-int/lit8 v9, v9, -0x1

    int-to-short v9, v9

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    aput-short v9, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    move v1, v6

    :goto_8
    if-ge v1, v0, :cond_c

    aget-boolean v7, v3, v1

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v7

    aget-object v8, v5, v1

    invoke-virtual {v7, v8}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeFontRecord(Lorg/apache/poi/hssf/record/FontRecord;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->resetFontCache()V

    move v1, v4

    :goto_9
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v3

    if-ge v1, v3, :cond_d

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v5

    aget-short v5, v2, v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_a
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v3

    if-ge v4, v3, :cond_13

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v8

    sget-object v9, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v8, v9, :cond_f

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getRawUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    move v8, v6

    :goto_c
    if-ge v8, v0, :cond_11

    aget-short v9, v2, v8

    if-eq v8, v9, :cond_10

    invoke-virtual {v7, v8, v9}, Lorg/apache/poi/hssf/record/common/UnicodeString;->swapFontUse(SS)V

    :cond_10
    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    goto :goto_c

    :cond_11
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_13
    return-void
.end method
