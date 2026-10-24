.class public Lorg/apache/poi/hssf/usermodel/HSSFCell;
.super Lorg/apache/poi/ss/usermodel/CellBase;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ENCODING_COMPRESSED_UNICODE:S = 0x0s

.field public static final ENCODING_UNCHANGED:S = -0x1s

.field public static final ENCODING_UTF_16:S = 0x1s

.field private static final FILE_FORMAT_NAME:Ljava/lang/String; = "BIFF8"

.field private static final LAST_COLUMN_NAME:Ljava/lang/String;

.field public static final LAST_COLUMN_NUMBER:I


# instance fields
.field private final _book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private _cellType:Lorg/apache/poi/ss/usermodel/CellType;

.field private _comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

.field private _record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

.field private final _sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field private _stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    sput v1, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;IS)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/CellBase;-><init>()V

    .line 2
    invoke-static {p4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkBounds(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 3
    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v5

    .line 4
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;ISLorg/apache/poi/ss/usermodel/CellType;)V
    .locals 6

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/CellBase;-><init>()V

    .line 6
    invoke-static {p4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkBounds(I)V

    .line 7
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->_NONE:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 8
    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p5

    move v3, p3

    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/CellBase;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 11
    invoke-static {p3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->determineType(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 12
    sget-object p2, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    check-cast p3, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    goto :goto_0

    .line 14
    :cond_1
    new-instance p2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    check-cast p3, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    :goto_0
    return-void
.end method

.method private applyUserCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)S
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getUserStyleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setXFType(S)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result p0

    invoke-virtual {v2, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setParentIndex(S)V

    int-to-short v2, v0

    :cond_2
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected user-defined style"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkBounds(I)V
    .locals 3

    if-ltz p0, :cond_0

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid column index ("

    const-string v2, ").  Allowable column range for BIFF8 is (0.."

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") or (\'A\'..\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NAME:Ljava/lang/String;

    const-string v2, "\')"

    invoke-static {p0, v1, v2}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private convertCellValueToBoolean()Z
    .locals 6

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cell type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p0, v2, v4

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    :pswitch_2
    return v1

    :pswitch_3
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result p0

    return p0

    :pswitch_4
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 7

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const-string v2, "FALSE"

    const-string v3, "TRUE"

    const-string v4, ")"

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cell type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v2, v3

    :cond_0
    return-object v2

    :pswitch_2
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p0, ""

    return-object p0

    :pswitch_4
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const/4 v6, 0x1

    if-eq v0, v6, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedErrorValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected formula result type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v2, v3

    :cond_3
    return-object v2

    :cond_4
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object p0

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

.method private static determineType(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 3

    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0xfd

    if-eq v1, v2, :cond_5

    const/16 v2, 0x201

    if-eq v1, v2, :cond_4

    const/16 v2, 0x203

    if-eq v1, v2, :cond_3

    const/16 v2, 0x205

    if-ne v1, v2, :cond_2

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->isBoolean()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    :goto_0
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad cell value rec ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :cond_5
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method private notifyFormulaChanging()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->notifyFormulaChanging()V

    :cond_0
    return-void
.end method

.method private readValue()Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->getError(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cell-type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object v0

    :cond_4
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private restoreValue(Lorg/apache/poi/ss/usermodel/CellValue;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getErrorValue()B

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected cell-type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for cell-value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getBooleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellValue(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getNumberValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V
    .locals 7

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid cell type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    :goto_0
    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/record/CellRecord;->setColumn(S)V

    if-eqz p2, :cond_1

    sget-object p2, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(B)V

    :cond_1
    invoke-virtual {v0, p5}, Lorg/apache/poi/hssf/record/CellRecord;->setXFIndex(S)V

    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/CellRecord;->setRow(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v0, :cond_2

    new-instance v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    :goto_1
    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/record/CellRecord;->setColumn(S)V

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->convertCellValueToBoolean()Z

    move-result p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Z)V

    :cond_3
    invoke-virtual {v0, p5}, Lorg/apache/poi/hssf/record/CellRecord;->setXFIndex(S)V

    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/CellRecord;->setRow(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v0, :cond_4

    new-instance v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/NumberRecord;

    :goto_2
    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/record/CellRecord;->setColumn(S)V

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    :cond_5
    invoke-virtual {v0, p5}, Lorg/apache/poi/hssf/record/CellRecord;->setXFIndex(S)V

    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/CellRecord;->setRow(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto/16 :goto_6

    :pswitch_3
    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, p2, :cond_6

    new-instance p2, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {p2}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>()V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p2, Lorg/apache/poi/hssf/record/BlankRecord;

    :goto_3
    invoke-virtual {p2, p4}, Lorg/apache/poi/hssf/record/BlankRecord;->setColumn(S)V

    invoke-virtual {p2, p5}, Lorg/apache/poi/hssf/record/BlankRecord;->setXFIndex(S)V

    invoke-virtual {p2, p3}, Lorg/apache/poi/hssf/record/BlankRecord;->setRow(I)V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto/16 :goto_6

    :pswitch_4
    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, p2, :cond_7

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createFormula(II)Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    move-result-object p2

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p2, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p2, p3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setRow(I)V

    invoke-virtual {p2, p4}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setColumn(S)V

    :goto_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p3

    sget-object p4, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p3, p4, :cond_8

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setValue(D)V

    :cond_8
    invoke-virtual {p2, p5}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setXFIndex(S)V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto :goto_6

    :pswitch_5
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    goto :goto_5

    :cond_9
    new-instance v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>()V

    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/record/CellRecord;->setColumn(S)V

    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/CellRecord;->setRow(I)V

    invoke-virtual {v0, p5}, Lorg/apache/poi/hssf/record/CellRecord;->setXFIndex(S)V

    :goto_5
    if-eqz p2, :cond_b

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    return-void

    :cond_a
    iget-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p3

    new-instance p4, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {p4, p2}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    iget-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object p2

    new-instance p3, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {p3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {p3, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    :cond_b
    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    :goto_6
    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, p2, :cond_c

    sget-object p3, Lorg/apache/poi/ss/usermodel/CellType;->_NONE:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p2, p3, :cond_c

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-virtual {p2, p3}, Lorg/apache/poi/hssf/model/InternalSheet;->replaceValueRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    :cond_c
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

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
.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cell "

    const-string v2, " is not part of an array formula."

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBooleanCellValue()Z
    .locals 3

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v0, p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    return v2

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result p0

    return p0
.end method

.method public getBoundWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only formula cells have cached results"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 2
    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    return-object p0
.end method

.method public bridge synthetic getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 2
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 3
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v1

    .line 4
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v2, v0, v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v2
.end method

.method public bridge synthetic getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public getCellType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method public getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    return-object p0
.end method

.method public getColumnIndex()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {p0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCellValue()B
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedErrorValue()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 2
    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {p0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlink(II)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public getLocalDateTimeCellValue()Ljava/time/LocalDateTime;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getLocalDateTime(DZ)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getLocalDateTime(DZ)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public getNumericCellValue()D
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 3

    .line 2
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const-string v2, ""

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    new-instance p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 5
    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 6
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-direct {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    return-object p0
.end method

.method public bridge synthetic getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object p0

    return-object p0
.end method

.method public getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRowIndex()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getRow()Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object p0

    return-object p0
.end method

.method public getRowIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {p0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result p0

    return p0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object p0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object p0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->isPartOfArrayFormula()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeCellComment()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    return-void
.end method

.method public removeFormulaImpl()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedErrorValue()I

    move-result v0

    int-to-byte v0, v0

    new-instance v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    :try_start_0
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(B)V

    :goto_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v0

    new-instance v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Z)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v0

    new-instance v2, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    :goto_1
    return-void
.end method

.method public removeHyperlink()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v3}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method public setAsActiveCell()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellRow(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellCol(S)V

    return-void
.end method

.method public setCellArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v6

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;-><init>(II)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->removeCellComment()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Comment;->setRow(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Comment;->setColumn(I)V

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    return-void
.end method

.method public setCellErrorValue(B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    return-void
.end method

.method public setCellErrorValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 3
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 4
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 5
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v6

    .line 6
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 7
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 8
    check-cast p0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 9
    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedErrorResult(I)V

    :goto_0
    return-void
.end method

.method public setCellFormulaImpl(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->getValueType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v6

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->readValue()Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    sget-object v3, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v2, v3, v1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->setOptions(S)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getXFIndex()S

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setXFIndex(S)V

    :cond_1
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->restoreValue(Lorg/apache/poi/ss/usermodel/CellValue;)V

    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    const/16 p1, 0xf

    .line 2
    invoke-interface {p0, p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setXFIndex(S)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->verifyBelongsToWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getUserStyleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->applyUserCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)S

    move-result p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result p1

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 7
    invoke-interface {p0, p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setXFIndex(S)V

    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    return-void
.end method

.method public setCellTypeImpl(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 7

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v6

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    return-void
.end method

.method public setCellValue(Z)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v6

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedBooleanResult(Z)V

    :goto_0
    return-void
.end method

.method public setCellValueImpl(D)V
    .locals 8

    .line 1
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v3, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 3
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 4
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v6

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 5
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v7

    move-object v2, p0

    .line 6
    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 7
    check-cast p0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 8
    check-cast p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedDoubleResult(D)V

    :goto_0
    return-void
.end method

.method public setCellValueImpl(Ljava/lang/String;)V
    .locals 1

    .line 12
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellValueImpl(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-void
.end method

.method public setCellValueImpl(Ljava/time/LocalDateTime;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDateTime;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    return-void
.end method

.method public setCellValueImpl(Ljava/util/Calendar;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 11
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    return-void
.end method

.method public setCellValueImpl(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 9
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    return-void
.end method

.method public setCellValueImpl(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 13
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 14
    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedStringResult(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    return-void

    .line 17
    :cond_0
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 18
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 19
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 20
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v6

    const/4 v3, 0x0

    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;ZISS)V

    .line 22
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    if-eqz v0, :cond_2

    .line 23
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 24
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 25
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 26
    check-cast v1, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 27
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v2, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setWorkbookReferences(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 28
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    goto :goto_0

    .line 29
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 31
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result p1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 32
    check-cast v1, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 33
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v2, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setWorkbookReferences(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    :goto_0
    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->removeHyperlink()V

    return-void

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstColumn(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastColumn(I)V

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType:[I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getType()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "place"

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "file"

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object p1, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Cell Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast p0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TRUE"

    goto :goto_0

    :cond_0
    const-string p0, "FALSE"

    :goto_0
    return-object p0

    :pswitch_2
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy"

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p0, ""

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p0

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

.method public updateCellNum(S)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {p0, p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setColumn(S)V

    return-void
.end method
