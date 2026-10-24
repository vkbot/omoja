.class public abstract Lorg/apache/poi/ss/usermodel/RangeCopier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private destSheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private horizontalFormulaShifter:Lorg/apache/poi/ss/formula/FormulaShifter;

.field private sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

.field private verticalFormulaShifter:Lorg/apache/poi/ss/formula/FormulaShifter;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p1}, Lorg/apache/poi/ss/usermodel/RangeCopier;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    iput-object p2, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->destSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/usermodel/RangeCopier;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/RangeCopier;->lambda$copyRange$0(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public static cloneCellContent(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/CellStyle;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Workbook;->createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/CellStyle;->cloneStyleFrom(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_2
    :goto_0
    sget-object p2, Lorg/apache/poi/ss/usermodel/RangeCopier$2;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellFormula(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    goto :goto_1

    :pswitch_2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    goto :goto_1

    :pswitch_3
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->setBlank()V

    goto :goto_1

    :pswitch_4
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    goto :goto_1

    :pswitch_5
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private copyRange(Lorg/apache/poi/ss/util/CellRangeAddress;IILorg/apache/poi/ss/usermodel/Sheet;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            "II",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/ss/usermodel/CellStyle;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 21
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 22
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v7

    move v6, p2

    .line 23
    invoke-static/range {v2 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForColumnCopy(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->horizontalFormulaShifter:Lorg/apache/poi/ss/formula/FormulaShifter;

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 24
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 25
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v7

    move v6, p3

    .line 26
    invoke-static/range {v2 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowCopy(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->verticalFormulaShifter:Lorg/apache/poi/ss/formula/FormulaShifter;

    .line 27
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    if-gt v0, v1, :cond_8

    .line 28
    invoke-interface {p4, v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_3

    .line 29
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    if-gt v2, v3, :cond_7

    .line 30
    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->destSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    add-int v5, v0, p3

    .line 31
    invoke-interface {v4, v5}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->destSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 32
    invoke-interface {v4, v5}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v4

    :cond_4
    add-int v5, v2, p2

    .line 33
    invoke-interface {v4, v5}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v6

    if-nez v6, :cond_5

    .line 34
    invoke-interface {v4, v5}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v6

    .line 35
    :cond_5
    invoke-static {v3, v6, p5}, Lorg/apache/poi/ss/usermodel/RangeCopier;->cloneCellContent(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Cell;Ljava/util/Map;)V

    .line 36
    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->destSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 37
    invoke-virtual {p0, v6, v3, p2, p3}, Lorg/apache/poi/ss/usermodel/RangeCopier;->adjustCellReferencesInsideFormula(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Sheet;II)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method private synthetic lambda$copyRange$0(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->destSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Sheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    return-void
.end method


# virtual methods
.method public abstract adjustCellReferencesInsideFormula(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Sheet;II)V
.end method

.method public adjustInBothDirections([Lorg/apache/poi/ss/formula/ptg/Ptg;III)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->verticalFormulaShifter:Lorg/apache/poi/ss/formula/FormulaShifter;

    invoke-virtual {p4, p1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/RangeCopier;->horizontalFormulaShifter:Lorg/apache/poi/ss/formula/FormulaShifter;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move p4, v0

    :cond_2
    return p4
.end method

.method public copyRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/apache/poi/ss/usermodel/RangeCopier;->copyRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;ZZ)V

    return-void
.end method

.method public copyRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;ZZ)V
    .locals 16

    move-object/from16 v6, p0

    iget-object v0, v6, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 2
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    iget-object v1, v6, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    iget-object v2, v6, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v7

    if-eqz p3, :cond_0

    .line 3
    new-instance v0, Lorg/apache/poi/ss/usermodel/RangeCopier$1;

    invoke-direct {v0, v6}, Lorg/apache/poi/ss/usermodel/RangeCopier$1;-><init>(Lorg/apache/poi/ss/usermodel/RangeCopier;)V

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    sub-int v9, v0, v1

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    sub-int v10, v0, v1

    .line 6
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    move v11, v0

    .line 7
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v0

    .line 8
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    add-int v13, v1, v12

    move v14, v0

    .line 10
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 11
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v0

    add-int/2addr v0, v15

    .line 12
    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v2

    .line 14
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    invoke-direct {v1, v2, v13, v3, v0}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    .line 15
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v0

    sub-int v2, v14, v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    sub-int v3, v11, v0

    move-object/from16 v0, p0

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/usermodel/RangeCopier;->copyRange(Lorg/apache/poi/ss/util/CellRangeAddress;IILorg/apache/poi/ss/usermodel/Sheet;Ljava/util/Map;)V

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    .line 16
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v0

    if-le v14, v0, :cond_2

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    .line 17
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    if-le v11, v0, :cond_1

    if-eqz p4, :cond_3

    iget-object v0, v6, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 18
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lx1/d;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v6}, Lx1/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    iget-object v0, v6, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 19
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    iget-object v1, v6, Lorg/apache/poi/ss/usermodel/RangeCopier;->sourceSheet:Lorg/apache/poi/ss/usermodel/Sheet;

    .line 20
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->removeSheetAt(I)V

    return-void
.end method
