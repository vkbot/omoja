.class public abstract Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;,
        Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;,
        Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_NUM_OPERANDS:I


# instance fields
.field private blankConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "Lorg/apache/poi/ss/formula/eval/BlankEval;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation
.end field

.field private boolByRefConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "Lorg/apache/poi/ss/formula/eval/BoolEval;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation
.end field

.field private boolByValueConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "Lorg/apache/poi/ss/formula/eval/BoolEval;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation
.end field

.field private missingArgConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer<",
            "Lorg/apache/poi/ss/formula/eval/MissingArgEval;",
            "Lorg/apache/poi/ss/formula/functions/DoubleList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxFunctionArgs()I

    move-result v0

    sput v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->DEFAULT_MAX_NUM_OPERANDS:I

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;->SKIP:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->createForMissingArg(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->missingArgConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;->COERCE:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->createForBoolEval(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->boolByRefConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    sget-object p1, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;->COERCE:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->createForBoolEval(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->boolByValueConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    if-eqz p2, :cond_1

    move-object v0, p1

    :cond_1
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->createForBlank(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->blankConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    return-void
.end method

.method private collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 1

    if-eqz p1, :cond_a

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->boolByRefConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    invoke-interface {p0, p1, p3}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->boolByValueConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    invoke-interface {p0, p1, p3}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    return-void

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->treatStringsAsZero()Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide/16 p0, 0x0

    invoke-virtual {p3, p0, p1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    goto :goto_1

    :cond_4
    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lorg/apache/poi/ss/formula/functions/DoubleList;->add(D)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_6
    instance-of p2, p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez p2, :cond_9

    sget-object p2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p1, p2, :cond_7

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->blankConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    invoke-interface {p0, p1, p3}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    sget-object p2, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne p1, p2, :cond_8

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->missingArgConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    invoke-interface {p0, p1, p3}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid ValueEval type passed for conversion: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ve must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V
    .locals 8

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ThreeDEval;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/poi/ss/formula/ThreeDEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getFirstSheetIndex()I

    move-result v0

    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getLastSheetIndex()I

    move-result v2

    if-gt v0, v2, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    move v5, v1

    :goto_2
    if-ge v5, v2, :cond_2

    invoke-interface {p1, v0, v4, v5}, Lorg/apache/poi/ss/formula/ThreeDEval;->getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->isSubtotalCounted()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {p1, v4, v5}, Lorg/apache/poi/ss/formula/TwoDEval;->isSubTotal(II)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->isHiddenRowCounted()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {p1, v4}, Lorg/apache/poi/ss/formula/TwoDEval;->isRowHidden(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->treatStringsAsZero()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v6, v7, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/DoubleList;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    instance-of v0, p1, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v2

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_8

    move v4, v1

    :goto_5
    if-ge v4, v0, :cond_7

    invoke-interface {p1, v3, v4}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->isSubtotalCounted()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {p1, v3, v4}, Lorg/apache/poi/ss/formula/TwoDEval;->isSubTotal(II)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->treatStringsAsZero()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v5, v6, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/DoubleList;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    return-void

    :cond_9
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v0

    :goto_7
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v1

    if-gt v0, v1, :cond_a

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->treatStringsAsZero()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/DoubleList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    invoke-direct {p0, p1, v1, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/DoubleList;)V

    return-void
.end method


# virtual methods
.method public abstract evaluate([D)D
.end method

.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->getNumberArray([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->evaluate([D)D

    move-result-wide p0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public getMaxNumOperands()I
    .locals 0

    sget p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->DEFAULT_MAX_NUM_OPERANDS:I

    return p0
.end method

.method public final getNumberArray([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 4

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->getMaxNumOperands()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/DoubleList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-direct {p0, v3, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/DoubleList;->toArray()[D

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0
.end method

.method public isHiddenRowCounted()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSubtotalCounted()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setBlankEvalPolicy(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->createForBlank(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->blankConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    return-void
.end method

.method public setMissingArgPolicy(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->createForMissingArg(Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$Policy;)Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->missingArgConsumer:Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;

    return-void
.end method

.method public treatStringsAsZero()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
