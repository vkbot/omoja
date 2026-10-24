.class final Lorg/apache/poi/ss/formula/functions/TextFunction$10;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method

.method private formatPatternValueEval2String(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;
    .locals 2

    instance-of p0, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-nez p0, :cond_0

    instance-of p0, p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p1, p0, :cond_1

    const-string p0, ""

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected eval class ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p3

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object p2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :goto_0
    move-object v0, p4

    move-object p4, p2

    move-object p2, v0

    goto :goto_1

    :cond_0
    instance-of p2, p3, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz p2, :cond_1

    check-cast p3, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p3}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getStringValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    instance-of p2, p3, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz p2, :cond_2

    check-cast p3, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    :cond_2
    instance-of p2, p3, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz p2, :cond_4

    check-cast p3, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p3}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p3, :cond_3

    :try_start_2
    invoke-static {p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseDateTime(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    move-object p4, p3

    goto :goto_1

    :cond_4
    move-object p2, p4

    :catch_0
    :goto_1
    if-eqz p4, :cond_5

    :try_start_3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/TextFunction$10;->formatPatternValueEval2String(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/ss/formula/functions/TextFunction;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    const/4 p4, -0x1

    invoke-virtual {p1, p2, p3, p4, p0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_5
    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    :try_start_4
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_4
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    :goto_2
    return-object p0
.end method
