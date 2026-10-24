.class public final Lorg/apache/poi/ss/formula/FormulaParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final CELL_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final CR:C = '\r'

.field private static final LF:C = '\n'

.field private static final LOGGER:La5/d;

.field private static final TAB:C = '\t'

.field private static final specAll:Ljava/lang/String; = "All"

.field private static final specData:Ljava/lang/String; = "Data"

.field private static final specHeaders:Ljava/lang/String; = "Headers"

.field private static final specThisRow:Ljava/lang/String; = "This Row"

.field private static final specTotals:Ljava/lang/String; = "Totals"


# instance fields
.field private final _book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

.field private final _formulaLength:I

.field private final _formulaString:Ljava/lang/String;

.field private _inIntersection:Z

.field private _pointer:I

.field private _rootNode:Lorg/apache/poi/ss/formula/ParseNode;

.field private final _rowIndex:I

.field private final _sheetIndex:I

.field private final _ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

.field private look:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/FormulaParser;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaParser;->LOGGER:La5/d;

    const-string v0, "(\\$?[A-Za-z]+)?(\\$?[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaParser;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    iput p4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    return-void
.end method

.method private Arguments()[Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    return-object p0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v3, v1

    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v4, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;->instance:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/poi/ss/formula/ParseNode;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    :cond_2
    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const-string v0, "\',\' or \')\'"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private Term()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/DividePtg;

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;

    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private addName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->createName()Lorg/apache/poi/ss/usermodel/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Name;->setFunction(Z)V

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Name;->setNameName(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v0, p0}, Lorg/apache/poi/ss/usermodel/Name;->setSheetIndex(I)V

    return-void
.end method

.method private additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/SubtractPtg;

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/AddPtg;

    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private static augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;-><init>(I)V

    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v1
.end method

.method private checkRowLengths([[Ljava/lang/Object;I)V
    .locals 4

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-object v0, p1, p0

    array-length v0, v0

    if-ne v0, p2, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v1, "Array row "

    const-string v2, " has length "

    const-string v3, " but row 0 has length "

    invoke-static {v1, p0, v2, v0, v3}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private static checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V
    .locals 2

    invoke-static {p2}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " of the range operator \':\' at position "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a proper reference."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private concatExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ConcatPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;
    .locals 2

    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result p0

    int-to-double v0, p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    :goto_0
    if-nez p1, :cond_1

    neg-double v0, v0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected ptg ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/AreaReference;->getWholeRow(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isColumn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/AreaReference;->getWholeColumn(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p2

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0

    :cond_2
    new-instance p0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "has incompatible parts: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' and \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\'."

    invoke-static {v0, p1, p2}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 0

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p2

    if-nez p1, :cond_0

    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {p0, p2, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object p2

    if-nez p1, :cond_2

    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {p0, p2, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    :goto_0
    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p1
.end method

.method private expected(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The specified formula \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const-string v0, "\' starts with an equals sign which is not allowed."

    invoke-static {p1, p0, v0}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse error near char "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in specified formula \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. Expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->isBuiltInFunctionName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz v0, :cond_4

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v0, p1, v2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object v1

    goto/16 :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v0, "Attempt to use name \'"

    const-string v1, "\' as a function, but defined name in workbook does not refer to a function"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v0, p1, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    if-nez v1, :cond_5

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaParser;->LOGGER:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "FormulaParser.function: Name \'{}\' is completely unknown in the current workbook."

    invoke-interface {v0, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaParser$1;->$SwitchMap$org$apache$poi$ss$SpreadsheetVersion:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected spreadsheet version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->addName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v0, p1, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Need book to evaluate name \'"

    const-string v1, "\'"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Arguments()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/16 v2, 0x29

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0
.end method

.method private getBookName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    sget-object p0, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/EqualPtg;

    return-object p0

    :cond_0
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    if-eqz v3, :cond_3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    sget-object p0, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;

    return-object p0

    :cond_3
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    sget-object p0, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/LessThanPtg;

    return-object p0

    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    sget-object p0, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;

    return-object p0

    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    sget-object p0, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;

    return-object p0
.end method

.method private getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    array-length v1, p3

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 p0, v1, 0x1

    new-array v0, p0, [Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, p2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    const/4 p2, 0x0

    aput-object v3, v0, p2

    invoke-static {p3, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    invoke-direct {p2, p0, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NamePtg must be supplied for external functions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p2, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getIndex()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    array-length v4, p3

    if-ne v4, v2, :cond_2

    new-instance p0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getSumSingle()Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object p0

    :cond_2
    array-length v2, p3

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V

    if-eqz p2, :cond_3

    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->create(I)Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    move-result-object p0

    :goto_0
    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p1, p0, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NamePtg no applicable to internal functions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x45

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->isInRange(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(I)V

    return-object p0

    :cond_1
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object p1

    :catch_0
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private getRPNPtg(Lorg/apache/poi/ss/formula/FormulaType;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/OperandClassTransformer;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;-><init>(Lorg/apache/poi/ss/formula/FormulaType;)V

    iget-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformFormula(Lorg/apache/poi/ss/formula/ParseNode;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ParseNode;->toTokenArray(Lorg/apache/poi/ss/formula/ParseNode;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method private intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget-boolean v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v5, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;

    invoke-direct {v4, v5, v0, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    move-object v0, v4

    goto :goto_0

    :catch_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static isAlpha(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isArgumentDelimiter(I)Z
    .locals 1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isDigit(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result p0

    return p0
.end method

.method private static isUnquotedSheetNameChar(I)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x80

    if-le p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method private isValidCellReference(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/util/CellReference;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x28

    if-eq p1, v1, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    move v0, v2

    :cond_2
    return v0
.end method

.method private static isValidDefinedNameChar(I)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x80

    if-le p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method private static isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result p0

    if-eqz p0, :cond_2

    const/16 v0, 0x20

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    return v2

    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    if-eqz v1, :cond_4

    return v3

    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eqz v1, :cond_5

    return v2

    :cond_5
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-static {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result p0

    return p0

    :cond_6
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-ne v0, p0, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    return v2
.end method

.method private static isWhite(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private match(I)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;

    if-eqz v1, :cond_1

    return v2

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-nez v1, :cond_7

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    const/4 v3, 0x0

    if-nez v1, :cond_4

    instance-of v0, v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    array-length v0, p0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_6

    aget-object v4, p0, v1

    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v2
.end method

.method private nextChar()V
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->isWhite(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt v0, v2, :cond_3

    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    goto :goto_1

    :cond_2
    iput v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    :goto_1
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parsed past the end of the formula, pos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", formula: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextNum()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private parse()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->unionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-le v0, v1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unused input ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] after attempting to parse the formula ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const-string v1, "]"

    .line 8
    invoke-static {v0, p0, v1}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    const/4 v0, -0x1

    .line 4
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParser;

    invoke-direct {v0, p0, p1, p3, p4}, Lorg/apache/poi/ss/formula/FormulaParser;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;II)V

    .line 2
    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parse()V

    .line 3
    invoke-direct {v0, p2}, Lorg/apache/poi/ss/formula/FormulaParser;->getRPNPtg(Lorg/apache/poi/ss/formula/FormulaType;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method private parseArray()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    array-length v0, v0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->checkRowLengths([[Ljava/lang/Object;I)V

    new-instance p0, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>([[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p0

    :cond_0
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    goto :goto_0

    :cond_1
    const-string v0, "\'}\' or \';\'"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private parseArrayItem()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseBooleanLiteral()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseArrayRow()[Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "\'}\' or \',\'"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    :cond_2
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    goto :goto_0
.end method

.method private parseAsColumnQuantifier()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x5b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseAsName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "number, string, defined name, or data table"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidDefinedNameChar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseAsSpecialQuantifier()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x5b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    return-object v0
.end method

.method private parseBooleanLiteral()Ljava/lang/Boolean;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnquotedIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const-string v1, "FALSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "\'TRUE\' or \'FALSE\'"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private parseErrorLiteral()I
    .locals 5

    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnquotedIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x44

    const/16 v3, 0x2f

    const/16 v4, 0x21

    if-eq v1, v2, :cond_b

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_4

    const/16 v2, 0x52

    if-eq v1, v2, :cond_2

    const/16 v2, 0x56

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const-string v0, "#VALUE!, #REF!, #DIV/0!, #NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v0, 0x3f

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p0

    return p0

    :cond_5
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p0

    return p0

    :cond_6
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p0

    return p0

    :cond_7
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x41

    if-eq v0, v2, :cond_9

    const/16 v2, 0x61

    if-ne v0, v2, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p0

    return p0

    :cond_a
    const-string v0, "#NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_b
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v2, "DIV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p0

    return p0

    :cond_c
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_d
    const-string v0, "remainder of error constant literal"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p1

    :cond_0
    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStructuredReference(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "TRUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "FALSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz v0, :cond_7

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v0, p1, p0}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationName;->isRange()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p1

    :cond_5
    new-instance p0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v0, "Specified name \'"

    const-string v1, "\' is not a range as expected."

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v0, "Specified named range \'"

    const-string v1, "\' does not exist in the current workbook."

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Need book to evaluate name \'"

    const-string v1, "\'"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_0
    new-instance p0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->valueOf(Z)Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p0
.end method

.method private parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 6

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextNum()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2e

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextNum()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v4, 0x45

    const-string v5, "Integer"

    if-ne v2, v4, :cond_4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_1

    :cond_1
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    const-string v2, "-"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, ""

    :goto_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextNum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_3
    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_4
    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method private parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    const-string v3, "LHS"

    invoke-static {v3, v1, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    const-string v3, "RHS"

    invoke-static {v3, v1, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    filled-new-array {v0, v2}, [Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/RangePtg;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    const/4 v0, 0x1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 12

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetName(Z)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v2

    const-string v3, "."

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x23

    if-ne v0, v2, :cond_1

    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {p0, v0, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    :cond_2
    new-instance p0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v2, "Specified name \'"

    const-string v3, "\' for sheet "

    invoke-static {v2, v0, v3}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cell reference or Named Range expected after sheet name at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-static {v1, p0, v3}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_5
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isWhite(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    :cond_6
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v6, 0x3a

    const/4 v7, 0x0

    if-ne v5, v6, :cond_a

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    move-object v7, v3

    :goto_1
    if-nez v7, :cond_9

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v1, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_8
    const-string p0, ""

    :goto_2
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-static {p0}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\' is not a proper reference."

    invoke-static {p0, v1, v2}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-direct {p0, v1, v2, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_a
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_15

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    const/4 v5, 0x1

    move v7, v5

    :goto_3
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v8, v6, :cond_b

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_3

    :cond_b
    invoke-static {v8}, Lorg/apache/poi/ss/formula/FormulaParser;->isWhite(I)Z

    move-result v6

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    add-int/lit8 v10, v0, -0x1

    iget v11, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    sub-int/2addr v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_d

    if-nez v1, :cond_c

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Complete area reference expected after sheet name at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-static {v1, p0, v3}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v3, "Dotted range (full row or column) expression \'"

    if-nez v4, :cond_13

    if-eqz v6, :cond_e

    goto :goto_4

    :cond_e
    if-ne v7, v5, :cond_f

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const/4 v0, 0x2

    if-ne v7, v0, :cond_12

    :cond_11
    invoke-direct {p0, v1, v2, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v0, "\' must have exactly 2 dots."

    invoke-static {v3, v9, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_4
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, v1, v2, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v0, "\' must not contain whitespace."

    invoke-static {v3, v9, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-direct {p0, v1, v2, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_16
    if-nez v1, :cond_17

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_17
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Second part of cell reference expected after sheet name at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-static {v1, p0, v3}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseSheetName(Z)Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 8

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/4 v1, 0x0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getBookName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v4, 0x3a

    const/4 v5, 0x0

    const/16 v6, 0x21

    const/16 v7, 0x27

    if-eq v3, v7, :cond_9

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    const/16 p1, 0x5f

    if-eq v3, p1, :cond_4

    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne p1, v6, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    new-instance p0, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v2}, Lorg/apache/poi/ss/formula/FormulaParser;->isUnquotedSheetNameChar(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_2

    :cond_5
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v2, v7, :cond_6

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    :cond_6
    new-instance v2, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v5}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne p1, v6, :cond_7

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    new-instance p0, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object p0

    :cond_7
    if-ne p1, v4, :cond_8

    invoke-direct {p0, v0, v2, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;Z)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v1

    :cond_9
    :goto_3
    if-nez p1, :cond_a

    invoke-direct {p0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    :cond_a
    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne p1, v2, :cond_b

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getBookName()Ljava/lang/String;

    move-result-object v0

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/4 v3, 0x1

    if-ne v2, v7, :cond_d

    :cond_c
    move v5, v3

    :cond_d
    :goto_4
    if-nez v5, :cond_f

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-eq v2, v7, :cond_e

    if-eq v2, v4, :cond_c

    goto :goto_4

    :cond_e
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v2, v7, :cond_c

    goto :goto_4

    :cond_f
    new-instance v2, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v3}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne p1, v6, :cond_10

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    new-instance p0, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object p0

    :cond_10
    if-ne p1, v4, :cond_11

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;Z)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v1
.end method

.method private parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;Z)Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    invoke-direct {p0, p3}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetName(Z)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p3, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object p0

    invoke-direct {p3, p1, p2, p0}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object p3

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x23

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->isAlpha(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    :cond_1
    const-string v0, "cell ref or constant literal"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArray()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    return-object v0

    :cond_4
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->unionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    new-instance p0, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object p0

    :cond_7
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    :cond_8
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0
.end method

.method private parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .locals 8

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    const/16 v5, 0x24

    if-eq v4, v5, :cond_2

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    if-gt v0, v5, :cond_4

    return-object v6

    :cond_4
    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    sub-int/2addr v4, v1

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/formula/FormulaParser;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_5

    return-object v6

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    return-object v6

    :cond_6
    const-string v5, ""

    const-string v7, "$"

    if-eqz v3, :cond_7

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v5, v7}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v5

    if-nez v5, :cond_8

    return-object v6

    :cond_7
    if-eqz v2, :cond_9

    :try_start_0
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v5, v1, :cond_9

    iget-object v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v7}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v7

    if-le v5, v7, :cond_8

    goto :goto_2

    :cond_8
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    new-instance p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    invoke-direct {p0, v4, v3, v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;-><init>(Ljava/lang/String;ZZ)V

    return-object p0

    :catch_0
    :cond_9
    :goto_2
    return-object v6
.end method

.method private parseStringLiteral()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v2, v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-eq v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_0
.end method

.method private parseStructuredReference(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 5
    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 6
    invoke-interface {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getTable(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Table;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 7
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getSheetName()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getStartColIndex()I

    move-result v3

    .line 9
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getEndColIndex()I

    move-result v4

    .line 10
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getStartRowIndex()I

    move-result v5

    .line 11
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getEndRowIndex()I

    move-result v6

    iget v7, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 12
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    iget v8, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v9, 0x5d

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v8, v9, :cond_2

    .line 13
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    .line 14
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getHeaderRowCount()I

    move-result v7

    if-lez v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 15
    :cond_0
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v6, v6, -0x1

    .line 16
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v2, v5, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 17
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, v6, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 18
    new-instance v4, Lorg/apache/poi/ss/formula/SheetIdentifier;

    new-instance v5, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-direct {v5, v1, v11}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v10, v5}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    iget-object v1, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 19
    new-instance v5, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v0, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v5, v2, v3, v0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-interface {v1, v5, v4}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 20
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1

    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    iget v8, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 21
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsSpecialQuantifier()Ljava/lang/String;

    move-result-object v10

    const-string v9, "Unknown special quantifier "

    if-nez v10, :cond_3

    .line 22
    invoke-direct {v0, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    goto/16 :goto_4

    .line 23
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :goto_1
    const/4 v8, -0x1

    goto :goto_2

    :sswitch_0
    const-string v8, "This Row"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x4

    goto :goto_2

    :sswitch_1
    const-string v8, "Data"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x3

    goto :goto_2

    :sswitch_2
    const-string v8, "All"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v8, 0x2

    goto :goto_2

    :sswitch_3
    const-string v8, "Totals"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    const/4 v8, 0x1

    goto :goto_2

    :sswitch_4
    const-string v8, "Headers"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    const/4 v8, 0x0

    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 24
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v14, 0x1

    goto :goto_3

    :pswitch_1
    const/4 v15, 0x1

    goto :goto_3

    :pswitch_2
    const/16 v17, 0x1

    goto :goto_3

    :pswitch_3
    const/4 v13, 0x1

    goto :goto_3

    :pswitch_4
    const/16 v16, 0x1

    :goto_3
    add-int/lit8 v12, v12, 0x1

    iget v8, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v10, 0x2c

    if-ne v8, v10, :cond_9

    .line 25
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    const/16 v9, 0x5d

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_0

    .line 26
    :cond_9
    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v8, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v10, 0x40

    if-ne v8, v10, :cond_a

    .line 27
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    iget v10, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 28
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsColumnQuantifier()Ljava/lang/String;

    move-result-object v20

    const-string v11, "The formula "

    if-nez v20, :cond_b

    .line 29
    invoke-direct {v0, v10}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    move/from16 p1, v4

    move/from16 v19, v13

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_6

    :cond_b
    iget v10, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    move/from16 p1, v4

    const/16 v4, 0x2c

    if-eq v10, v4, :cond_2e

    const/16 v4, 0x3a

    if-ne v10, v4, :cond_d

    .line 30
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    .line 31
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsColumnQuantifier()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    move/from16 v19, v13

    const/4 v10, 0x2

    goto :goto_6

    .line 32
    :cond_c
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const-string v3, " is illegal: the string after \':\' must be column quantifier"

    .line 33
    invoke-static {v2, v0, v3}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move/from16 v19, v13

    const/4 v4, 0x0

    const/4 v10, 0x1

    :goto_6
    const-string v13, " is illegal"

    if-nez v10, :cond_15

    if-nez v12, :cond_15

    .line 35
    invoke-direct {v0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    iget v7, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 36
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsColumnQuantifier()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_e

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v20

    goto/16 :goto_a

    .line 37
    :cond_e
    invoke-direct {v0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 38
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsSpecialQuantifier()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 39
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/16 v18, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_1

    move/from16 v21, v10

    goto :goto_7

    :sswitch_5
    move/from16 v21, v10

    const-string v10, "This Row"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto :goto_7

    :cond_f
    const/16 v18, 0x4

    goto :goto_7

    :sswitch_6
    move/from16 v21, v10

    const-string v10, "Data"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto :goto_7

    :cond_10
    const/16 v18, 0x3

    goto :goto_7

    :sswitch_7
    move/from16 v21, v10

    const-string v10, "All"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto :goto_7

    :cond_11
    const/16 v18, 0x2

    goto :goto_7

    :sswitch_8
    move/from16 v21, v10

    const-string v10, "Totals"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto :goto_7

    :cond_12
    const/16 v18, 0x1

    goto :goto_7

    :sswitch_9
    move/from16 v21, v10

    const-string v10, "Headers"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_7

    :cond_13
    const/16 v18, 0x0

    :goto_7
    packed-switch v18, :pswitch_data_1

    .line 40
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    const/4 v14, 0x1

    goto :goto_8

    :pswitch_6
    const/4 v15, 0x1

    goto :goto_8

    :pswitch_7
    const/16 v17, 0x1

    goto :goto_8

    :pswitch_8
    const/16 v19, 0x1

    goto :goto_8

    :pswitch_9
    const/16 v16, 0x1

    :goto_8
    add-int/lit8 v12, v12, 0x1

    :goto_9
    move-object/from16 v7, v20

    move/from16 v10, v21

    goto :goto_a

    .line 41
    :cond_14
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 42
    invoke-static {v2, v0, v13}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move/from16 v21, v10

    const/16 v7, 0x5d

    .line 44
    invoke-direct {v0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    goto :goto_9

    :goto_a
    if-eqz v19, :cond_16

    .line 45
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v9

    if-nez v9, :cond_16

    .line 46
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    :cond_16
    if-nez v8, :cond_17

    if-eqz v14, :cond_18

    :cond_17
    iget v9, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    if-lt v9, v5, :cond_2c

    if-ge v6, v9, :cond_18

    goto/16 :goto_f

    :cond_18
    if-lez v12, :cond_23

    const/4 v9, 0x1

    if-ne v12, v9, :cond_19

    if-eqz v17, :cond_19

    goto :goto_d

    :cond_19
    if-eqz v15, :cond_1a

    if-eqz v16, :cond_1a

    .line 47
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v9

    if-lez v9, :cond_25

    :goto_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    :cond_1a
    if-eqz v15, :cond_1b

    if-eqz v19, :cond_1b

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1b
    const/4 v9, 0x1

    if-ne v12, v9, :cond_1d

    if-eqz v15, :cond_1c

    add-int/lit8 v5, v5, 0x1

    .line 48
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v9

    if-lez v9, :cond_25

    goto :goto_b

    :cond_1c
    const/4 v9, 0x1

    :cond_1d
    if-ne v12, v9, :cond_1e

    if-eqz v16, :cond_1e

    :goto_c
    move v6, v5

    goto :goto_d

    :cond_1e
    if-ne v12, v9, :cond_1f

    if-eqz v19, :cond_1f

    move v5, v6

    goto :goto_d

    :cond_1f
    if-ne v12, v9, :cond_20

    if-nez v14, :cond_21

    :cond_20
    if-eqz v8, :cond_22

    :cond_21
    iget v5, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    goto :goto_c

    .line 49
    :cond_22
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 50
    invoke-static {v2, v0, v13}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    if-eqz v8, :cond_24

    iget v5, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    goto :goto_c

    :cond_24
    add-int/lit8 v5, v5, 0x1

    .line 52
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v9

    if-lez v9, :cond_25

    add-int/lit8 v6, v6, -0x1

    :cond_25
    :goto_d
    const-string v9, " with formula "

    const-string v11, "Cannot parse column: "

    const-string v12, " doesn\'t exist in table "

    const/4 v13, 0x2

    if-ne v10, v13, :cond_28

    if-eqz v7, :cond_27

    if-eqz v4, :cond_27

    .line 53
    invoke-interface {v2, v7}, Lorg/apache/poi/ss/usermodel/Table;->findColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 54
    invoke-interface {v2, v4}, Lorg/apache/poi/ss/usermodel/Table;->findColumnIndex(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v8, v10, :cond_26

    if-eq v9, v10, :cond_26

    add-int/2addr v8, v3

    add-int v4, v3, v9

    move v3, v8

    goto/16 :goto_e

    .line 55
    :cond_26
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "One of the columns "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    const/4 v4, 0x1

    if-ne v10, v4, :cond_2b

    if-nez v8, :cond_2b

    if-eqz v7, :cond_2a

    .line 57
    invoke-interface {v2, v7}, Lorg/apache/poi/ss/usermodel/Table;->findColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_29

    add-int/2addr v3, v4

    move v4, v3

    goto :goto_e

    .line 58
    :cond_29
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v1, "The column "

    .line 59
    invoke-static {v1, v7, v12}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 62
    invoke-static {v11, v7, v9}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    move/from16 v4, p1

    .line 64
    :goto_e
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v2, v5, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 65
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, v6, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 66
    new-instance v4, Lorg/apache/poi/ss/formula/SheetIdentifier;

    new-instance v5, Lorg/apache/poi/ss/formula/NameIdentifier;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-direct {v4, v1, v5}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    iget-object v1, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 67
    new-instance v5, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v0, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v5, v2, v3, v0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-interface {v1, v5, v4}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 68
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1

    :cond_2c
    :goto_f
    if-ltz v9, :cond_2d

    .line 69
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->VALUE_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    .line 70
    :cond_2d
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v1, "Formula contained [#This Row] or [@] structured reference but this row < 0. Row index must be specified for row-referencing structured references."

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2e
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const-string v3, " is illegal: you should not use \',\' with column quantifiers"

    .line 72
    invoke-static {v2, v0, v3}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_2f
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v2, "Illegal table name: \'"

    const-string v3, "\'"

    .line 75
    invoke-static {v2, v1, v3}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_30
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v1, "Structured references work only on XSSF (Excel 2007+)!"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d5ff89a -> :sswitch_4
        -0x6a568631 -> :sswitch_3
        0x10181 -> :sswitch_2
        0x2063ca -> :sswitch_1
        0x4cfc0158 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6d5ff89a -> :sswitch_9
        -0x6a568631 -> :sswitch_8
        0x10181 -> :sswitch_7
        0x2063ca -> :sswitch_6
        0x4cfc0158 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static parseStructuredReference(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;I)Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    .line 2
    array-length p1, p0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    instance-of p2, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Illegal structured reference, had length: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p1

    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    return-object p0

    :cond_4
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result p0

    new-instance p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    neg-int p0, p0

    int-to-double v0, p0

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    new-instance p0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p0

    :cond_5
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    if-eqz p1, :cond_6

    sget-object p1, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;

    goto :goto_2

    :cond_6
    sget-object p1, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;

    :goto_2
    invoke-direct {v0, p1, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v0
.end method

.method private parseUnquotedIdentifier()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x27

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_0

    :cond_3
    const-string v0, "unquoted identifier"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private percentFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/PercentPtg;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private powerFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/PowerPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private resetPointer(I)V
    .locals 2

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    :goto_0
    return-void
.end method

.method private skipWhite()V
    .locals 1

    :goto_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->isWhite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unionExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->skipWhite()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->nextChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    const/4 v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V
    .locals 7

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v0

    const-string v1, "."

    const-string v2, " but got "

    const-string v3, " were expected"

    const-string v4, "Expected "

    const-string v5, "\'. "

    if-ge p1, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Too few arguments to function \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v4}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "At least "

    invoke-static {p0, v0}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasUnlimitedVarags()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxFunctionArgs()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMaxParams()I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMaxParams()I

    move-result p0

    :goto_1
    if-le p1, p0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Too many arguments to function \'"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "At most "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method
