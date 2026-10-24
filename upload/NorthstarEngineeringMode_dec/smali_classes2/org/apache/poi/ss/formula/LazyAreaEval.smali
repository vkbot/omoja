.class final Lorg/apache/poi/ss/formula/LazyAreaEval;
.super Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
.source "SourceFile"


# instance fields
.field private final _evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;


# direct methods
.method public constructor <init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V
    .locals 6

    .line 2
    invoke-virtual {p5, p3}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->adjustRowNumber(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;IIII)V

    iput-object p5, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRangeEvaluator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRange;)V

    iput-object p2, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    return-void
.end method


# virtual methods
.method public getColumn(I)Lorg/apache/poi/ss/formula/LazyAreaEval;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v0

    add-int v5, v0, p1

    .line 4
    new-instance p1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastRow()I

    move-result v4

    iget-object v6, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-object v1, p1

    move v3, v5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid columnIndex "

    const-string v2, ".  Allowable range is (0.."

    .line 6
    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getColumn(I)Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-result-object p0

    return-object p0
.end method

.method public getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v0

    add-int/2addr v0, p2

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p0, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getEvalForCell(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public getRow(I)Lorg/apache/poi/ss/formula/LazyAreaEval;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v0

    add-int v4, v0, p1

    .line 4
    new-instance p1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastColumn()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-object v1, p1

    move v2, v4

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rowIndex "

    const-string v2, ".  Allowable range is (0.."

    .line 6
    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getRow(I)Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-result-object p0

    return-object p0
.end method

.method public isRowHidden(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getFirstSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->isRowHidden(I)Z

    move-result p0

    return p0
.end method

.method public isSubTotal(II)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getFirstSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->isSubTotal(II)Z

    move-result p0

    return p0
.end method

.method public offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 8

    new-instance v7, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v2

    move-object v0, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;-><init>(IIIIII)V

    new-instance p1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {p1, v7, p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastColumn()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lorg/apache/poi/ss/formula/LazyAreaEval;

    const-string v4, "["

    invoke-static {v3, v2, v4}, Landroidx/activity/result/a;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x21

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
