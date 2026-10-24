.class final Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/SheetRange;


# instance fields
.field private final _firstSheetIndex:I

.field private final _lastSheetIndex:I

.field private final _sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;


# direct methods
.method public constructor <init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "."

    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_0

    iput p1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    .line 2
    invoke-virtual {p3}, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Invalid lastSheetIndex: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for firstSheetIndex: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid firstSheetIndex: "

    .line 5
    invoke-static {p2, p1, v0}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V
    .locals 0

    filled-new-array {p2}, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object p2

    .line 17
    invoke-direct {p0, p1, p1, p2}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-void
.end method


# virtual methods
.method public adjustRowNumber(I)I
    .locals 5

    iget v0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    if-gt v0, v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget v4, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    sub-int v4, v0, v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getMaxRowNum()I

    move-result v3

    if-lt p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return p1

    :cond_2
    iget v0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    :goto_1
    iget v2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    if-gt v0, v2, :cond_3

    iget-object v2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget v3, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    sub-int v3, v0, v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getLastRowNum()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getEvalForCell(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getEvalForCell(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public getFirstSheetIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    return p0
.end method

.method public getLastSheetIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    return p0
.end method

.method public getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    if-gt p1, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SheetIndex: "

    const-string v2, " - Outside range "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getSheetName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSheetNameRange()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    iget v2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
