.class public Lorg/apache/poi/ss/format/CellDateFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;
    }
.end annotation


# static fields
.field private static final EXCEL_EPOCH_CAL:Ljava/util/Calendar;

.field private static final NUM_MILLISECONDS_IN_DAY:I = 0x5265c00

.field private static SIMPLE_DATE_FORMATTER:Lorg/apache/poi/ss/format/CellDateFormatter;


# instance fields
.field private amPmUpper:Z

.field private final dateFmt:Ljava/text/DateFormat;

.field private sFmt:Ljava/lang/String;

.field private showAmPm:Z

.field private showM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x770

    invoke-static {v2, v0, v1}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(III)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/format/CellDateFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;-><init>(Lorg/apache/poi/ss/format/CellDateFormatter;)V

    .line 4
    sget-object v1, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    invoke-static {p2, v1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p2}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->finish(Ljava/lang/StringBuffer;)V

    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->dateFmt:Ljava/text/DateFormat;

    .line 7
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public static synthetic access$002(Lorg/apache/poi/ss/format/CellDateFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return p0
.end method

.method public static synthetic access$102(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return p1
.end method

.method public static synthetic access$200(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return p0
.end method

.method public static synthetic access$202(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return p1
.end method

.method public static synthetic access$302(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    const-wide/16 v2, 0x0

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    instance-of v5, v4, Ljava/lang/Number;

    const-wide v6, 0x408f400000000000L    # 1000.0

    if-eqz v5, :cond_3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide v8, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    cmpl-double v2, v4, v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    goto :goto_2

    :cond_1
    sget-object v2, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_CAL:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iget-object v3, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    if-nez v3, :cond_2

    div-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    goto :goto_1

    :cond_2
    div-double v8, v4, v6

    :goto_1
    double-to-int v3, v8

    const/16 v8, 0xd

    invoke-virtual {v2, v8, v3}, Ljava/util/Calendar;->add(II)V

    rem-double/2addr v4, v6

    double-to-int v3, v4

    const/16 v4, 0xe

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    :cond_3
    :goto_2
    iget-object v2, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->dateFmt:Ljava/text/DateFormat;

    invoke-virtual {v2, v4}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/text/CharacterIterator;->first()C

    move-result v3

    const/4 v5, 0x0

    move v8, v5

    move v9, v8

    :goto_3
    const v10, 0xffff

    if-eq v3, v10, :cond_a

    sget-object v10, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    invoke-interface {v2, v10}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x1

    if-eqz v10, :cond_5

    if-nez v8, :cond_9

    move-object v3, v4

    check-cast v3, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    new-instance v10, Ljava/util/Formatter;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v10, v0, v12}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    rem-long/2addr v12, v14

    const-wide/16 v16, 0x0

    cmp-long v3, v12, v16

    if-gez v3, :cond_4

    add-long/2addr v12, v14

    :cond_4
    iget-object v3, v1, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    iget-object v14, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    new-array v15, v11, [Ljava/lang/Object;

    long-to-double v12, v12

    div-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v15, v5

    invoke-virtual {v10, v3, v14, v15}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v10}, Ljava/util/Formatter;->close()V

    add-int/lit8 v3, v8, 0x2

    invoke-virtual {v0, v8, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v11

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v10}, Ljava/util/Formatter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3

    :cond_5
    sget-object v10, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    invoke-interface {v2, v10}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    if-nez v9, :cond_9

    iget-boolean v9, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    if-eqz v9, :cond_7

    iget-boolean v9, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    if-eqz v9, :cond_6

    invoke-static {v3}, Lorg/apache/poi/util/StringUtil;->toUpperCase(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v3, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x4d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_6
    invoke-static {v3}, Lorg/apache/poi/util/StringUtil;->toLowerCase(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v3, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x6d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    :goto_5
    move v9, v11

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :cond_a
    monitor-exit p0

    return-void

    :goto_7
    monitor-exit p0

    throw v0
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 2

    sget-object p0, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE_FORMATTER:Lorg/apache/poi/ss/format/CellDateFormatter;

    if-nez p0, :cond_1

    const-class v0, Lorg/apache/poi/ss/format/CellDateFormatter;

    monitor-enter v0

    :try_start_0
    sget-object p0, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE_FORMATTER:Lorg/apache/poi/ss/format/CellDateFormatter;

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/poi/ss/format/CellDateFormatter;

    const-string v1, "mm/d/y"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/format/CellDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object p0, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE_FORMATTER:Lorg/apache/poi/ss/format/CellDateFormatter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellDateFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method
