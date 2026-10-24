.class public Lorg/apache/logging/log4j/core/time/MutableInstant;
.super Ljava/lang/Object;
.source "MutableInstant.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/time/Instant;
.implements Ljava/io/Serializable;
.implements Ljava/time/temporal/TemporalAccessor;


# static fields
.field private static final MILLIS_PER_SECOND:I = 0x3e8

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00


# instance fields
.field private epochSecond:J

.field private nanoOfSecond:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instantToMillisAndNanos(JI[J)V
    .locals 6
    .param p0, "epochSecond"    # J
    .param p2, "nano"    # I
    .param p3, "result"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "epochSecond",
            "nano",
            "result"
        }
    .end annotation

    .line 137
    const v0, 0xf4240

    div-int v1, p2, v0

    .line 138
    .local v1, "millis":I
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    int-to-long v4, v1

    add-long/2addr v2, v4

    const/4 v4, 0x0

    aput-wide v2, p3, v4

    .line 139
    mul-int/2addr v0, v1

    sub-int v0, p2, v0

    int-to-long v2, v0

    const/4 v0, 0x1

    aput-wide v2, p3, v0

    .line 140
    return-void
.end method

.method private validateNanoOfMillisecond(I)V
    .locals 3
    .param p1, "nanoOfMillisecond"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nanoOfMillisecond"
        }
    .end annotation

    .line 98
    if-ltz p1, :cond_0

    const v0, 0xf4240

    if-ge p1, v0, :cond_0

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid nanoOfMillisecond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateNanoOfSecond(I)V
    .locals 3
    .param p1, "nano"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nano"
        }
    .end annotation

    .line 123
    if-ltz p1, :cond_0

    const v0, 0x3b9aca00

    if-ge p1, v0, :cond_0

    .line 126
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid nanoOfSecond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "object"
        }
    .end annotation

    .line 205
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 206
    return v0

    .line 208
    :cond_0
    instance-of v1, p1, Lorg/apache/logging/log4j/core/time/MutableInstant;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 209
    return v2

    .line 211
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 212
    .local v1, "other":Lorg/apache/logging/log4j/core/time/MutableInstant;
    iget-wide v3, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    iget-wide v5, v1, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    iget v4, v1, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 232
    const-string v0, "MutableInstant[epochSecond="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", nano="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    return-void
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 174
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_4

    .line 175
    sget-object v0, Lorg/apache/logging/log4j/core/time/MutableInstant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    iget-wide v1, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    .line 181
    :goto_0
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0

    .line 177
    :cond_2
    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    div-int/lit16 v0, v0, 0x3e8

    return v0

    .line 176
    :cond_3
    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    return v0

    .line 183
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getEpochMillisecond()J
    .locals 5

    .line 69
    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    .line 70
    .local v0, "millis":I
    iget-wide v1, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 71
    .local v1, "epochMillisecond":J
    return-wide v1
.end method

.method public getEpochSecond()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    return-wide v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 155
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_4

    .line 156
    sget-object v0, Lorg/apache/logging/log4j/core/time/MutableInstant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 160
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    return-wide v0

    .line 162
    :cond_0
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 158
    :cond_2
    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    .line 157
    :cond_3
    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    int-to-long v0, v0

    return-wide v0

    .line 164
    :cond_4
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNanoOfMillisecond()I
    .locals 3

    .line 76
    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    const v1, 0xf4240

    div-int v2, v0, v1

    .line 77
    .local v2, "millis":I
    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 78
    .local v0, "nanoOfMillisecond":I
    return v0
.end method

.method public getNanoOfSecond()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 217
    const/16 v0, 0x11

    .line 218
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 219
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    add-int/2addr v0, v2

    .line 220
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public initFrom(Lorg/apache/logging/log4j/core/time/Instant;)V
    .locals 2
    .param p1, "other"    # Lorg/apache/logging/log4j/core/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochSecond()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    .line 83
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getNanoOfSecond()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    .line 84
    return-void
.end method

.method public initFrom(Lorg/apache/logging/log4j/core/util/Clock;)V
    .locals 3
    .param p1, "clock"    # Lorg/apache/logging/log4j/core/util/Clock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "clock"
        }
    .end annotation

    .line 104
    instance-of v0, p1, Lorg/apache/logging/log4j/core/time/PreciseClock;

    if-eqz v0, :cond_0

    .line 105
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/time/PreciseClock;

    invoke-interface {v0, p0}, Lorg/apache/logging/log4j/core/time/PreciseClock;->init(Lorg/apache/logging/log4j/core/time/MutableInstant;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    .line 109
    :goto_0
    return-void
.end method

.method public initFromEpochMilli(JI)V
    .locals 4
    .param p1, "epochMilli"    # J
    .param p3, "nanoOfMillisecond"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "epochMilli",
            "nanoOfMillisecond"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p3}, Lorg/apache/logging/log4j/core/time/MutableInstant;->validateNanoOfMillisecond(I)V

    .line 93
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    iput-wide v2, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    .line 94
    mul-long/2addr v2, v0

    sub-long v0, p1, v2

    long-to-int v0, v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    .line 95
    return-void
.end method

.method public initFromEpochSecond(JI)V
    .locals 0
    .param p1, "epochSecond"    # J
    .param p3, "nano"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "epochSecond",
            "nano"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p3}, Lorg/apache/logging/log4j/core/time/MutableInstant;->validateNanoOfSecond(I)V

    .line 118
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->epochSecond:J

    .line 119
    iput p3, p0, Lorg/apache/logging/log4j/core/time/MutableInstant;->nanoOfSecond:I

    .line 120
    return-void
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 144
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 145
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 150
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 188
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 189
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 192
    :cond_0
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 193
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 194
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 195
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 196
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 197
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 198
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;->formatTo(Ljava/lang/StringBuilder;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
