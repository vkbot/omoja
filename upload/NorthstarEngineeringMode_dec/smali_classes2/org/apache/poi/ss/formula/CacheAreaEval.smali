.class public final Lorg/apache/poi/ss/formula/CacheAreaEval;
.super Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
.source "SourceFile"


# instance fields
.field private final _values:[Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(IIII)V

    iput-object p5, p0, Lorg/apache/poi/ss/formula/CacheAreaEval;->_values:[Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaI;[Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;)V

    iput-object p2, p0, Lorg/apache/poi/ss/formula/CacheAreaEval;->_values:[Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-void
.end method


# virtual methods
.method public getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v0

    add-int v5, v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getHeight()I

    move-result v0

    new-array v6, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lorg/apache/poi/ss/formula/CacheAreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/formula/CacheAreaEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastRow()I

    move-result v4

    move-object v1, p1

    move v3, v5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid columnIndex "

    const-string v2, ".  Allowable range is (0.."

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

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

.method public getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/CacheAreaEval;->getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getWidth()I

    move-result p1

    mul-int/2addr p1, p2

    add-int/2addr p1, p3

    iget-object p0, p0, Lorg/apache/poi/ss/formula/CacheAreaEval;->_values:[Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 3
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v0

    add-int v4, v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getWidth()I

    move-result v0

    new-array v6, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/ss/formula/CacheAreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/formula/CacheAreaEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastColumn()I

    move-result v5

    move-object v1, p1

    move v2, v4

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(IIII[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rowIndex "

    const-string v2, ".  Allowable range is (0.."

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

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

.method public offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 9

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

    invoke-interface {v7}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getLastRow()I

    move-result p1

    invoke-interface {v7}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getFirstRow()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v7}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getLastColumn()I

    move-result p2

    invoke-interface {v7}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getFirstColumn()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    mul-int p3, p1, p2

    new-array p3, p3, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-interface {v7}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getFirstRow()I

    move-result p4

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-interface {v7}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getFirstColumn()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_2

    add-int v4, p4, v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastRow()I

    move-result v5

    if-gt v4, v5, :cond_1

    add-int v5, v0, v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastColumn()I

    move-result v6

    if-le v5, v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lorg/apache/poi/ss/formula/CacheAreaEval;->_values:[Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getWidth()I

    move-result v8

    mul-int/2addr v8, v4

    add-int/2addr v8, v5

    aget-object v4, v6, v8

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v4, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    :goto_3
    mul-int v5, v2, p2

    add-int/2addr v5, v3

    aput-object v4, p3, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/apache/poi/ss/formula/CacheAreaEval;

    invoke-direct {p0, v7, p3}, Lorg/apache/poi/ss/formula/CacheAreaEval;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;[Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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

    move-result p0

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/apache/poi/ss/formula/CacheAreaEval;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
