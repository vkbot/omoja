.class public Lorg/apache/poi/ss/usermodel/DateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;
    }
.end annotation


# static fields
.field private static final BAD_DATE:I = -0x1

.field private static final BD_MILISEC_RND:Ljava/math/BigDecimal;

.field private static final BD_NANOSEC_DAY:Ljava/math/BigDecimal;

.field private static final BD_SECOND_RND:Ljava/math/BigDecimal;

.field public static final DAY_MILLISECONDS:J = 0x5265c00L

.field public static final HOURS_PER_DAY:I = 0x18

.field public static final MINUTES_PER_HOUR:I = 0x3c

.field public static final SECONDS_PER_DAY:I = 0x15180

.field public static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final dateTimeFormats:Ljava/time/format/DateTimeFormatter;

.field private static final date_ptrn1:Ljava/util/regex/Pattern;

.field private static final date_ptrn2:Ljava/util/regex/Pattern;

.field private static final date_ptrn3a:Ljava/util/regex/Pattern;

.field private static final date_ptrn3b:Ljava/util/regex/Pattern;

.field private static final date_ptrn4:Ljava/util/regex/Pattern;

.field private static final date_ptrn5:Ljava/util/regex/Pattern;

.field private static final lastCachedResult:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final lastFormatIndex:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final lastFormatString:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x42d3a52453c00000L    # 8.64E13

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->BD_NANOSEC_DAY:Ljava/math/BigDecimal;

    const-wide v0, 0x411e848000000000L    # 500000.0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->BD_MILISEC_RND:Ljava/math/BigDecimal;

    const-wide v0, 0x41bdcd6500000000L    # 5.0E8

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->BD_SECOND_RND:Ljava/math/BigDecimal;

    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\[\\$-.*?]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn1:Ljava/util/regex/Pattern;

    const-string v0, "^\\[[a-zA-Z]+]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn2:Ljava/util/regex/Pattern;

    const-string v0, "[yYmMdDhHsS]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3a:Ljava/util/regex/Pattern;

    const-string v0, "^[\\[\\]yYmMdDhHsS\\-T/\u5e74\u6708\u65e5,. :\"\\\\]+0*[ampAMP/]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3b:Ljava/util/regex/Pattern;

    const-string v0, "^\\[([hH]+|[mM]+|[sS]+)]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn4:Ljava/util/regex/Pattern;

    const-string v0, "^\\[DBNum([123])]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn5:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "[dd MMM[ yyyy]][[ ]h:m[:s][.SSS] a][[ ]H:m[:s][.SSS]]"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "[[yyyy ]dd-MMM[-yyyy]][[ ]h:m[:s][.SSS] a][[ ]H:m[:s][.SSS]]"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "[M/dd[/yyyy]][[ ]h:m[:s][.SSS] a][[ ]H:m[:s][.SSS]]"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "[[yyyy/]M/dd][[ ]h:m[:s][.SSS] a][[ ]H:m[:s][.SSS]]"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseDefaulting(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->dateTimeFormats:Ljava/time/format/DateTimeFormatter;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/g;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/apache/poi/ss/usermodel/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/util/ThreadLocalUtil;->registerCleaner(Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/ss/usermodel/DateUtil;->lambda$static$1()V

    return-void
.end method

.method private static absoluteDay(IIZ)I
    .locals 0

    .line 3
    invoke-static {p0, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->daysInPriorYears(IZ)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static absoluteDay(Ljava/time/LocalDateTime;Z)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result p0

    invoke-static {v0, p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->absoluteDay(IIZ)I

    move-result p0

    return p0
.end method

.method public static absoluteDay(Ljava/util/Calendar;Z)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {v0, p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->absoluteDay(IIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic b()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lorg/apache/poi/ss/usermodel/DateUtil;->lambda$static$0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static cache(Ljava/lang/String;IZ)V
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :goto_1
    const/4 p0, -0x1

    if-ne p1, p0, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_2
    sget-object p0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static convertTime(Ljava/lang/String;)D
    .locals 3

    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->convertTimeInternal(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/usermodel/DateUtil$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Bad time format \'"

    const-string v2, "\' expected \'HH:MM\' or \'HH:MM:SS\' - "

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertTimeInternal(Ljava/lang/String;)D
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->TIME_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    aget-object v0, p0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected 2 or 3 fields but got ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    const-string v2, ")"

    invoke-static {v1, p0, v2}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "00"

    :goto_0
    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    const-string v2, "hour"

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "minute"

    const/16 v3, 0x3c

    invoke-static {p0, v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const-string v2, "second"

    invoke-static {v0, v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-double v2, v0

    int-to-double v4, p0

    int-to-double v0, v1

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    const-wide v2, 0x40f5180000000000L    # 86400.0

    div-double/2addr v0, v2

    return-wide v0

    :cond_2
    new-instance p0, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    const-string v0, "Bad length"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static dayStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    return-object p0
.end method

.method public static daysInPriorYears(IZ)I
    .locals 5

    const/16 v0, 0x76c

    if-nez p1, :cond_0

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v1, 0x770

    if-eqz p1, :cond_2

    if-lt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'year\' must be 1900 or greater"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v3, v2, 0x4

    div-int/lit8 v4, v2, 0x64

    sub-int/2addr v3, v4

    div-int/lit16 v2, v2, 0x190

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x1cc

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x16d

    add-int/2addr p0, v2

    return p0
.end method

.method public static getExcelDate(Ljava/time/LocalDate;)D
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDate;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExcelDate(Ljava/time/LocalDate;Z)D
    .locals 7

    .line 2
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    .line 4
    invoke-static/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(IIIIIIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getExcelDate(Ljava/time/LocalDateTime;)D
    .locals 2

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/time/LocalDateTime;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExcelDate(Ljava/time/LocalDateTime;Z)D
    .locals 7

    .line 6
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v3

    .line 10
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v4

    .line 11
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result p0

    const v5, 0xf4240

    div-int v5, p0, v5

    move v6, p1

    .line 12
    invoke-static/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(IIIIIIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getExcelDate(Ljava/util/Calendar;Z)D
    .locals 8

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x6

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v0, 0xb

    .line 25
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v0, 0xc

    .line 26
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xd

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v0, 0xe

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move v7, p1

    .line 29
    invoke-static/range {v1 .. v7}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(IIIIIIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getExcelDate(Ljava/util/Date;)D
    .locals 2

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExcelDate(Ljava/util/Date;Z)D
    .locals 8

    .line 14
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 p0, 0x6

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 p0, 0xb

    .line 18
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 p0, 0xc

    .line 19
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 p0, 0xd

    .line 20
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 p0, 0xe

    .line 21
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move v7, p1

    .line 22
    invoke-static/range {v1 .. v7}, Lorg/apache/poi/ss/usermodel/DateUtil;->internalGetExcelDate(IIIIIIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getJavaCalendar(D)Ljava/util/Calendar;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaCalendar(DZ)Ljava/util/Calendar;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaCalendar(DZLjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;
    .locals 3

    .line 4
    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide v1, 0x4194997000000000L    # 8.64E7

    mul-double/2addr p0, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v1

    double-to-int p0, p0

    if-eqz p3, :cond_1

    .line 6
    invoke-static {p3}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object p1

    .line 8
    :goto_0
    invoke-static {p1, v0, p0, p2, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->setCalendar(Ljava/util/Calendar;IIZZ)V

    return-object p1
.end method

.method public static getJavaCalendarUTC(DZ)Ljava/util/Calendar;
    .locals 2

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(D)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(DLjava/util/TimeZone;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(DZ)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(DZLjava/util/TimeZone;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaDate(DZLjava/util/TimeZone;Z)Ljava/util/Date;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZLjava/util/TimeZone;Z)Ljava/util/Calendar;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLocalDateTime(D)Ljava/time/LocalDateTime;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getLocalDateTime(DZZ)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalDateTime(DZ)Ljava/time/LocalDateTime;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getLocalDateTime(DZZ)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalDateTime(DZZ)Ljava/time/LocalDateTime;
    .locals 5

    .line 3
    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    const/16 p2, 0x770

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 p2, 0x3d

    const/16 v2, 0x76c

    if-ge p1, p2, :cond_2

    move p2, v2

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    move v4, v2

    move v2, p2

    move p2, v4

    .line 6
    :goto_0
    invoke-static {p2, v1, v1, v0, v0}, Ljava/time/LocalDateTime;->of(IIIII)Ljava/time/LocalDateTime;

    move-result-object p2

    add-int/2addr v2, p1

    int-to-long v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 7
    invoke-virtual {p2, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p2

    int-to-long v0, p1

    .line 8
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/ss/usermodel/DateUtil;->BD_NANOSEC_DAY:Ljava/math/BigDecimal;

    .line 9
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    if-eqz p3, :cond_3

    sget-object p1, Lorg/apache/poi/ss/usermodel/DateUtil;->BD_SECOND_RND:Ljava/math/BigDecimal;

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/apache/poi/ss/usermodel/DateUtil;->BD_MILISEC_RND:Ljava/math/BigDecimal;

    .line 10
    :goto_1
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    .line 12
    invoke-virtual {p2, p0, p1}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object p0

    if-eqz p3, :cond_4

    .line 13
    sget-object p1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    goto :goto_2

    :cond_4
    sget-object p1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    :goto_2
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method private static internalGetExcelDate(IIIIIIZ)D
    .locals 4

    if-nez p6, :cond_0

    const/16 v0, 0x76c

    if-lt p0, v0, :cond_1

    :cond_0
    if-eqz p6, :cond_2

    const/16 v0, 0x770

    if-ge p0, v0, :cond_2

    :cond_1
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    :cond_2
    int-to-double v0, p2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    int-to-double p2, p3

    add-double/2addr v0, p2

    mul-double/2addr v0, v2

    int-to-double p2, p4

    add-double/2addr v0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p2

    int-to-double p2, p5

    add-double/2addr v0, p2

    const-wide p2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, p2

    invoke-static {p0, p1, p6}, Lorg/apache/poi/ss/usermodel/DateUtil;->absoluteDay(IIZ)I

    move-result p0

    int-to-double p0, p0

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    if-nez p6, :cond_3

    cmpl-double p2, v0, v2

    if-ltz p2, :cond_3

    add-double/2addr v0, p0

    goto :goto_0

    :cond_3
    if-eqz p6, :cond_4

    sub-double/2addr v0, p0

    :cond_4
    :goto_0
    return-wide v0
.end method

.method public static isADateFormat(ILjava/lang/String;)Z
    .locals 10

    .line 2
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isInternalDateFormat(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, p0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    invoke-static {p1, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCached(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    .line 6
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v0

    :goto_0
    const/16 v5, 0x3b

    if-ge v4, v2, :cond_6

    .line 9
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v2, -0x1

    if-ge v4, v7, :cond_4

    add-int/lit8 v7, v4, 0x1

    .line 10
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v6, v9, :cond_3

    const/16 v5, 0x20

    if-eq v8, v5, :cond_5

    if-eq v8, v9, :cond_5

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :cond_3
    if-ne v6, v5, :cond_4

    const/16 v5, 0x40

    if-ne v8, v5, :cond_4

    move v4, v7

    goto :goto_2

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    :pswitch_0
    add-int/2addr v4, v1

    goto :goto_0

    .line 12
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn4:Ljava/util/regex/Pattern;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 14
    invoke-static {p1, p0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    return v1

    :cond_7
    sget-object v3, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn5:Ljava/util/regex/Pattern;

    .line 15
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn1:Ljava/util/regex/Pattern;

    .line 16
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn2:Ljava/util/regex/Pattern;

    .line 17
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_8

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_8

    .line 20
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_8
    sget-object v1, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3a:Ljava/util/regex/Pattern;

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    :cond_9
    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->date_ptrn3b:Ljava/util/regex/Pattern;

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 23
    invoke-static {p1, p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->cache(Ljava/lang/String;IZ)V

    :cond_a
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isADateFormat(Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getIdx()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isCached(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Z

    move-result p0

    return p0
.end method

.method public static isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    .line 3
    invoke-static {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->from(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public static isCellInternalDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isInternalDateFormat(I)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static isInternalDateFormat(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidExcelDate(D)Z
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$static$0()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$1()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatIndex:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastFormatString:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->lastCachedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static parseDateTime(Ljava/lang/String;)Ljava/lang/Double;
    .locals 7

    sget-object v0, Lorg/apache/poi/ss/usermodel/DateUtil;->dateTimeFormats:Ljava/time/format/DateTimeFormatter;

    const-string v1, "\\s+"

    const-string v2, " "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalTime;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/LocalDate;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p0

    int-to-double v3, p0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    const-wide v5, 0x40f5180000000000L    # 86400.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, p2, :cond_0

    if-gt p0, p3, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance p2, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is outside the allowable range(0.."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :catch_0
    new-instance p2, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Bad int format \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " field"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static parseYYYYMMDDDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseYYYYMMDDDateInternal(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/usermodel/DateUtil$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Bad time format "

    const-string v2, " expected \'YYYY/MM/DD\' - "

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseYYYYMMDDDateInternal(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x8000

    const/16 v3, 0x7fff

    const-string v4, "year"

    invoke-static {v0, v4, v1, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "month"

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-static {v2, v1, v4, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "day"

    const/16 v3, 0x1f

    invoke-static {p0, v2, v4, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->parseInt(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    sub-int/2addr v1, v4

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(III)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;

    const-string v0, "Bad length"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DateUtil$FormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setCalendar(Ljava/util/Calendar;IIZZ)V
    .locals 8

    if-eqz p3, :cond_0

    const/16 p3, 0x770

    const/4 v0, 0x1

    move v2, p3

    goto :goto_1

    :cond_0
    const/16 p3, 0x3d

    const/16 v0, 0x76c

    if-ge p1, p3, :cond_1

    const/4 p3, 0x0

    :goto_0
    move v2, v0

    move v0, p3

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    add-int v4, p1, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->clear(I)V

    :cond_2
    if-eqz p4, :cond_3

    const/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->clear(I)V

    :cond_3
    return-void
.end method

.method public static toLocalDateTime(Ljava/util/Calendar;)Ljava/time/LocalDateTime;
    .locals 1

    .line 4
    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 5
    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static toLocalDateTime(Ljava/util/Date;)Ljava/time/LocalDateTime;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 2
    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method
