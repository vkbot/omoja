.class public final Lorg/apache/logging/log4j/core/filter/TimeFilter;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter;
.source "TimeFilter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "filter"
    name = "TimeFilter"
    printObject = true
.end annotation


# static fields
.field private static final CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

.field private static final DAY_MS:J = 0x5265c00L

.field private static final FORMATTER:Ljava/time/format/DateTimeFormatter;

.field private static final HOUR_MS:J = 0x36ee80L


# instance fields
.field private final duration:J

.field private volatile end:J

.field private final endTime:Ljava/time/LocalTime;

.field private volatile start:J

.field private final startTime:Ljava/time/LocalTime;

.field private final timeZone:Ljava/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lorg/apache/logging/log4j/core/util/ClockFactory;->getClock()Lorg/apache/logging/log4j/core/util/Clock;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    .line 48
    const-string v0, "HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/ZoneId;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V
    .locals 7
    .param p1, "start"    # Ljava/time/LocalTime;
    .param p2, "end"    # Ljava/time/LocalTime;
    .param p3, "timeZone"    # Ljava/time/ZoneId;
    .param p4, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p5, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "start",
            "end",
            "timeZone",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .line 103
    invoke-static {p3}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/logging/log4j/core/filter/TimeFilter;-><init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/ZoneId;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Ljava/time/LocalDate;)V

    .line 104
    return-void
.end method

.method constructor <init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/ZoneId;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Ljava/time/LocalDate;)V
    .locals 6
    .param p1, "start"    # Ljava/time/LocalTime;
    .param p2, "end"    # Ljava/time/LocalTime;
    .param p3, "timeZone"    # Ljava/time/ZoneId;
    .param p4, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p5, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p6, "now"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "start",
            "end",
            "timeZone",
            "onMatch",
            "onMismatch",
            "now"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p4, p5}, Lorg/apache/logging/log4j/core/filter/AbstractFilter;-><init>(Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    .line 82
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->startTime:Ljava/time/LocalTime;

    .line 83
    iput-object p2, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->endTime:Ljava/time/LocalTime;

    .line 84
    iput-object p3, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->timeZone:Ljava/time/ZoneId;

    .line 85
    invoke-static {p6, p1, p3}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->start:J

    .line 86
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->endTime:Ljava/time/LocalTime;

    invoke-static {p6, v0, p3}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 87
    .local v0, "endMillis":J
    invoke-virtual {p2, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 91
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->startTime:Ljava/time/LocalTime;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->endTime:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->startTime:Ljava/time/LocalTime;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->endTime:Ljava/time/LocalTime;

    invoke-static {v2, v3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->startTime:Ljava/time/LocalTime;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->endTime:Ljava/time/LocalTime;

    .line 92
    invoke-static {v2, v3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v2

    const-wide/16 v3, 0x18

    invoke-virtual {v2, v3, v4}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->duration:J

    .line 93
    iget-wide v2, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->start:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->duration:J

    sub-long/2addr v2, v4

    .line 94
    .local v2, "difference":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 96
    sub-long/2addr v0, v2

    .line 98
    :cond_2
    iput-wide v0, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->end:J

    .line 99
    return-void
.end method

.method private declared-synchronized adjustTimes(J)V
    .locals 7
    .param p1, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTimeMillis"
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->end:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->timeZone:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    .line 111
    .local v0, "date":Ljava/time/LocalDate;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->startTime:Ljava/time/LocalTime;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->timeZone:Ljava/time/ZoneId;

    invoke-static {v0, v1, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->start:J

    .line 112
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->endTime:Ljava/time/LocalTime;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->timeZone:Ljava/time/ZoneId;

    invoke-static {v0, v1, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 113
    .local v1, "endMillis":J
    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->endTime:Ljava/time/LocalTime;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->startTime:Ljava/time/LocalTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    .line 117
    :cond_1
    iget-wide v3, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->start:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->duration:J

    sub-long/2addr v3, v5

    .line 118
    .local v3, "difference":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 120
    sub-long/2addr v1, v3

    .line 122
    :cond_2
    iput-wide v1, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->end:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 106
    .end local v0    # "date":Ljava/time/LocalDate;
    .end local v1    # "endMillis":J
    .end local v3    # "difference":J
    .end local p0    # "this":Lorg/apache/logging/log4j/core/filter/TimeFilter;
    .end local p1    # "currentTimeMillis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static createFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/filter/TimeFilter;
    .locals 9
    .param p0, "start"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "start"
        .end annotation
    .end param
    .param p1, "end"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "end"
        .end annotation
    .end param
    .param p2, "tz"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "timezone"
        .end annotation
    .end param
    .param p3, "match"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMatch"
        .end annotation
    .end param
    .param p4, "mismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMismatch"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "start",
            "end",
            "tz",
            "match",
            "mismatch"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 256
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->parseTimestamp(Ljava/lang/String;Ljava/time/LocalTime;)Ljava/time/LocalTime;

    move-result-object v0

    .line 257
    .local v0, "startTime":Ljava/time/LocalTime;
    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    invoke-static {p1, v1}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->parseTimestamp(Ljava/lang/String;Ljava/time/LocalTime;)Ljava/time/LocalTime;

    move-result-object v7

    .line 258
    .local v7, "endTime":Ljava/time/LocalTime;
    if-nez p2, :cond_0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 259
    .local v4, "timeZone":Ljava/time/ZoneId;
    if-nez p3, :cond_1

    sget-object v1, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    .line 260
    .local v5, "onMatch":Lorg/apache/logging/log4j/core/Filter$Result;
    :goto_1
    if-nez p4, :cond_2

    sget-object v1, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p4

    .line 261
    .local v6, "onMismatch":Lorg/apache/logging/log4j/core/Filter$Result;
    :goto_2
    new-instance v8, Lorg/apache/logging/log4j/core/filter/TimeFilter;

    move-object v1, v8

    move-object v2, v0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/filter/TimeFilter;-><init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/ZoneId;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    return-object v8
.end method

.method private filter()Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 2

    .line 145
    sget-object v0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->CLOCK:Lorg/apache/logging/log4j/core/util/Clock;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter(J)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method private static parseTimestamp(Ljava/lang/String;Ljava/time/LocalTime;)Ljava/time/LocalTime;
    .locals 3
    .param p0, "timestamp"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timestamp",
            "defaultValue"
        }
    .end annotation

    .line 265
    if-nez p0, :cond_0

    .line 266
    return-object p1

    .line 270
    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/filter/TimeFilter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Error parsing TimeFilter timestamp value {}"

    invoke-interface {v1, v2, p0, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    return-object p1
.end method


# virtual methods
.method filter(J)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 2
    .param p1, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentTimeMillis"
        }
    .end annotation

    .line 133
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->end:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 134
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->adjustTimes(J)V

    .line 136
    :cond_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->start:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->end:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    :goto_0
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter(J)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .param p14, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "params"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/TimeFilter;->filter()Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/TimeFilter;->timeZone:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
