.class public abstract Lorg/apache/poi/ss/formula/functions/TextFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;,
        Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;,
        Lorg/apache/poi/ss/formula/functions/TextFunction$SingleArgTextFunc;
    }
.end annotation


# static fields
.field public static final CHAR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final CLEAN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final CONCAT:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

.field public static final CONCATENATE:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final EXACT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final FIND:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LEFT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LEN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LOWER:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MID:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PROPER:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final RIGHT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SEARCH:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TEXT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TRIM:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final UPPER:Lorg/apache/poi/ss/formula/functions/Function;

.field protected static final formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->CHAR:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->LEN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->LOWER:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->UPPER:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$5;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$5;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->PROPER:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$6;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$6;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->TRIM:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$7;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$7;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->CLEAN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$8;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$8;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->MID:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->LEFT:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->RIGHT:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->CONCAT:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/d;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/formula/functions/d;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->CONCATENATE:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$9;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$9;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->EXACT:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$10;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$10;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->TEXT:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->FIND:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->SEARCH:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->lambda$static$1([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/TextFunction;->lambda$static$0([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public static evaluateDoubleArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p0

    return p0
.end method

.method public static evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    :try_start_0
    instance-of v5, v4, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/apache/poi/ss/formula/eval/AreaEval;

    move v5, v2

    :goto_1
    invoke-interface {v4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    move v6, v2

    :goto_2
    invoke-interface {v4}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {v4, v5, v6}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v9

    invoke-static {v7, v8, v9}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static synthetic lambda$static$1([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    :try_start_0
    invoke-static {v3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateFunc([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public abstract evaluateFunc([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method
