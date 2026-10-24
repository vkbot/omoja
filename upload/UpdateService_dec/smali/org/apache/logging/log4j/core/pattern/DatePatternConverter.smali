.class public final Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;
.super Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;
.source "DatePatternConverter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/ArrayPatternConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;,
        Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$UnixMillisFormatter;,
        Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$UnixFormatter;,
        Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;,
        Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;,
        Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Converter"
    name = "DatePatternConverter"
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/pattern/ConverterKeys;
    value = {
        "d",
        "date"
    }
.end annotation


# static fields
.field private static final UNIX_FORMAT:Ljava/lang/String; = "UNIX"

.field private static final UNIX_MILLIS_FORMAT:Ljava/lang/String; = "UNIX_MILLIS"


# instance fields
.field private final cachedTime:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;",
            ">;"
        }
    .end annotation
.end field

.field private final formatter:Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

.field private final options:[Ljava/lang/String;

.field private final threadLocalFormatter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;",
            ">;"
        }
    .end annotation
.end field

.field private final threadLocalMutableInstant:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/logging/log4j/core/time/MutableInstant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 181
    const-string v0, "Date"

    const-string v1, "date"

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->threadLocalMutableInstant:Ljava/lang/ThreadLocal;

    .line 171
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->threadLocalFormatter:Ljava/lang/ThreadLocal;

    .line 182
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->options:[Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->createFormatter([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->formatter:Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->fromEpochMillis(J)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->cachedTime:Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    .line 41
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->formatter:Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    return-object v0
.end method

.method private static createFixedFormatter(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
    .locals 1
    .param p0, "fixedDateFormat"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fixedDateFormat"
        }
    .end annotation

    .line 212
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$FixedFormatter;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;)V

    return-object v0
.end method

.method private createFormatter([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
    .locals 2
    .param p1, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 194
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->createIfSupported([Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    move-result-object v0

    .line 195
    .local v0, "fixedDateFormat":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;
    if-eqz v0, :cond_0

    .line 196
    invoke-static {v0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->createFixedFormatter(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    move-result-object v1

    return-object v1

    .line 198
    :cond_0
    invoke-static {p1}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->createNonFixedFormatter([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    move-result-object v1

    return-object v1
.end method

.method private static createNonFixedFormatter([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
    .locals 8
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 217
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    array-length v0, p0

    if-eqz v0, :cond_4

    .line 221
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    aget-object v0, p0, v0

    .line 223
    .local v0, "patternOption":Ljava/lang/String;
    const-string v1, "UNIX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$UnixFormatter;

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$UnixFormatter;-><init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$1;)V

    return-object v1

    .line 226
    :cond_0
    const-string v1, "UNIX_MILLIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    new-instance v1, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$UnixMillisFormatter;

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$UnixMillisFormatter;-><init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$1;)V

    return-object v1

    .line 230
    :cond_1
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->lookup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    move-result-object v1

    .line 231
    .local v1, "fixedFormat":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    if-nez v1, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "pattern":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 235
    .local v3, "tz":Ljava/util/TimeZone;
    array-length v4, p0

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    aget-object v4, p0, v5

    if-eqz v4, :cond_3

    .line 236
    aget-object v4, p0, v5

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 240
    :cond_3
    :try_start_0
    invoke-static {v2, v3}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    move-result-object v4

    .line 241
    .local v4, "tempFormat":Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    new-instance v5, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;

    invoke-direct {v5, v4}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$PatternFormatter;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 242
    .end local v4    # "tempFormat":Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    :catch_0
    move-exception v4

    .line 243
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not instantiate FastDateFormat with pattern "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    sget-object v5, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    invoke-static {v5, v3}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->create(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->createFixedFormatter(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    move-result-object v5

    return-object v5

    .line 219
    .end local v0    # "patternOption":Ljava/lang/String;
    .end local v1    # "fixedFormat":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "tz":Ljava/util/TimeZone;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Options array must have at least one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatWithoutAllocation(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "instant",
            "output"
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->getThreadLocalFormatter()Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;->formatToBuffer(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V

    .line 296
    return-void
.end method

.method private formatWithoutThreadLocals(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "instant",
            "output"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->cachedTime:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;

    .line 309
    .local v0, "cached":Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochSecond()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;->epochSecond:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getNanoOfSecond()I

    move-result v1

    iget v2, v0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;->nanoOfSecond:I

    if-eq v1, v2, :cond_2

    .line 310
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;

    invoke-direct {v1, p0, p1}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;-><init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;Lorg/apache/logging/log4j/core/time/Instant;)V

    .line 311
    .local v1, "newTime":Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->cachedTime:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    move-object v0, v1

    goto :goto_0

    .line 314
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->cachedTime:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;

    .line 317
    .end local v1    # "newTime":Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;->formatted:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    return-void
.end method

.method private fromEpochMillis(J)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;
    .locals 2
    .param p1, "epochMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "epochMillis"
        }
    .end annotation

    .line 188
    new-instance v0, Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;-><init>()V

    .line 189
    .local v0, "temp":Lorg/apache/logging/log4j/core/time/MutableInstant;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    .line 190
    new-instance v1, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;

    invoke-direct {v1, p0, v0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$CachedTime;-><init>(Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;Lorg/apache/logging/log4j/core/time/Instant;)V

    return-object v1
.end method

.method private getMutableInstant()Lorg/apache/logging/log4j/core/time/MutableInstant;
    .locals 2

    .line 275
    sget-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->threadLocalMutableInstant:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/time/MutableInstant;

    .line 277
    .local v0, "result":Lorg/apache/logging/log4j/core/time/MutableInstant;
    if-nez v0, :cond_0

    .line 278
    new-instance v1, Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;-><init>()V

    move-object v0, v1

    .line 279
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->threadLocalMutableInstant:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 281
    :cond_0
    return-object v0

    .line 283
    .end local v0    # "result":Lorg/apache/logging/log4j/core/time/MutableInstant;
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/time/MutableInstant;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/time/MutableInstant;-><init>()V

    return-object v0
.end method

.method private getThreadLocalFormatter()Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->threadLocalFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    .line 300
    .local v0, "result":Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;
    if-nez v0, :cond_0

    .line 301
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->options:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->createFormatter([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->threadLocalFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 304
    :cond_0
    return-object v0
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "options"
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(JLjava/lang/StringBuilder;)V
    .locals 2
    .param p1, "epochMilli"    # J
    .param p3, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "epochMilli",
            "output"
        }
    .end annotation

    .line 269
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->getMutableInstant()Lorg/apache/logging/log4j/core/time/MutableInstant;

    move-result-object v0

    .line 270
    .local v0, "instant":Lorg/apache/logging/log4j/core/time/MutableInstant;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    .line 271
    invoke-virtual {p0, v0, p3}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->format(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V

    .line 272
    return-void
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "obj",
            "output"
        }
    .end annotation

    .line 325
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 326
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->format(Ljava/util/Date;Ljava/lang/StringBuilder;)V

    .line 328
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/LogEventPatternConverter;->format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 329
    return-void
.end method

.method public varargs format(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "toAppendTo"    # Ljava/lang/StringBuilder;
    .param p2, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "toAppendTo",
            "objects"
        }
    .end annotation

    .line 333
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 334
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 335
    invoke-virtual {p0, v2, p1}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->format(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 336
    goto :goto_1

    .line 333
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_1
    :goto_1
    return-void
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "date",
            "toAppendTo"
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->format(JLjava/lang/StringBuilder;)V

    .line 258
    return-void
.end method

.method public format(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "output"
        }
    .end annotation

    .line 265
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getInstant()Lorg/apache/logging/log4j/core/time/Instant;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->format(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V

    .line 266
    return-void
.end method

.method public format(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "instant",
            "output"
        }
    .end annotation

    .line 287
    sget-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_THREADLOCALS:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->formatWithoutAllocation(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->formatWithoutThreadLocals(Lorg/apache/logging/log4j/core/time/Instant;Ljava/lang/StringBuilder;)V

    .line 292
    :goto_0
    return-void
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter;->formatter:Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/pattern/DatePatternConverter$Formatter;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
