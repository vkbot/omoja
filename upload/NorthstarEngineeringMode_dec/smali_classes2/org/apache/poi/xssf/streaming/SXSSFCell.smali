.class public Lorg/apache/poi/xssf/streaming/SXSSFCell;
.super Lorg/apache/poi/ss/usermodel/CellBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;,
        Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _columnIndex:I

.field private _firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

.field private final _row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

.field private _style:Lorg/apache/poi/ss/usermodel/CellStyle;

.field private _value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/CellBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_columnIndex:I

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 2
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;Lorg/apache/poi/ss/usermodel/CellType;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;Lorg/apache/poi/ss/usermodel/CellType;)V

    iput p3, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_columnIndex:I

    return-void
.end method

.method private convertCellValueToBoolean()Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 p0, 0x5

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
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_5

    move v2, v3

    :cond_5
    :goto_0
    return v2
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToString(Lorg/apache/poi/ss/usermodel/CellType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertCellValueToString(Lorg/apache/poi/ss/usermodel/CellType;)Ljava/lang/String;
    .locals 3

    .line 3
    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected cell type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    if-eqz p1, :cond_0

    .line 5
    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v2, :cond_0

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToString(Lorg/apache/poi/ss/usermodel/CellType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getErrorCellValue()B

    move-result p0

    .line 9
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "TRUE"

    goto :goto_0

    :cond_1
    const-string p0, "FALSE"

    :goto_0
    return-object p0

    .line 11
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    return-object v1

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

.method private getDefaultCellStyleFromColumn()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getColumnIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isFormulaCell()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    instance-of p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    return p0
.end method

.method private static typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;
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
.method public ensurePlainStringType()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    :cond_1
    return-void
.end method

.method public ensureRichTextStringType()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/RichTextString;)V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-direct {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    :cond_2
    :goto_0
    return-void
.end method

.method public ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :cond_0
    return-void
.end method

.method public ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-ne v0, p1, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->_NO_ERROR:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;-><init>(Ljava/lang/String;B)V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :cond_5
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :cond_6
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;-><init>(Ljava/lang/String;D)V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    :goto_0
    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBooleanCellValue()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;->getPreEvaluatedValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, p0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p0, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->getValue()Z

    move-result p0

    return p0

    :cond_3
    return v3
.end method

.method public getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->isFormulaCell()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only formula cells have cached results"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/Comment;

    return-object p0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_style:Lorg/apache/poi/ss/usermodel/CellStyle;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getDefaultCellStyleFromColumn()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_style:Lorg/apache/poi/ss/usermodel/CellStyle;

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_style:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-object p0
.end method

.method public getCellType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->isFormulaCell()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0
.end method

.method public getColumnIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_columnIndex:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCellIndex(Lorg/apache/poi/xssf/streaming/SXSSFCell;)I

    move-result p0

    return p0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCellValue()B
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->getPreEvaluatedValue()B

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, p0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p0, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->getValue()B

    move-result p0

    return p0

    :cond_3
    return v3
.end method

.method public getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/Hyperlink;

    return-object p0
.end method

.method public getLocalDateTimeCellValue()Ljava/time/LocalDateTime;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getLocalDateTime(DZ)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public getNumericCellValue()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->getPreEvaluatedValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, p0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p0, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;->getValue()D

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPropertyValue(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getPropertyValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyValue(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    :goto_0
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getType()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getValue()Ljava/lang/Object;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method public getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->getValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    invoke-static {v2, v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public getRow()Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    return-object p0
.end method

.method public getRowIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_row:Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object p0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->getFormulaType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    instance-of v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;->getPreEvaluatedValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->getPreEvaluatedValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {v1, p0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p0, v0, v3}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->typeMismatch(Lorg/apache/poi/ss/usermodel/CellType;Lorg/apache/poi/ss/usermodel/CellType;Z)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;->isRichText()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->getValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public removeCellComment()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->removeProperty(I)V

    return-void
.end method

.method public removeFormulaImpl()V
    .locals 3

    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;->getPreEvaluatedValue()B

    move-result v0

    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-direct {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;->setValue(B)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;->getPreEvaluatedValue()Z

    move-result v0

    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-direct {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->setValue(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->getPreEvaluatedValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-direct {v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->getPreEvaluatedValue()D

    move-result-wide v0

    new-instance v2, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-direct {v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;->setValue(D)V

    :goto_0
    return-void
.end method

.method public removeHyperlink()V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->removeProperty(I)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getColumnIndex()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeHyperlink(II)V

    return-void
.end method

.method public removeProperty(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getType()I

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    iget-object p0, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    iput-object p0, v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    :cond_2
    :goto_1
    return-void
.end method

.method public setAsActiveCell()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->getAddress()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V

    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setCellErrorValue(B)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;-><init>(Ljava/lang/String;B)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;-><init>(B)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    :goto_0
    return-void
.end method

.method public setCellFormulaImpl(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$FormulaValue;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getErrorCellValue()B

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorFormulaValue;-><init>(Ljava/lang/String;B)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set a formula for a cell of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    instance-of v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    if-eqz v1, :cond_4

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->getValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/RichTextString;)V

    iput-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;-><init>(Ljava/lang/String;D)V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    :goto_0
    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_style:Lorg/apache/poi/ss/usermodel/CellStyle;

    return-void
.end method

.method public setCellTypeImpl(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public setCellValue(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanFormulaValue;->setPreEvaluatedValue(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->setValue(Z)V

    :goto_0
    return-void
.end method

.method public setCellValueImpl(D)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 2
    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 3
    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;->setPreEvaluatedValue(D)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 4
    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;->setValue(D)V

    :goto_0
    return-void
.end method

.method public setCellValueImpl(Ljava/lang/String;)V
    .locals 2

    .line 15
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureTypeOrFormulaType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 16
    invoke-interface {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;->getType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 17
    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringFormulaValue;->setPreEvaluatedValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 18
    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCellValueImpl(Ljava/time/LocalDateTime;)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 8
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDateTime;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    return-void
.end method

.method public setCellValueImpl(Ljava/util/Calendar;)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 10
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    return-void
.end method

.method public setCellValueImpl(Ljava/util/Date;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->isDate1904()Z

    move-result v0

    .line 6
    invoke-static {p1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValue(D)V

    return-void
.end method

.method public setCellValueImpl(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->ensureRichTextStringType()V

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    .line 12
    instance-of v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;

    if-eqz v0, :cond_0

    .line 13
    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextStringFormulaValue;->setPreEvaluatedValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    goto :goto_0

    .line 14
    :cond_0
    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->setValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    :goto_0
    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->removeHyperlink()V

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->setProperty(ILjava/lang/Object;)V

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getColumnIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V

    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->getType()I

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;

    invoke-direct {p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$HyperlinkProperty;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid type: "

    invoke-static {p2, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;

    invoke-direct {p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$CommentProperty;-><init>(Ljava/lang/Object;)V

    :goto_1
    if-eqz v1, :cond_4

    iput-object p1, v1, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    goto :goto_2

    :cond_4
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_firstProperty:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

    :goto_2
    return-void
.end method

.method public setType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 3

    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, v0, :cond_2

    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;

    const-string v0, ""

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericFormulaValue;-><init>(Ljava/lang/String;D)V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :pswitch_1
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$ErrorValue;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :pswitch_2
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BooleanValue;->setValue(Z)V

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :pswitch_3
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->setValue(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :pswitch_4
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$NumericValue;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    goto :goto_0

    :pswitch_5
    new-instance p1, Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;

    invoke-direct {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell$BlankValue;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell;->_value:Lorg/apache/poi/xssf/streaming/SXSSFCell$Value;

    :cond_2
    :goto_0
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

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Cell Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getErrorCellValue()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TRUE"

    goto :goto_0

    :cond_0
    const-string p0, "FALSE"

    :goto_0
    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
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

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    return-object v1

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
