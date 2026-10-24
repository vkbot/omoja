.class public final Lorg/apache/poi/ss/formula/LazyRefEval;
.super Lorg/apache/poi/ss/formula/eval/RefEvalBase;
.source "SourceFile"


# instance fields
.field private final _evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;


# direct methods
.method public constructor <init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;II)V

    iput-object p3, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    return-void
.end method


# virtual methods
.method public getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getColumn()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getEvalForCell(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public isRowHidden()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getFirstSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getRow()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->isRowHidden(I)Z

    move-result p0

    return p0
.end method

.method public isSubTotal()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getFirstSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getColumn()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->isSubTotal(II)Z

    move-result p0

    return p0
.end method

.method public offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 8

    new-instance v7, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getColumn()I

    move-result v2

    move-object v0, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;-><init>(IIIIII)V

    new-instance p1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    iget-object p0, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {p1, v7, p0}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getColumn()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/apache/poi/ss/formula/LazyRefEval;

    const-string v3, "["

    invoke-static {v2, v1, v3}, Landroidx/activity/result/a;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x21

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
