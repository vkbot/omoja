.class public Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;",
        ">;"
    }
.end annotation


# static fields
.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field public static final ZERO:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

.field private static final serialVersionUID:J = -0x3422ded6a8c62b2dL


# instance fields
.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;-><init>(J)V

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->ZERO:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    .line 67
    const-string v0, "P?(?:([0-9]+)D)?(T?(?:([0-9]+)H)?(?:([0-9]+)M)?(?:([0-9]+)?S)?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0
    .param p1, "seconds"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "seconds"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->seconds:J

    .line 82
    return-void
.end method

.method private static create(J)Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;
    .locals 2
    .param p0, "seconds"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "seconds"
        }
    .end annotation

    .line 167
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->ZERO:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    return-object v0

    .line 170
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;-><init>(J)V

    return-object v0
.end method

.method private static create(JJJJ)Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;
    .locals 2
    .param p0, "daysAsSecs"    # J
    .param p2, "hoursAsSecs"    # J
    .param p4, "minsAsSecs"    # J
    .param p6, "secs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "daysAsSecs",
            "hoursAsSecs",
            "minsAsSecs",
            "secs"
        }
    .end annotation

    .line 158
    add-long v0, p0, p2

    add-long/2addr v0, p4

    add-long/2addr v0, p6

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->create(J)Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;
    .locals 23
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .line 117
    move-object/from16 v1, p0

    const-string v0, "text"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 119
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "T"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "dayMatch":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "hourMatch":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "minuteMatch":Ljava/lang/String;
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "secondMatch":Ljava/lang/String;
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v6, :cond_1

    .line 127
    :cond_0
    const v7, 0x15180

    const-string v8, "days"

    invoke-static {v1, v3, v7, v8}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v7

    .line 128
    .local v7, "daysAsSecs":J
    const/16 v9, 0xe10

    const-string v10, "hours"

    invoke-static {v1, v4, v9, v10}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v17

    .line 129
    .local v17, "hoursAsSecs":J
    const/16 v9, 0x3c

    const-string v10, "minutes"

    invoke-static {v1, v5, v9, v10}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v19

    .line 130
    .local v19, "minsAsSecs":J
    const-string v9, "seconds"

    invoke-static {v1, v6, v0, v9}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v21

    .line 132
    .local v21, "seconds":J
    move-wide v9, v7

    move-wide/from16 v11, v17

    move-wide/from16 v13, v19

    move-wide/from16 v15, v21

    :try_start_0
    invoke-static/range {v9 .. v16}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->create(JJJJ)Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 134
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Text cannot be parsed to a Duration (overflow) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 139
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    .end local v3    # "dayMatch":Ljava/lang/String;
    .end local v4    # "hourMatch":Ljava/lang/String;
    .end local v5    # "minuteMatch":Ljava/lang/String;
    .end local v6    # "secondMatch":Ljava/lang/String;
    .end local v7    # "daysAsSecs":J
    .end local v17    # "hoursAsSecs":J
    .end local v19    # "minsAsSecs":J
    .end local v21    # "seconds":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text cannot be parsed to a Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "parsed"    # Ljava/lang/String;
    .param p2, "multiplier"    # I
    .param p3, "errorText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "text",
            "parsed",
            "multiplier",
            "errorText"
        }
    .end annotation

    .line 145
    if-nez p1, :cond_0

    .line 146
    const-wide/16 v0, 0x0

    return-wide v0

    .line 149
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v0, "val":J
    int-to-long v2, p2

    mul-long/2addr v2, v0

    return-wide v2

    .line 151
    .end local v0    # "val":J
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text cannot be parsed to a Duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "other"
        }
    .end annotation

    .line 35
    check-cast p1, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->compareTo(Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;)I
    .locals 4
    .param p1, "other"    # Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->toMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 184
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 185
    return v0

    .line 187
    :cond_0
    instance-of v1, p1, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 188
    return v2

    .line 190
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    .line 191
    .local v1, "other":Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;
    iget-wide v3, v1, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->seconds:J

    iget-wide v5, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->seconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 196
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->seconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toMillis()J
    .locals 4

    .line 179
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->seconds:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 219
    sget-object v0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->ZERO:Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;

    if-ne p0, v0, :cond_0

    .line 220
    const-string v0, "PT0S"

    return-object v0

    .line 222
    :cond_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/action/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long v4, v0, v2

    .line 223
    .local v4, "days":J
    rem-long v2, v0, v2

    const-wide/16 v6, 0xe10

    div-long/2addr v2, v6

    .line 224
    .local v2, "hours":J
    rem-long v6, v0, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 225
    .local v6, "minutes":I
    rem-long/2addr v0, v8

    long-to-int v0, v0

    .line 226
    .local v0, "secs":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x18

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 227
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v7, "P"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_1

    .line 229
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v9, 0x44

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    :cond_1
    int-to-long v9, v6

    or-long/2addr v9, v2

    int-to-long v11, v0

    or-long/2addr v9, v11

    cmp-long v9, v9, v7

    if-eqz v9, :cond_2

    .line 232
    const/16 v9, 0x54

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    :cond_2
    cmp-long v7, v2, v7

    if-eqz v7, :cond_3

    .line 235
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x48

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    if-eqz v6, :cond_4

    .line 238
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x4d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 243
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x53

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
