.class public Lorg/apache/poi/ss/formula/functions/WeekNum;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field private static final DEFAULT_RETURN_TYPE:Lorg/apache/poi/ss/formula/eval/NumberEval;

.field private static final VALID_RETURN_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private FRIDAY_START:Ljava/time/temporal/WeekFields;

.field private MONDAY_START:Ljava/time/temporal/WeekFields;

.field private SATURDAY_START:Ljava/time/temporal/WeekFields;

.field private SUNDAY_START:Ljava/time/temporal/WeekFields;

.field private THURSDAY_START:Ljava/time/temporal/WeekFields;

.field private TUESDAY_START:Ljava/time/temporal/WeekFields;

.field private WEDNESDAY_START:Ljava/time/temporal/WeekFields;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/formula/functions/WeekNum;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/WeekNum;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/WeekNum;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/WeekNum;->DEFAULT_RETURN_TYPE:Lorg/apache/poi/ss/formula/eval/NumberEval;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/WeekNum;->VALID_RETURN_TYPES:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    sget-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->SUNDAY_START:Ljava/time/temporal/WeekFields;

    sget-object v0, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->MONDAY_START:Ljava/time/temporal/WeekFields;

    sget-object v0, Ljava/time/DayOfWeek;->TUESDAY:Ljava/time/DayOfWeek;

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->TUESDAY_START:Ljava/time/temporal/WeekFields;

    sget-object v0, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->WEDNESDAY_START:Ljava/time/temporal/WeekFields;

    sget-object v0, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->THURSDAY_START:Ljava/time/temporal/WeekFields;

    sget-object v0, Ljava/time/DayOfWeek;->FRIDAY:Ljava/time/DayOfWeek;

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->FRIDAY_START:Ljava/time/temporal/WeekFields;

    sget-object v0, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->SATURDAY_START:Ljava/time/temporal/WeekFields;

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p3, 0x0

    .line 2
    :try_start_1
    invoke-static {v0, v1, p3}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p3

    .line 4
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :try_start_2
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    .line 7
    instance-of p2, p1, Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eqz p2, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/functions/WeekNum;->DEFAULT_RETURN_TYPE:Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide p1

    double-to-int p1, p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p1
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    sget-object p2, Lorg/apache/poi/ss/formula/functions/WeekNum;->VALID_RETURN_TYPES:Ljava/util/HashSet;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 12
    :cond_1
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0, p3, p1}, Lorg/apache/poi/ss/formula/functions/WeekNum;->getWeekNo(Ljava/time/LocalDate;I)I

    move-result p0

    int-to-double p0, p0

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    .line 13
    :catch_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 14
    :catch_1
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 15
    :catch_2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 17
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    aget-object p1, p1, v1

    sget-object v1, Lorg/apache/poi/ss/formula/functions/WeekNum;->DEFAULT_RETURN_TYPE:Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0, v0, p2, p1, v1}, Lorg/apache/poi/ss/formula/functions/WeekNum;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 19
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    aget-object v1, p1, v1

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, p2, v1, p1}, Lorg/apache/poi/ss/formula/functions/WeekNum;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 20
    :cond_1
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method

.method public getWeekNo(Ljava/time/LocalDate;I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_8

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->TUESDAY_START:Ljava/time/temporal/WeekFields;

    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0xd

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->WEDNESDAY_START:Ljava/time/temporal/WeekFields;

    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0

    :cond_3
    const/16 v0, 0xe

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->THURSDAY_START:Ljava/time/temporal/WeekFields;

    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0

    :cond_4
    const/16 v0, 0xf

    if-ne p2, v0, :cond_5

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->FRIDAY_START:Ljava/time/temporal/WeekFields;

    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0

    :cond_5
    const/16 v0, 0x10

    if-ne p2, v0, :cond_6

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->SATURDAY_START:Ljava/time/temporal/WeekFields;

    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0

    :cond_6
    sget-object p0, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0

    :cond_7
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->MONDAY_START:Ljava/time/temporal/WeekFields;

    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0

    :cond_8
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/WeekNum;->SUNDAY_START:Ljava/time/temporal/WeekFields;

    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0
.end method
