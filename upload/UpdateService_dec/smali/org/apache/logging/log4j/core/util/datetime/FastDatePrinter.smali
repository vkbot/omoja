.class public Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/datetime/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNameRule;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$WeekYear;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$DayInWeekField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwentyFourHourField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwelveHourField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitNumberField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedNumberField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$StringLiteral;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$CharacterLiteral;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field private static final MAX_DIGITS:I = 0xa

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1281
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pattern",
            "timeZone",
            "locale"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 157
    iput-object p3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 159
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->init()V

    .line 160
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Appendable;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Appendable;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->appendDigits(Ljava/lang/Appendable;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Appendable;II)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Appendable;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->appendFullDigits(Ljava/lang/Appendable;II)V

    return-void
.end method

.method private static appendDigits(Ljava/lang/Appendable;I)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/Appendable;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 657
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 658
    return-void
.end method

.method private static appendFullDigits(Ljava/lang/Appendable;II)V
    .locals 5
    .param p0, "buffer"    # Ljava/lang/Appendable;
    .param p1, "value"    # I
    .param p2, "minFieldWidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "value",
            "minFieldWidth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    const/16 v0, 0xa

    const/16 v1, 0x30

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_8

    .line 674
    const/4 v2, 0x4

    .line 675
    .local v2, "nDigits":I
    const/16 v3, 0x3e8

    const/16 v4, 0x64

    if-ge p1, v3, :cond_0

    .line 676
    add-int/lit8 v2, v2, -0x1

    .line 677
    if-ge p1, v4, :cond_0

    .line 678
    add-int/lit8 v2, v2, -0x1

    .line 679
    if-ge p1, v0, :cond_0

    .line 680
    add-int/lit8 v2, v2, -0x1

    .line 685
    :cond_0
    sub-int v3, p2, v2

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_1

    .line 686
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 685
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 689
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    goto :goto_3

    .line 691
    :cond_2
    div-int/lit16 v3, p1, 0x3e8

    add-int/2addr v3, v1

    int-to-char v3, v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 692
    rem-int/lit16 p1, p1, 0x3e8

    .line 694
    :cond_3
    if-lt p1, v4, :cond_4

    .line 695
    div-int/lit8 v3, p1, 0x64

    add-int/2addr v3, v1

    int-to-char v3, v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 696
    rem-int/lit8 p1, p1, 0x64

    goto :goto_1

    .line 698
    :cond_4
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 701
    :cond_5
    :goto_1
    if-lt p1, v0, :cond_6

    .line 702
    div-int/lit8 v0, p1, 0xa

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 703
    rem-int/lit8 p1, p1, 0xa

    goto :goto_2

    .line 705
    :cond_6
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 708
    :cond_7
    :goto_2
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 710
    .end local v2    # "nDigits":I
    :goto_3
    goto :goto_7

    .line 714
    :cond_8
    new-array v0, v0, [C

    .line 715
    .local v0, "work":[C
    const/4 v2, 0x0

    .line 716
    .local v2, "digit":I
    :goto_4
    if-eqz p1, :cond_9

    .line 717
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "digit":I
    .local v3, "digit":I
    rem-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v1

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 718
    div-int/lit8 p1, p1, 0xa

    move v2, v3

    goto :goto_4

    .line 722
    .end local v3    # "digit":I
    .restart local v2    # "digit":I
    :cond_9
    :goto_5
    if-ge v2, p2, :cond_a

    .line 723
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 724
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 728
    :cond_a
    :goto_6
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_b

    .line 729
    aget-char v1, v0, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_6

    .line 732
    .end local v0    # "work":[C
    .end local v2    # "digit":I
    :cond_b
    :goto_7
    return-void
.end method

.method private applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "calendar",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 547
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mRules:[Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 548
    .local v3, "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    invoke-interface {v3, p2, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;->appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v3    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_0
    goto :goto_1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Throwables;->rethrow(Ljava/lang/Throwable;)V

    .line 553
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    return-object p2
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "tz",
            "daylight",
            "style",
            "locale"
        }
    .end annotation

    .line 1293
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 1294
    .local v0, "key":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneDisplayKey;
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1295
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1297
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1298
    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1299
    .local v2, "prior":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1300
    move-object v1, v2

    .line 1303
    .end local v2    # "prior":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private init()V
    .locals 4

    .line 166
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->parsePattern()Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "rulesList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;>;"
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;

    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mRules:[Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;

    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, "len":I
    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 171
    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mRules:[Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_0
    iput v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mMaxLengthEstimate:I

    .line 175
    return-void
.end method

.method private newCalendar()Ljava/util/Calendar;
    .locals 2

    .line 467
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 645
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 646
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->init()V

    .line 647
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "calendar",
            "buf"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 605
    instance-of v0, p1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 606
    return v1

    .line 608
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;

    .line 609
    .local v0, "other":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 610
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 611
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 609
    :goto_0
    return v1
.end method

.method public format(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "millis",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(JTB;)TB;"
        }
    .end annotation

    .line 493
    .local p3, "buf":Ljava/lang/Appendable;, "TB;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 494
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 495
    invoke-direct {p0, v0, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "calendar",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation

    .line 514
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/util/Calendar;

    .line 516
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 518
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "date",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Date;",
            "TB;)TB;"
        }
    .end annotation

    .line 503
    .local p2, "buf":Ljava/lang/Appendable;, "TB;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 504
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 505
    invoke-direct {p0, v0, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    return-object v1
.end method

.method public format(J)Ljava/lang/String;
    .locals 2
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "millis"
        }
    .end annotation

    .line 448
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 449
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 450
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 431
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 432
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 433
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 434
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 435
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 436
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string v2, "<null>"

    goto :goto_0

    .line 439
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "calendar"
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "date"
        }
    .end annotation

    .line 475
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->newCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 476
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 477
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "obj",
            "toAppendTo",
            "pos"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 412
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0

    .line 413
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 414
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0

    .line 415
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 416
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->format(JLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0

    .line 418
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string v2, "<null>"

    goto :goto_0

    .line 419
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 579
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .line 592
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 571
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 621
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    .line 186
    move-object/from16 v0, p0

    new-instance v1, Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 187
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v2, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;>;"
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "ERAs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "months":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "shortMonths":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "weekdays":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "shortWeekdays":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "AmPmStrings":[Ljava/lang/String;
    iget-object v9, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 197
    .local v9, "length":I
    const/4 v10, 0x1

    new-array v11, v10, [I

    .line 199
    .local v11, "indexRef":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v9, :cond_e

    .line 200
    const/4 v13, 0x0

    aput v12, v11, v13

    .line 201
    iget-object v14, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v14, v11}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v14

    .line 202
    .local v14, "token":Ljava/lang/String;
    aget v12, v11, v13

    .line 204
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 205
    .local v15, "tokenLen":I
    if-nez v15, :cond_0

    .line 206
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_6

    .line 210
    :cond_0
    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 212
    .local v10, "c":C
    const/16 v13, 0x79

    move-object/from16 v16, v1

    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .local v16, "symbols":Ljava/text/DateFormatSymbols;
    const/4 v1, 0x4

    if-eq v10, v13, :cond_a

    const/16 v13, 0x7a

    if-eq v10, v13, :cond_8

    const/4 v13, 0x7

    sparse-switch v10, :sswitch_data_0

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    .line 311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .local v18, "weekdays":[Ljava/lang/String;
    const-string v6, "Illegal pattern component: "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :pswitch_0
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v15, v1, :cond_1

    .line 295
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .local v1, "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    goto/16 :goto_5

    .line 296
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    :cond_1
    const/4 v1, 0x2

    if-ne v15, v1, :cond_2

    .line 297
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    goto/16 :goto_5

    .line 299
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    :cond_2
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;

    .line 301
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 212
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :pswitch_1
    move-object/from16 v18, v6

    move-object/from16 v17, v3

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    goto/16 :goto_2

    .line 284
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :pswitch_2
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    invoke-static {v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->getRule(I)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    move-result-object v1

    .line 285
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 272
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 273
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 245
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :pswitch_4
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 246
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 214
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :pswitch_5
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 215
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 266
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :pswitch_6
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 267
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 257
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :pswitch_7
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    new-instance v6, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;

    if-ge v15, v1, :cond_3

    move-object v1, v7

    goto :goto_1

    :cond_3
    move-object/from16 v1, v18

    :goto_1
    invoke-direct {v6, v13, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v1, v6

    .line 258
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 263
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :pswitch_8
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 264
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 269
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_0
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 270
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 260
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$DayInWeekField;

    invoke-virtual {v0, v13, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$DayInWeekField;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;)V

    .line 261
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 251
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 252
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 248
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 249
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 278
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_4
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwentyFourHourField;

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;)V

    .line 279
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 242
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_5
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwelveHourField;

    const/16 v6, 0xa

    invoke-virtual {v0, v6, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwelveHourField;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;)V

    .line 243
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 239
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_6
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 240
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 275
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_7
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;

    const/16 v6, 0x9

    invoke-direct {v1, v6, v8}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 276
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 254
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_8
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 255
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 228
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_9
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    if-lt v15, v1, :cond_4

    .line 229
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;

    const/4 v6, 0x2

    invoke-direct {v1, v6, v4}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    goto/16 :goto_5

    .line 230
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    :cond_4
    const/4 v6, 0x2

    const/4 v1, 0x3

    if-ne v15, v1, :cond_5

    .line 231
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;

    invoke-direct {v1, v6, v5}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    goto/16 :goto_5

    .line 232
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    :cond_5
    if-ne v15, v6, :cond_6

    .line 233
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    goto/16 :goto_5

    .line 235
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    :cond_6
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;

    .line 237
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 281
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_a
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v15}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 282
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto/16 :goto_5

    .line 303
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :sswitch_b
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "sub":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v13, v1, :cond_7

    .line 305
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$CharacterLiteral;

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-direct {v1, v13}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$CharacterLiteral;-><init>(C)V

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    goto :goto_5

    .line 307
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    :cond_7
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$StringLiteral;

    invoke-direct {v1, v6}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto :goto_5

    .line 287
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .local v6, "weekdays":[Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v6

    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    if-lt v15, v1, :cond_9

    .line 288
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNameRule;

    iget-object v6, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v13, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v3

    const/4 v3, 0x1

    .end local v3    # "ERAs":[Ljava/lang/String;
    .local v17, "ERAs":[Ljava/lang/String;
    invoke-direct {v1, v6, v13, v3}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    const/4 v3, 0x1

    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    goto :goto_5

    .line 290
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v17    # "ERAs":[Ljava/lang/String;
    .restart local v3    # "ERAs":[Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v3

    .end local v3    # "ERAs":[Ljava/lang/String;
    .restart local v17    # "ERAs":[Ljava/lang/String;
    new-instance v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNameRule;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v6, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    const/4 v13, 0x0

    invoke-direct {v1, v3, v6, v13}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 292
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    const/4 v3, 0x1

    goto :goto_5

    .line 212
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v17    # "ERAs":[Ljava/lang/String;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .restart local v3    # "ERAs":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 218
    .end local v3    # "ERAs":[Ljava/lang/String;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .restart local v17    # "ERAs":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    :goto_2
    const/4 v3, 0x2

    if-ne v15, v3, :cond_b

    .line 219
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;

    const/4 v3, 0x1

    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    goto :goto_4

    .line 221
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    :cond_b
    if-ge v15, v1, :cond_c

    goto :goto_3

    :cond_c
    move v1, v15

    :goto_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    move-result-object v1

    .line 223
    .restart local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    :goto_4
    const/16 v6, 0x59

    if-ne v10, v6, :cond_d

    .line 224
    new-instance v6, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$WeekYear;

    move-object v13, v1

    check-cast v13, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    invoke-direct {v6, v13}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$WeekYear;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;)V

    move-object v1, v6

    .line 314
    :cond_d
    :goto_5
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v1    # "rule":Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;
    .end local v10    # "c":C
    .end local v14    # "token":Ljava/lang/String;
    .end local v15    # "tokenLen":I
    add-int/lit8 v12, v12, 0x1

    move v10, v3

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto/16 :goto_0

    .end local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v17    # "ERAs":[Ljava/lang/String;
    .end local v18    # "weekdays":[Ljava/lang/String;
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    .restart local v3    # "ERAs":[Ljava/lang/String;
    .restart local v6    # "weekdays":[Ljava/lang/String;
    :cond_e
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 317
    .end local v1    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v3    # "ERAs":[Ljava/lang/String;
    .end local v6    # "weekdays":[Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v16    # "symbols":Ljava/text/DateFormatSymbols;
    .restart local v17    # "ERAs":[Ljava/lang/String;
    .restart local v18    # "weekdays":[Ljava/lang/String;
    :goto_6
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_b
        0x4b -> :sswitch_a
        0x4d -> :sswitch_9
        0x53 -> :sswitch_8
        0x61 -> :sswitch_7
        0x64 -> :sswitch_6
        0x68 -> :sswitch_5
        0x6b -> :sswitch_4
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x75 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "indexRef"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pattern",
            "indexRef"
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v2, p2, v1

    .line 331
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 333
    .local v3, "length":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 334
    .local v4, "c":C
    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v4, v6, :cond_0

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v7, 0x7a

    const/16 v8, 0x61

    if-lt v4, v8, :cond_2

    if-gt v4, v7, :cond_2

    .line 337
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_9

    .line 340
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 341
    .local v5, "peek":C
    if-ne v5, v4, :cond_9

    .line 342
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    nop

    .end local v5    # "peek":C
    add-int/lit8 v2, v2, 0x1

    .line 347
    goto :goto_0

    .line 350
    :cond_2
    const/16 v9, 0x27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    const/4 v10, 0x0

    .line 354
    .local v10, "inLiteral":Z
    :goto_1
    if-ge v2, v3, :cond_9

    .line 355
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 357
    const/4 v11, 0x1

    if-ne v4, v9, :cond_5

    .line 358
    add-int/lit8 v12, v2, 0x1

    if-ge v12, v3, :cond_3

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v9, :cond_3

    .line 360
    add-int/lit8 v2, v2, 0x1

    .line 361
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 363
    :cond_3
    if-nez v10, :cond_4

    move v12, v11

    goto :goto_2

    :cond_4
    move v12, v1

    :goto_2
    move v10, v12

    goto :goto_3

    .line 365
    :cond_5
    if-nez v10, :cond_8

    if-lt v4, v6, :cond_6

    if-le v4, v5, :cond_7

    :cond_6
    if-lt v4, v8, :cond_8

    if-gt v4, v7, :cond_8

    .line 367
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 368
    goto :goto_4

    .line 370
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :goto_3
    add-int/2addr v2, v11

    goto :goto_1

    .line 375
    .end local v10    # "inLiteral":Z
    :cond_9
    :goto_4
    aput v2, p2, v1

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected selectNumberRule(II)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;
    .locals 1
    .param p1, "field"    # I
    .param p2, "padding"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "padding"
        }
    .end annotation

    .line 387
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 393
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;-><init>(II)V

    return-object v0

    .line 391
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    return-object v0

    .line 389
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDatePrinter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
