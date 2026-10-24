.class public Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;
.super Ljava/lang/Object;
.source "PatternProcessor.java"


# static fields
.field private static final DAY_CHARS:[C

.field private static final HOUR_CHARS:[C

.field private static final KEY:Ljava/lang/String; = "FileConverter"

.field protected static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final MILLIS_CHAR:C = 'S'

.field private static final MINUTE_CHAR:C = 'm'

.field private static final MONTH_CHAR:C = 'M'

.field private static final SECOND_CHAR:C = 's'

.field private static final WEEK_CHARS:[C

.field private static final YEAR_CHAR:C = 'y'


# instance fields
.field private currentFileTime:J

.field private final fileExtension:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

.field private frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

.field private isTimeBased:Z

.field private nextFileTime:J

.field private final pattern:Ljava/lang/String;

.field private final patternConverters:[Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;

.field private final patternFields:[Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

.field private prevFileTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->WEEK_CHARS:[C

    .line 47
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->DAY_CHARS:[C

    .line 48
    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->HOUR_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x77s
        0x57s
    .end array-data

    :array_1
    .array-data 2
        0x44s
        0x64s
        0x46s
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x48s
        0x4bs
        0x68s
        0x6bs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    .line 58
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 59
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->currentFileTime:J

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->isTimeBased:Z

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 81
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->pattern:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->createPatternParser()Lorg/apache/logging/log4j/core/pattern/PatternParser;

    move-result-object v1

    .line 83
    .local v1, "parser":Lorg/apache/logging/log4j/core/pattern/PatternParser;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 84
    .local v9, "converters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/PatternConverter;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 85
    .local v10, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/pattern/FormattingInfo;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v2 .. v8}, Lorg/apache/logging/log4j/core/pattern/PatternParser;->parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZZ)V

    .line 86
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    iput-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternFields:[Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    .line 87
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;

    .line 88
    .local v2, "converterArray":[Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;
    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;

    iput-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternConverters:[Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;

    .line 89
    invoke-static {p1}, Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;->lookupForFile(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->fileExtension:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    .line 91
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternConverters:[Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 92
    .local v5, "converter":Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;
    instance-of v6, v5, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    if-eqz v6, :cond_0

    .line 93
    move-object v6, v5

    check-cast v6, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    .line 94
    .local v6, "dateConverter":Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;
    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->getPattern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->calculateFrequency(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 91
    .end local v5    # "converter":Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;
    .end local v6    # "dateConverter":Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "copy"    # Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pattern",
            "copy"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;-><init>(Ljava/lang/String;)V

    .line 107
    iget-wide v0, p2, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    .line 108
    iget-wide v0, p2, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 109
    iget-wide v0, p2, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->currentFileTime:J

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->currentFileTime:J

    .line 110
    return-void
.end method

.method private calculateFrequency(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 311
    const/16 v0, 0x53

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternContains(Ljava/lang/String;C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_MILLISECOND:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0

    .line 314
    :cond_0
    const/16 v0, 0x73

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternContains(Ljava/lang/String;C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_SECOND:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0

    .line 317
    :cond_1
    const/16 v0, 0x6d

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternContains(Ljava/lang/String;C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_MINUTE:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0

    .line 320
    :cond_2
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->HOUR_CHARS:[C

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternContains(Ljava/lang/String;[C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->HOURLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0

    .line 323
    :cond_3
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->DAY_CHARS:[C

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternContains(Ljava/lang/String;[C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->DAILY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0

    .line 326
    :cond_4
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->WEEK_CHARS:[C

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternContains(Ljava/lang/String;[C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 327
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->WEEKLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0

    .line 329
    :cond_5
    const/16 v0, 0x4d

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternContains(Ljava/lang/String;C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->MONTHLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0

    .line 332
    :cond_6
    const/16 v0, 0x79

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternContains(Ljava/lang/String;C)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 333
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->ANNUALLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0

    .line 335
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private createPatternParser()Lorg/apache/logging/log4j/core/pattern/PatternParser;
    .locals 3

    .line 340
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/PatternParser;

    const/4 v1, 0x0

    const-string v2, "FileConverter"

    invoke-direct {v0, v1, v2, v1}, Lorg/apache/logging/log4j/core/pattern/PatternParser;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method private debugGetNextTime(J)J
    .locals 8
    .param p1, "nextTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nextTime"
        }
    .end annotation

    .line 234
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object v1, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 236
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->format(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    invoke-direct {p0, v4, v5}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->format(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    invoke-direct {p0, v5, v6}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->format(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    .line 235
    const-string v2, "PatternProcessor.getNextTime returning {}, nextFileTime={}, prevFileTime={}, current={}, freq={}"

    invoke-interface/range {v1 .. v7}, Lorg/apache/logging/log4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    :cond_0
    return-wide p1
.end method

.method private format(J)Ljava/lang/String;
    .locals 2
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "time"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd-HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private increment(Ljava/util/Calendar;IIZ)V
    .locals 1
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "type"    # I
    .param p3, "increment"    # I
    .param p4, "modulate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "cal",
            "type",
            "increment",
            "modulate"
        }
    .end annotation

    .line 246
    if-eqz p4, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/2addr v0, p3

    sub-int v0, p3, v0

    goto :goto_0

    :cond_0
    move v0, p3

    .line 247
    .local v0, "interval":I
    :goto_0
    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->add(II)V

    .line 248
    return-void
.end method

.method private patternContains(Ljava/lang/String;C)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "character"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pattern",
            "character"
        }
    .end annotation

    .line 353
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private varargs patternContains(Ljava/lang/String;[C)Z
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "chars"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pattern",
            "chars"
        }
    .end annotation

    .line 344
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p2, v2

    .line 345
    .local v3, "character":C
    invoke-direct {p0, p1, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternContains(Ljava/lang/String;C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    const/4 v0, 0x1

    return v0

    .line 344
    .end local v3    # "character":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    :cond_1
    return v1
.end method


# virtual methods
.method public final formatFileName(Ljava/lang/StringBuilder;ZLjava/lang/Object;)V
    .locals 5
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "useCurrentTime"    # Z
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "buf",
            "useCurrentTime",
            "obj"
        }
    .end annotation

    .line 256
    if-eqz p2, :cond_0

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->currentFileTime:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    .line 257
    .local v0, "time":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {p0, p1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method protected final varargs formatFileName(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buf",
            "objects"
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternConverters:[Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 301
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 302
    .local v1, "fieldStart":I
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternConverters:[Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2}, Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;->format(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 304
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->patternFields:[Lorg/apache/logging/log4j/core/pattern/FormattingInfo;

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 305
    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1}, Lorg/apache/logging/log4j/core/pattern/FormattingInfo;->format(ILjava/lang/StringBuilder;)V

    .line 300
    .end local v1    # "fieldStart":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "subst"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .param p2, "buf"    # Ljava/lang/StringBuilder;
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "subst",
            "buf",
            "obj"
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;ZLjava/lang/Object;)V

    .line 271
    return-void
.end method

.method public final formatFileName(Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;Ljava/lang/StringBuilder;ZLjava/lang/Object;)V
    .locals 5
    .param p1, "subst"    # Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    .param p2, "buf"    # Ljava/lang/StringBuilder;
    .param p3, "useCurrentTime"    # Z
    .param p4, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "subst",
            "buf",
            "useCurrentTime",
            "obj"
        }
    .end annotation

    .line 283
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 284
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->currentFileTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 283
    const-string v4, "Formatting file name. useCurrentTime={}. currentFileTime={}, prevFileTime={}"

    invoke-interface {v0, v4, v1, v2, v3}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    const-wide/16 v0, 0x0

    if-eqz p3, :cond_1

    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->currentFileTime:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    :goto_0
    goto :goto_1

    .line 286
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_1
    move-wide v0, v2

    .line 287
    .local v0, "time":J
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-virtual {p0, p2, v2}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->formatFileName(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 288
    new-instance v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;-><init>()V

    invoke-virtual {v2, v0, v1}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->setTimeMillis(J)Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent$Builder;->build()Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    move-result-object v2

    .line 289
    .local v2, "event":Lorg/apache/logging/log4j/core/LogEvent;
    invoke-virtual {p1, v2, p2}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 291
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    return-void
.end method

.method public getCurrentFileTime()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->currentFileTime:J

    return-wide v0
.end method

.method public getFileExtension()Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->fileExtension:Lorg/apache/logging/log4j/core/appender/rolling/FileExtension;

    return-object v0
.end method

.method public getFrequency()Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    return-object v0
.end method

.method public getNextFileTime()J
    .locals 2

    .line 361
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    return-wide v0
.end method

.method public getNextTime(JIZ)J
    .locals 11
    .param p1, "currentMillis"    # J
    .param p3, "increment"    # I
    .param p4, "modulus"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "currentMillis",
            "increment",
            "modulus"
        }
    .end annotation

    .line 149
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    .line 152
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    if-eqz v0, :cond_7

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    .local v0, "currentCal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 158
    .local v8, "cal":Ljava/util/Calendar;
    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 159
    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 160
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 161
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 162
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->ANNUALLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    const/4 v4, -0x1

    if-ne v1, v3, :cond_0

    .line 163
    invoke-direct {p0, v8, v10, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->increment(Ljava/util/Calendar;IIZ)V

    .line 164
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 165
    .local v1, "nextTime":J
    invoke-virtual {v8, v10, v4}, Ljava/util/Calendar;->add(II)V

    .line 166
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 167
    invoke-direct {p0, v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->debugGetNextTime(J)J

    move-result-wide v3

    return-wide v3

    .line 169
    .end local v1    # "nextTime":J
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v8, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 170
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->MONTHLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    if-ne v3, v5, :cond_1

    .line 171
    invoke-direct {p0, v8, v1, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->increment(Ljava/util/Calendar;IIZ)V

    .line 172
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 173
    .local v2, "nextTime":J
    invoke-virtual {v8, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 174
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 175
    invoke-direct {p0, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->debugGetNextTime(J)J

    move-result-wide v4

    return-wide v4

    .line 177
    .end local v2    # "nextTime":J
    :cond_1
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    sget-object v3, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->WEEKLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    if-ne v1, v3, :cond_2

    .line 178
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v8, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 179
    invoke-direct {p0, v8, v1, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->increment(Ljava/util/Calendar;IIZ)V

    .line 180
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {v8, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 181
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 182
    .restart local v2    # "nextTime":J
    invoke-virtual {v8, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 183
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 184
    invoke-direct {p0, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->debugGetNextTime(J)J

    move-result-wide v4

    return-wide v4

    .line 186
    .end local v2    # "nextTime":J
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v8, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 187
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->DAILY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    if-ne v3, v5, :cond_3

    .line 188
    invoke-direct {p0, v8, v1, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->increment(Ljava/util/Calendar;IIZ)V

    .line 189
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 190
    .restart local v2    # "nextTime":J
    invoke-virtual {v8, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 191
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 192
    invoke-direct {p0, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->debugGetNextTime(J)J

    move-result-wide v4

    return-wide v4

    .line 194
    .end local v2    # "nextTime":J
    :cond_3
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v8, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 195
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->HOURLY:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    if-ne v3, v5, :cond_4

    .line 196
    invoke-direct {p0, v8, v1, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->increment(Ljava/util/Calendar;IIZ)V

    .line 197
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 198
    .restart local v2    # "nextTime":J
    invoke-virtual {v8, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 199
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 200
    invoke-direct {p0, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->debugGetNextTime(J)J

    move-result-wide v4

    return-wide v4

    .line 202
    .end local v2    # "nextTime":J
    :cond_4
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v8, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 203
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_MINUTE:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    if-ne v3, v5, :cond_5

    .line 204
    invoke-direct {p0, v8, v1, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->increment(Ljava/util/Calendar;IIZ)V

    .line 205
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 206
    .restart local v2    # "nextTime":J
    invoke-virtual {v8, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 207
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 208
    invoke-direct {p0, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->debugGetNextTime(J)J

    move-result-wide v4

    return-wide v4

    .line 210
    .end local v2    # "nextTime":J
    :cond_5
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v8, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 211
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->frequency:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    sget-object v5, Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;->EVERY_SECOND:Lorg/apache/logging/log4j/core/appender/rolling/RolloverFrequency;

    if-ne v3, v5, :cond_6

    .line 212
    invoke-direct {p0, v8, v1, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->increment(Ljava/util/Calendar;IIZ)V

    .line 213
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 214
    .restart local v2    # "nextTime":J
    invoke-virtual {v8, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 215
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 216
    invoke-direct {p0, v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->debugGetNextTime(J)J

    move-result-wide v4

    return-wide v4

    .line 218
    .end local v2    # "nextTime":J
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 219
    invoke-direct {p0, v8, v2, p3, p4}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->increment(Ljava/util/Calendar;IIZ)V

    .line 220
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 221
    .local v5, "nextTime":J
    invoke-virtual {v8, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 222
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    .line 223
    invoke-direct {p0, v5, v6}, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->debugGetNextTime(J)J

    move-result-wide v1

    return-wide v1

    .line 153
    .end local v0    # "currentCal":Ljava/util/Calendar;
    .end local v5    # "nextTime":J
    .end local v8    # "cal":Ljava/util/Calendar;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pattern does not contain a date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevFileTime()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    return-wide v0
.end method

.method public setCurrentFileTime(J)V
    .locals 0
    .param p1, "currentFileTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentFileTime"
        }
    .end annotation

    .line 121
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->currentFileTime:J

    .line 122
    return-void
.end method

.method public setPrevFileTime(J)V
    .locals 3
    .param p1, "prevFileTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "prevFileTime"
        }
    .end annotation

    .line 129
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    const-string v2, "Setting prev file time to {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    .line 131
    return-void
.end method

.method public setTimeBased(Z)V
    .locals 0
    .param p1, "isTimeBased"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTimeBased"
        }
    .end annotation

    .line 113
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->isTimeBased:Z

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public updateTime()V
    .locals 4

    .line 227
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->isTimeBased:Z

    if-nez v0, :cond_1

    .line 228
    :cond_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->nextFileTime:J

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->prevFileTime:J

    .line 229
    iput-wide v2, p0, Lorg/apache/logging/log4j/core/appender/rolling/PatternProcessor;->currentFileTime:J

    .line 231
    :cond_1
    return-void
.end method
