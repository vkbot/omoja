.class public abstract Lorg/apache/poi/ss/usermodel/CellBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Cell;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkLength(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The maximum length of cell contents (text) is %d characters"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tryToDeleteArrayFormulaIfSet()V
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/usermodel/CellBase;->tryToDeleteArrayFormula(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    return-object v0
.end method

.method public abstract getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
.end method

.method public final getValueType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0
.end method

.method public final removeFormula()V
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/usermodel/CellBase;->tryToDeleteArrayFormula(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->removeFormulaImpl()V

    return-void
.end method

.method public abstract removeFormulaImpl()V
.end method

.method public setBlank()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public final setCellFormula(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->tryToDeleteArrayFormulaIfSet()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->removeFormula()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellFormulaImpl(Ljava/lang/String;)V

    return-void
.end method

.method public abstract setCellFormulaImpl(Ljava/lang/String;)V
.end method

.method public final setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 1

    if-eqz p1, :cond_2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->_NONE:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, v0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Calling Cell.setCellType(CellType.FORMULA) is illegal. Use setCellFormula(String) directly."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->tryToDeleteArrayFormulaIfSet()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellTypeImpl(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cellType shall not be null nor _NONE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setCellTypeImpl(Lorg/apache/poi/ss/usermodel/CellType;)V
.end method

.method public setCellValue(D)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValueImpl(D)V

    :goto_0
    return-void
.end method

.method public setCellValue(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->setBlank()V

    return-void

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->checkLength(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValueImpl(Ljava/lang/String;)V

    return-void
.end method

.method public setCellValue(Ljava/time/LocalDateTime;)V
    .locals 0

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->setBlank()V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValueImpl(Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public setCellValue(Ljava/util/Calendar;)V
    .locals 0

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->setBlank()V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValueImpl(Ljava/util/Calendar;)V

    return-void
.end method

.method public setCellValue(Ljava/util/Date;)V
    .locals 0

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->setBlank()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValueImpl(Ljava/util/Date;)V

    return-void
.end method

.method public setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/CellBase;->checkLength(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/CellBase;->setCellValueImpl(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    return-void

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellBase;->setBlank()V

    return-void
.end method

.method public abstract setCellValueImpl(D)V
.end method

.method public abstract setCellValueImpl(Ljava/lang/String;)V
.end method

.method public abstract setCellValueImpl(Ljava/time/LocalDateTime;)V
.end method

.method public abstract setCellValueImpl(Ljava/util/Calendar;)V
.end method

.method public abstract setCellValueImpl(Ljava/util/Date;)V
.end method

.method public abstract setCellValueImpl(Lorg/apache/poi/ss/usermodel/RichTextString;)V
.end method

.method public final tryToDeleteArrayFormula(Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cell "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is part of a multi-cell array formula. You cannot change part of an array."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Sheet;->removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;

    return-void
.end method
