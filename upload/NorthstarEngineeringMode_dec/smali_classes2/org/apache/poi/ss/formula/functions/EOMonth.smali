.class public Lorg/apache/poi/ss/formula/functions/EOMonth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/EOMonth;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/EOMonth;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/EOMonth;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    array-length p0, p1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    aget-object v1, p1, p0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    invoke-static {p1, v4, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    double-to-int p1, p1

    const-wide/16 v4, 0x0

    cmpl-double p2, v1, v4

    if-ltz p2, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v1, v4

    if-gez p2, :cond_1

    move-wide v1, v4

    :cond_1
    invoke-static {v1, v2, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p2

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p2, 0xa

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->clear(I)V

    const/16 p2, 0xb

    invoke-virtual {v1, p2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->clear(I)V

    const/16 p0, 0xd

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->clear(I)V

    const/16 p0, 0xe

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->clear(I)V

    add-int/2addr p1, v3

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p0, 0x5

    invoke-virtual {v1, p0, v3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, -0x1

    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method
