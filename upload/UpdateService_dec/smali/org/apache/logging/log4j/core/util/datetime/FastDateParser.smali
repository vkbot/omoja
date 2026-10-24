.class public Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.super Ljava/lang/Object;
.source "FastDateParser.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/datetime/DateParser;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CopyQuotedStrategy;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyParser;,
        Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;
    }
.end annotation


# static fields
.field private static final ABBREVIATED_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final DAY_OF_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final DAY_OF_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final HOUR12_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final HOUR24_OF_DAY_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final HOUR_OF_DAY_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final HOUR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field static final JAPANESE_IMPERIAL:Ljava/util/Locale;

.field private static final LITERAL_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MILLISECOND_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final MINUTE_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final NUMBER_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final SECOND_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final WEEK_OF_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final WEEK_OF_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

.field private static final caches:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private final century:I

.field private final locale:Ljava/util/Locale;

.field private final pattern:Ljava/lang/String;

.field private transient patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;",
            ">;"
        }
    .end annotation
.end field

.field private final startYear:I

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 88
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    .line 103
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/-$$Lambda$FastDateParser$eOoSEwJlisju5VmmlzOdAgMETpg;->INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/-$$Lambda$FastDateParser$eOoSEwJlisju5VmmlzOdAgMETpg;

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;

    .line 610
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    .line 799
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 954
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$2;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$2;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 960
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 961
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 962
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 963
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 964
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 965
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$3;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$3;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->DAY_OF_WEEK_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 971
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 972
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 973
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$4;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$4;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->HOUR24_OF_DAY_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 979
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$5;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$5;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->HOUR12_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 985
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->HOUR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 986
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->MINUTE_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 987
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->SECOND_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 988
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->MILLISECOND_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
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

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "centuryStart"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pattern",
            "timeZone",
            "locale",
            "centuryStart"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->pattern:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 134
    iput-object p3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    .line 136
    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 139
    .local v0, "definingCalendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    if-eqz p4, :cond_0

    .line 140
    invoke-virtual {v0, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, "centuryStartYear":I
    goto :goto_0

    .line 143
    .end local v1    # "centuryStartYear":I
    :cond_0
    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {p3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    const/4 v1, 0x0

    .restart local v1    # "centuryStartYear":I
    goto :goto_0

    .line 148
    .end local v1    # "centuryStartYear":I
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x50

    .line 151
    .restart local v1    # "centuryStartYear":I
    :goto_0
    div-int/lit8 v2, v1, 0x64

    mul-int/lit8 v2, v2, 0x64

    iput v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->century:I

    .line 152
    sub-int v2, v1, v2

    iput v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->startYear:I

    .line 154
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

    .line 79
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(C)Z
    .locals 1
    .param p0, "x0"    # C

    .line 79
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->isFormatLetter(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;CILjava/util/Calendar;)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/Calendar;

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->getStrategy(CILjava/util/Calendar;)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/util/Calendar;
    .param p1, "x1"    # Ljava/util/Locale;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->appendDisplayNames(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
    .param p1, "x1"    # I

    .line 79
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->adjustYear(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/util/Comparator;
    .locals 1

    .line 79
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 79
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private adjustYear(I)I
    .locals 2
    .param p1, "twoDigitYear"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "twoDigitYear"
        }
    .end annotation

    .line 488
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->century:I

    add-int/2addr v0, p1

    .line 489
    .local v0, "trial":I
    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->startYear:I

    if-lt p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x64

    :goto_0
    return v1
.end method

.method private static appendDisplayNames(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;
    .locals 7
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "field"    # I
    .param p3, "regex"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "cal",
            "locale",
            "field",
            "regex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            "I",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 468
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v1

    .line 469
    .local v1, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->LONGER_FIRST_LOWERCASE:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 470
    .local v2, "sorted":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 471
    .local v4, "displayName":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 472
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .end local v4    # "displayName":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 477
    .local v4, "symbol":Ljava/lang/String;
    invoke-static {p3, v4}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    .end local v4    # "symbol":Ljava/lang/String;
    goto :goto_1

    .line 479
    :cond_2
    return-object v0
.end method

.method private static getCache(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .param p0, "field"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation

    .line 618
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 619
    :try_start_0
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v1, v1, p0

    if-nez v1, :cond_0

    .line 620
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    aput-object v2, v1, p0

    .line 622
    :cond_0
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v1, v1, p0

    monitor-exit v0

    return-object v1

    .line 623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    .locals 4
    .param p1, "field"    # I
    .param p2, "definingCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "definingCalendar"
        }
    .end annotation

    .line 633
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->getCache(I)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 634
    .local v0, "cache":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/Locale;Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 635
    .local v1, "strategy":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    if-nez v1, :cond_1

    .line 636
    const/16 v2, 0xf

    if-ne p1, v2, :cond_0

    new-instance v2, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$TimeZoneStrategy;-><init>(Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    :goto_0
    move-object v1, v2

    .line 639
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    .line 640
    .local v2, "inCache":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    if-eqz v2, :cond_1

    .line 641
    return-object v2

    .line 644
    .end local v2    # "inCache":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    :cond_1
    return-object v1
.end method

.method private getStrategy(CILjava/util/Calendar;)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;
    .locals 3
    .param p1, "f"    # C
    .param p2, "width"    # I
    .param p3, "definingCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "f",
            "width",
            "definingCalendar"
        }
    .end annotation

    .line 557
    const/16 v0, 0x79

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :pswitch_0
    if-ne p2, v1, :cond_1

    .line 601
    invoke-static {}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->access$400()Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 598
    :pswitch_1
    invoke-static {p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$ISO8601TimeZoneStrategy;->getStrategy(I)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 577
    :pswitch_2
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 593
    :sswitch_0
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 591
    :sswitch_1
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->DAY_OF_WEEK_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 589
    :sswitch_2
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->SECOND_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 587
    :sswitch_3
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->MINUTE_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 585
    :sswitch_4
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->HOUR24_OF_DAY_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 583
    :sswitch_5
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->HOUR12_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 581
    :sswitch_6
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 579
    :sswitch_7
    const/16 v0, 0x9

    invoke-direct {p0, v0, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 575
    :sswitch_8
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->MILLISECOND_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 573
    :sswitch_9
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    invoke-direct {p0, v1, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    :goto_0
    return-object v0

    .line 571
    :sswitch_a
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->HOUR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 569
    :pswitch_3
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 567
    :pswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 565
    :pswitch_5
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 563
    :pswitch_6
    const/4 v0, 0x7

    invoke-direct {p0, v0, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 561
    :pswitch_7
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    return-object v0

    .line 605
    :cond_1
    const/16 v0, 0xf

    invoke-direct {p0, v0, p3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    move-result-object v0

    return-object v0

    .line 596
    :cond_2
    :pswitch_8
    if-le p2, v1, :cond_3

    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
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

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method private init(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "definingCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "definingCalendar"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->patterns:Ljava/util/List;

    .line 166
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyParser;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyParser;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;)V

    .line 168
    .local v0, "fm":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyParser;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyParser;->getNextStrategy()Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;

    move-result-object v1

    .line 169
    .local v1, "field":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;
    if-nez v1, :cond_0

    .line 170
    nop

    .line 174
    .end local v1    # "field":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;
    return-void

    .line 172
    .restart local v1    # "field":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->patterns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v1    # "field":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;
    goto :goto_0
.end method

.method private static isFormatLetter(C)Z
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    .line 262
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "left"    # Ljava/lang/String;
    .param p1, "right"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
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

    .line 342
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 344
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 345
    .local v0, "definingCalendar":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 346
    return-void
.end method

.method private static simpleQuote(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "value"
        }
    .end annotation

    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 436
    .local v1, "c":C
    const/16 v2, 0x24

    const/16 v3, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 449
    :cond_0
    :pswitch_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "i":I
    :cond_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
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

    .line 302
    instance-of v0, p1, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    return v1

    .line 305
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;

    .line 306
    .local v0, "other":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->pattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    .line 308
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 306
    :goto_0
    return v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 318
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 362
    .local v0, "pp":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 363
    .local v1, "date":Ljava/util/Date;
    if-nez v1, :cond_1

    .line 365
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    sget-object v3, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " locale does not support dates before 1868 AD)\nUnparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 370
    :cond_0
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 372
    :cond_1
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "pos"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 399
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 401
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z
    .locals 9
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "source",
            "pos",
            "calendar"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 420
    .local v0, "lt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;

    .line 422
    .local v1, "strategyAndWidth":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;
    invoke-virtual {v1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;->getMaxWidth(Ljava/util/ListIterator;)I

    move-result v8

    .line 423
    .local v8, "maxWidth":I
    iget-object v2, v1, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$Strategy;->parse(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    const/4 v2, 0x0

    return v2

    .line 426
    .end local v1    # "strategyAndWidth":Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$StrategyAndWidth;
    .end local v8    # "maxWidth":I
    :cond_0
    goto :goto_0

    .line 427
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 353
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "pos"
        }
    .end annotation

    .line 380
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateParser["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
