.class public Lorg/apache/poi/ss/formula/functions/TimeValue;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/TimeValue;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TimeValue;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private parseTimeFromDateTime(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/NumberEval;
    .locals 4

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseDateTime(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {p1}, Lorg/apache/poi/ss/util/DateParser;->parseLocalDate(Ljava/lang/String;)Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDate;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    const-string v0, "1/01/2000 "

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/TimeValue;->parseTimeFromDateTime(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/functions/TimeValue;->parseTimeFromDateTime(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/NumberEval;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    :try_start_3
    invoke-static {p1}, Lorg/apache/poi/ss/util/DateParser;->parseLocalDate(Ljava/lang/String;)Ljava/time/LocalDate;

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;
    :try_end_3
    .catch Ljava/time/DateTimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :goto_2
    sget-object p1, Lorg/apache/poi/ss/formula/functions/TimeValue;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->f()La5/b;

    move-result-object p1

    const-string p2, "Failed to parse date/time"

    invoke-interface {p1, p0, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
