.class public final Lorg/apache/poi/xssf/usermodel/XSSFCell;
.super Lorg/apache/poi/ss/usermodel/CellBase;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FALSE:Ljava/lang/String; = "FALSE"

.field private static final FALSE_AS_STRING:Ljava/lang/String; = "0"

.field private static final TRUE:Ljava/lang/String; = "TRUE"

.field private static final TRUE_AS_STRING:Ljava/lang/String; = "1"


# instance fields
.field private _cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

.field private _cellNum:I

.field private final _row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

.field private final _sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

.field private final _stylesSource:Lorg/apache/poi/xssf/model/StylesTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/CellBase;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getLastCellNum()S

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    sget-object v0, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    return-void
.end method

.method private static checkBounds(I)V
    .locals 5

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    if-ltz p0, :cond_0

    if-gt p0, v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid column index ("

    const-string v4, ").  Allowable column range for "

    invoke-static {v3, p0, v4}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is (0.."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") or (\'A\'..\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private convertCellValueToBoolean()Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    const/4 p0, 0x6

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cell type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getItemAt(I)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_4

    move v2, v3

    :cond_4
    return v2

    :cond_5
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    :goto_0
    return v2
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const-string v3, "FALSE"

    const-string v4, "TRUE"

    const-string v5, "1"

    const-string v6, ""

    const-string v7, ")"

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cell type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getItemAt(I)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    return-object v6

    :pswitch_1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected formula result type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v4

    :cond_4
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected boolean cached formula value \'"

    const-string v2, "\'."

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v3, v4

    :cond_6
    return-object v3

    :pswitch_4
    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertSharedFormula(ILorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSharedFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    new-instance v2, Lorg/apache/poi/ss/formula/SharedFormula;

    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/SharedFormula;-><init>(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    sget-object v3, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v4

    invoke-static {p1, p2, v3, v0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result p0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v2, p1, v0, p0}, Lorg/apache/poi/ss/formula/SharedFormula;->convertSharedFormulas([Lorg/apache/poi/ss/formula/ptg/Ptg;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Master cell of a shared formula with sid="

    const-string v0, " was not found"

    invoke-static {p2, p1, v0}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findStringValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->INLINE_STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    const-string v2, ""

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetIs()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getIs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    if-ne v0, v1, :cond_4

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-direct {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->getItemAt(I)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_5
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Li5/h0;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal cell type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultCellStyleFromColumn()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getExplicitCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getS()J

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isFormulaCell()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->DATA_TABLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isCellInArrayFormulaContext(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBlankPrivate()V
    .locals 3

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setR(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetS()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getS()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setS(J)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method private setFormula(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaType;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaType;->ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

    if-ne p2, v1, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->removeFormulaImpl()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellFormulaValidation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v2

    invoke-static {p1, v1, p2, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    :cond_1
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onReadCell(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot get a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " value from a "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p0, "formula "

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string p1, "cell"

    invoke-static {v0, p0, p1}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public applyDefaultCellStyleIfNecessary()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getExplicitCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getDefaultCellStyleFromColumn()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    :cond_0
    return-void
.end method

.method public copyCellFrom(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lorg/apache/poi/ss/util/CellUtil;->copyCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;Lorg/apache/poi/ss/usermodel/CellCopyContext;)V

    return-void
.end method

.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstCellInArrayFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cell "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v2, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not part of an array formula."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBooleanCellValue()Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v4, 0x2

    const-string v5, "1"

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p0, v0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2

    :cond_4
    return v3
.end method

.method public getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    return-object p0
.end method

.method public getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isFormulaCell()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only formula cells have cached results"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellComment()Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public getCellComment()Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula(Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCellFormula(Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstCellInArrayFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula(Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v1, v2, :cond_4

    .line 10
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    if-nez p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object p1

    .line 12
    :cond_3
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->convertSharedFormula(ILorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    .line 14
    invoke-static {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public getCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getExplicitCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getDefaultCellStyleFromColumn()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCellType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isFormulaCell()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0
.end method

.method public getColumnIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    return p0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCellString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getErrorCellValue()B
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getErrorCellString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected error code"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getHyperlink()Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public getHyperlink()Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    iget p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public getLocalDateTimeCellValue()Ljava/time/LocalDateTime;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getLocalDateTime(DZ)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public getNumericCellValue()D
    .locals 6

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isFormulaCell()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    const/4 v5, 0x0

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p0, v0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    return-wide v3

    :cond_3
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p0, v0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    return-wide v3
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getV()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object p0

    return-object p0
.end method

.method public getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->findStringValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p0, v0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 6
    :cond_1
    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBaseCellType(Z)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 7
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_2

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->findStringValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 10
    :cond_3
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 11
    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    return-object v0
.end method

.method public bridge synthetic getRow()Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    return-object p0
.end method

.method public getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    return-object p0
.end method

.method public getRowIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result p0

    return p0
.end method

.method public getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-object p0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRow()Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object p0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    return-object p0
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isCellInArrayFormulaContext(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Z

    move-result p0

    return p0
.end method

.method public removeCellComment()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellComment()Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCommentsTable(Z)Lorg/apache/poi/xssf/model/Comments;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/poi/xssf/model/Comments;->removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->removeCommentShape(II)Z

    :cond_0
    return-void
.end method

.method public removeFormulaImpl()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetF()V

    :cond_0
    return-void
.end method

.method public removeHyperlink()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    iget p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(II)V

    return-void
.end method

.method public setAsActiveCell()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V

    return-void
.end method

.method public setCTCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    return-void
.end method

.method public setCellArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setFormula(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaType;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object p0

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->ARRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;)V

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->removeCellComment()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lorg/apache/poi/ss/usermodel/Comment;->setAddress(II)V

    return-void
.end method

.method public setCellErrorValue(B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    return-void
.end method

.method public setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 3
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    return-void
.end method

.method public setCellFormulaImpl(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setFormula(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaType;)V

    return-void
.end method

.method public setCellNum(I)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->checkBounds(I)V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setR(Ljava/lang/String;)V

    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetS()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetS()V

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->verifyBelongsToStylesSource(Lorg/apache/poi/xssf/model/StylesTable;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->putStyle(Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;)I

    move-result p1

    int-to-long v0, p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setS(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCellType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    :cond_1
    sget-object p2, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    const-string v2, "0"

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Illegal cell type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->E:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    goto :goto_0

    :pswitch_1
    sget-object p2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, p2, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-virtual {p2, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addSharedStringItem(Lorg/apache/poi/ss/usermodel/RichTextString;)I

    move-result p2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->N:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    goto :goto_0

    :pswitch_3
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    invoke-interface {p2, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setStringValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetT()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetT()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->convertCellValueToBoolean()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string v2, "1"

    :cond_3
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->B:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p2, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setBlankPrivate()V

    :cond_4
    :goto_0
    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->unsetF()V

    :cond_5
    return-void

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

.method public setCellTypeImpl(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;)V

    return-void
.end method

.method public setCellValue(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->B:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    return-void
.end method

.method public setCellValueImpl(D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 1
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->N:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    return-void
.end method

.method public setCellValueImpl(Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellValueImpl(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-void
.end method

.method public setCellValueImpl(Ljava/time/LocalDateTime;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 24
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDateTime;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    return-void
.end method

.method public setCellValueImpl(Ljava/util/Calendar;)V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 26
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    return-void
.end method

.method public setCellValueImpl(Ljava/util/Date;)V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 22
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    return-void
.end method

.method public setCellValueImpl(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 5
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 7
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->INLINE_STR:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 9
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 11
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 12
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 13
    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    .line 14
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addSharedStringItem(Lorg/apache/poi/ss/usermodel/RichTextString;)I

    move-result p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 16
    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellType$Enum;)V

    .line 17
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 18
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    .line 19
    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addSharedStringItem(Lorg/apache/poi/ss/usermodel/RichTextString;)I

    move-result p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cell:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setV(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->removeHyperlink()V

    return-void

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    move-object p1, v0

    :goto_0
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_row:Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCell;->_cellNum:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Cell Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getErrorCellValue()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy"

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBooleanCellValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "TRUE"

    goto :goto_0

    :cond_1
    const-string p0, "FALSE"

    :goto_0
    return-object p0

    :pswitch_5
    const-string p0, ""

    return-object p0

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

.method public updateCellReferencesForShifting(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->tryToDeleteArrayFormula(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCalculationChain()Lorg/apache/poi/xssf/model/CalculationChain;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/xssf/model/CalculationChain;->removeItem(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setR(Ljava/lang/String;)V

    return-void
.end method
