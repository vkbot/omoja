.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationCell;


# instance fields
.field private _booleanValue:Z

.field private _cellType:Lorg/apache/poi/ss/usermodel/CellType;

.field private _errorValue:I

.field private final _masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

.field private _numberValue:D

.field private final _sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

.field private _stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-void
.end method

.method private checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong data type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public copyValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected data type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    invoke-interface {p1, p0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    return-void

    :cond_3
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    return-void

    :cond_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->setBlank()V

    return-void
.end method

.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanCellValue()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-boolean p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    return p0
.end method

.method public getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0
.end method

.method public getCellType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method public getColumnIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result p0

    return p0
.end method

.method public getErrorCellValue()I
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    return p0
.end method

.method public getIdentityKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getIdentityKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getNumericCellValue()D
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    return-wide v0
.end method

.method public getRowIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result p0

    return p0
.end method

.method public getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object p0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    return-object p0
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->isPartOfArrayFormulaGroup()Z

    move-result p0

    return p0
.end method

.method public setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    return-void

    :cond_0
    const-class v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    return-void

    :cond_1
    const-class v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    return-void

    :cond_2
    const-class v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    return-void

    :cond_3
    const-class p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v0, p1, :cond_4

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected value class ("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
