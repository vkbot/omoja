.class public Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;
.super Ljava/lang/Object;
.source "FixedDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;,
        Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    }
.end annotation


# static fields
.field private static final NONE:C

.field static TABLE:[I


# instance fields
.field private cachedDate:[C

.field private dateLength:I

.field private final dstOffsets:[I

.field private final fastDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

.field private final fixedFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field private final fixedTimeZoneFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

.field private final length:I

.field private volatile midnightToday:J

.field private volatile midnightTomorrow:J

.field private final millisSeparatorChar:C

.field private final millisSeparatorLength:I

.field private final secondFractionDigits:I

.field private final timeSeparatorChar:C

.field private final timeSeparatorLength:I

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 688
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x186a0
        0x2710
        0x3e8
        0x64
        0xa
        0x1
    .end array-data
.end method

.method constructor <init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "fixedFormat"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fixedFormat",
            "tz"
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getSecondFractionDigits()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;I)V

    .line 424
    return-void
.end method

.method constructor <init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;I)V
    .locals 2
    .param p1, "fixedFormat"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "secondFractionDigits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fixedFormat",
            "tz",
            "secondFractionDigits"
        }
    .end annotation

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dstOffsets:[I

    .line 437
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->fixedFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 438
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/util/TimeZone;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeZone:Ljava/util/TimeZone;

    .line 439
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->access$000(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeSeparatorChar:C

    .line 440
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->access$100(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeSeparatorLength:I

    .line 441
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->access$200(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->millisSeparatorChar:C

    .line 442
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->access$300(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->millisSeparatorLength:I

    .line 443
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->access$400(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->fixedTimeZoneFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    .line 444
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getLength()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->length:I

    .line 445
    const/16 v0, 0x9

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->secondFractionDigits:I

    .line 446
    invoke-virtual {p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getFastDateFormat(Ljava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->fastDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    .line 447
    return-void
.end method

.method private calcMidnightMillis(JI)J
    .locals 3
    .param p1, "time"    # J
    .param p3, "addDays"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "time",
            "addDays"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 548
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 549
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 550
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 551
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 552
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 553
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 554
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static create(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;
    .locals 2
    .param p0, "format"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .line 484
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static create(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;
    .locals 2
    .param p0, "format"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "tz"
        }
    .end annotation

    .line 495
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static varargs createIfSupported([Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;
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

    .line 450
    if-eqz p0, :cond_5

    array-length v0, p0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 454
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 455
    aget-object v1, p0, v2

    if-eqz v1, :cond_1

    .line 456
    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .local v1, "tz":Ljava/util/TimeZone;
    goto :goto_0

    .line 458
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .restart local v1    # "tz":Ljava/util/TimeZone;
    goto :goto_0

    .line 461
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 464
    .restart local v1    # "tz":Ljava/util/TimeZone;
    :goto_0
    aget-object v3, p0, v0

    .line 465
    .local v3, "option0":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->lookupIgnoringNanos(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    move-result-object v4

    .line 466
    .local v4, "withoutNanos":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    if-eqz v4, :cond_3

    .line 467
    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->access$500(Ljava/lang/String;)[I

    move-result-object v5

    .line 468
    .local v5, "nanoRange":[I
    aget v0, v5, v0

    .line 469
    .local v0, "nanoStart":I
    aget v2, v5, v2

    .line 470
    .local v2, "nanoEnd":I
    sub-int v6, v2, v0

    .line 471
    .local v6, "secondFractionDigits":I
    new-instance v7, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    invoke-direct {v7, v4, v1, v6}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;I)V

    return-object v7

    .line 473
    .end local v0    # "nanoStart":I
    .end local v2    # "nanoEnd":I
    .end local v5    # "nanoRange":[I
    .end local v6    # "secondFractionDigits":I
    :cond_3
    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->lookup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    move-result-object v0

    .line 474
    .local v0, "type":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    if-nez v0, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    new-instance v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    invoke-direct {v2, v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;)V

    :goto_1
    return-object v2

    .line 451
    .end local v0    # "type":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    .end local v1    # "tz":Ljava/util/TimeZone;
    .end local v3    # "option0":Ljava/lang/String;
    .end local v4    # "withoutNanos":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    :cond_5
    :goto_2
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;

    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private daylightSavingTime(I)I
    .locals 2
    .param p1, "hourOfDay"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "hourOfDay"
        }
    .end annotation

    .line 710
    const/16 v0, 0x17

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dstOffsets:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dstOffsets:[I

    aget v0, v0, p1

    :goto_0
    return v0
.end method

.method private digitsLessThanThree()I
    .locals 2

    .line 597
    invoke-static {}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->access$600()I

    move-result v0

    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->secondFractionDigits:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private formatNanoOfMillisecond(I[CI)I
    .locals 6
    .param p1, "nanoOfMillisecond"    # I
    .param p2, "buffer"    # [C
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "nanoOfMillisecond",
            "buffer",
            "pos"
        }
    .end annotation

    .line 699
    move v0, p1

    .line 700
    .local v0, "remain":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->secondFractionDigits:I

    invoke-static {}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->access$600()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 701
    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->TABLE:[I

    aget v2, v2, v1

    .line 702
    .local v2, "divisor":I
    div-int v3, v0, v2

    .line 703
    .local v3, "temp":I
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    aput-char v5, p2, p3

    .line 704
    mul-int p3, v2, v3

    sub-int/2addr v0, p3

    .line 700
    .end local v2    # "divisor":I
    add-int/lit8 v1, v1, 0x1

    move p3, v4

    goto :goto_0

    .line 706
    .end local v1    # "i":I
    .end local v3    # "temp":I
    .end local v4    # "pos":I
    .restart local p3    # "pos":I
    :cond_0
    return p3
.end method

.method private updateCachedDate(J)V
    .locals 2
    .param p1, "now"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "now"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->fastDateFormat:Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    if-eqz v0, :cond_0

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->format(JLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 577
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->cachedDate:[C

    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dateLength:I

    .line 580
    .end local v0    # "result":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private updateDaylightSavingTime()V
    .locals 8

    .line 558
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dstOffsets:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 559
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 560
    .local v0, "ONE_HOUR":I
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeZone:Ljava/util/TimeZone;

    iget-wide v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightToday:J

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeZone:Ljava/util/TimeZone;

    iget-wide v4, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightToday:J

    mul-int/lit8 v6, v0, 0x17

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 561
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dstOffsets:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 562
    iget-wide v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightToday:J

    mul-int v5, v2, v0

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 563
    .local v3, "time":J
    iget-object v5, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dstOffsets:[I

    iget-object v6, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v6, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    iget-object v7, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v5, v2

    .line 561
    .end local v3    # "time":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    .end local v2    # "i":I
    :cond_0
    aget v2, v3, v1

    const/16 v4, 0x17

    aget v4, v3, v4

    if-le v2, v4, :cond_1

    .line 567
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 568
    iget-object v3, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dstOffsets:[I

    aget v4, v3, v2

    aget v5, v3, v1

    sub-int/2addr v4, v5

    aput v4, v3, v2

    .line 567
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 572
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private updateMidnightMillis(J)V
    .locals 2
    .param p1, "now"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "now"
        }
    .end annotation

    .line 535
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightTomorrow:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightToday:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 536
    :cond_0
    monitor-enter p0

    .line 537
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->updateCachedDate(J)V

    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->calcMidnightMillis(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightToday:J

    .line 539
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->calcMidnightMillis(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightTomorrow:J

    .line 541
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->updateDaylightSavingTime()V

    .line 542
    monitor-exit p0

    .line 544
    :cond_1
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writeDate([CI)V
    .locals 3
    .param p1, "buffer"    # [C
    .param p2, "startPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "startPos"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->cachedDate:[C

    if-eqz v0, :cond_0

    .line 626
    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dateLength:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    :cond_0
    return-void
.end method

.method private writeTime(I[CI)I
    .locals 9
    .param p1, "ms"    # I
    .param p2, "buffer"    # [C
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "ms",
            "buffer",
            "pos"
        }
    .end annotation

    .line 633
    const v0, 0x36ee80

    div-int v1, p1, v0

    .line 634
    .local v1, "hourOfDay":I
    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->daylightSavingTime(I)I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 635
    .local v2, "hours":I
    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 637
    const v0, 0xea60

    div-int v3, p1, v0

    .line 638
    .local v3, "minutes":I
    mul-int/2addr v0, v3

    sub-int/2addr p1, v0

    .line 640
    div-int/lit16 v0, p1, 0x3e8

    .line 641
    .local v0, "seconds":I
    mul-int/lit16 v4, v0, 0x3e8

    sub-int/2addr p1, v4

    .line 644
    div-int/lit8 v4, v2, 0xa

    .line 645
    .local v4, "temp":I
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "pos":I
    .local v5, "pos":I
    add-int/lit8 v6, v4, 0x30

    int-to-char v6, v6

    aput-char v6, p2, p3

    .line 648
    add-int/lit8 p3, v5, 0x1

    .end local v5    # "pos":I
    .restart local p3    # "pos":I
    mul-int/lit8 v6, v4, 0xa

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, p2, v5

    .line 649
    iget-char v5, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeSeparatorChar:C

    aput-char v5, p2, p3

    .line 650
    iget v6, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeSeparatorLength:I

    add-int/2addr p3, v6

    .line 653
    div-int/lit8 v4, v3, 0xa

    .line 654
    add-int/lit8 v7, p3, 0x1

    .end local p3    # "pos":I
    .local v7, "pos":I
    add-int/lit8 v8, v4, 0x30

    int-to-char v8, v8

    aput-char v8, p2, p3

    .line 657
    add-int/lit8 p3, v7, 0x1

    .end local v7    # "pos":I
    .restart local p3    # "pos":I
    mul-int/lit8 v8, v4, 0xa

    sub-int v8, v3, v8

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    aput-char v8, p2, v7

    .line 658
    aput-char v5, p2, p3

    .line 659
    add-int/2addr p3, v6

    .line 662
    div-int/lit8 v4, v0, 0xa

    .line 663
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "pos":I
    .restart local v5    # "pos":I
    add-int/lit8 v6, v4, 0x30

    int-to-char v6, v6

    aput-char v6, p2, p3

    .line 664
    add-int/lit8 p3, v5, 0x1

    .end local v5    # "pos":I
    .restart local p3    # "pos":I
    mul-int/lit8 v6, v4, 0xa

    sub-int v6, v0, v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, p2, v5

    .line 665
    iget-char v5, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->millisSeparatorChar:C

    aput-char v5, p2, p3

    .line 666
    iget v5, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->millisSeparatorLength:I

    add-int/2addr p3, v5

    .line 669
    div-int/lit8 v4, p1, 0x64

    .line 670
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "pos":I
    .restart local v5    # "pos":I
    add-int/lit8 v6, v4, 0x30

    int-to-char v6, v6

    aput-char v6, p2, p3

    .line 672
    mul-int/lit8 p3, v4, 0x64

    sub-int/2addr p1, p3

    .line 673
    div-int/lit8 p3, p1, 0xa

    .line 674
    .end local v4    # "temp":I
    .local p3, "temp":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v6, p3, 0x30

    int-to-char v6, v6

    aput-char v6, p2, v5

    .line 676
    mul-int/lit8 v5, p3, 0xa

    sub-int/2addr p1, v5

    .line 677
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    add-int/lit8 v6, p1, 0x30

    int-to-char v6, v6

    aput-char v6, p2, v4

    .line 678
    return v5
.end method

.method private writeTimeZone(J[CI)I
    .locals 2
    .param p1, "epochMillis"    # J
    .param p3, "buffer"    # [C
    .param p4, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "epochMillis",
            "buffer",
            "pos"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->fixedTimeZoneFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    if-eqz v0, :cond_0

    .line 683
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    invoke-static {v0, v1, p3, p4}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->access$700(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;I[CI)I

    move-result p4

    .line 685
    :cond_0
    return p4
.end method


# virtual methods
.method public format(J[CI)I
    .locals 3
    .param p1, "epochMillis"    # J
    .param p3, "buffer"    # [C
    .param p4, "startPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "epochMillis",
            "buffer",
            "startPos"
        }
    .end annotation

    .line 616
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->millisSinceMidnight(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 617
    .local v0, "ms":I
    invoke-direct {p0, p3, p4}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->writeDate([CI)V

    .line 618
    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->dateLength:I

    add-int/2addr v1, p4

    invoke-direct {p0, v0, p3, v1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->writeTime(I[CI)I

    move-result v1

    .line 619
    .local v1, "pos":I
    sub-int v2, v1, p4

    return v2
.end method

.method public format(J)Ljava/lang/String;
    .locals 4
    .param p1, "epochMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "epochMillis"
        }
    .end annotation

    .line 603
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->length:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    .line 604
    .local v0, "result":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->format(J[CI)I

    move-result v2

    .line 605
    .local v2, "written":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public formatInstant(Lorg/apache/logging/log4j/core/time/Instant;[CI)I
    .locals 5
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .param p2, "buffer"    # [C
    .param p3, "startPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "instant",
            "buffer",
            "startPos"
        }
    .end annotation

    .line 589
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getEpochMillisecond()J

    move-result-wide v0

    .line 590
    .local v0, "epochMillisecond":J
    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->format(J[CI)I

    move-result v2

    .line 591
    .local v2, "result":I
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->digitsLessThanThree()I

    move-result v3

    sub-int/2addr v2, v3

    .line 592
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/time/Instant;->getNanoOfMillisecond()I

    move-result v3

    add-int v4, p3, v2

    invoke-direct {p0, v3, p2, v4}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->formatNanoOfMillisecond(I[CI)I

    move-result v3

    .line 593
    .local v3, "pos":I
    invoke-direct {p0, v0, v1, p2, v3}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->writeTimeZone(J[CI)I

    move-result v4

    return v4
.end method

.method public formatInstant(Lorg/apache/logging/log4j/core/time/Instant;)Ljava/lang/String;
    .locals 4
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instant"
        }
    .end annotation

    .line 583
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->length:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    .line 584
    .local v0, "result":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->formatInstant(Lorg/apache/logging/log4j/core/time/Instant;[CI)I

    move-result v2

    .line 585
    .local v2, "written":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->fixedFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public isEquivalent(JIJI)Z
    .locals 11
    .param p1, "oldEpochSecond"    # J
    .param p3, "oldNanoOfSecond"    # I
    .param p4, "epochSecond"    # J
    .param p6, "nanoOfSecond"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldEpochSecond",
            "oldNanoOfSecond",
            "epochSecond",
            "nanoOfSecond"
        }
    .end annotation

    .line 718
    move v0, p3

    move/from16 v1, p6

    cmp-long v2, p1, p4

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 719
    move-object v2, p0

    iget v4, v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->secondFractionDigits:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-gt v4, v5, :cond_1

    .line 721
    int-to-long v4, v0

    const-wide/32 v7, 0xf4240

    div-long/2addr v4, v7

    int-to-long v9, v1

    div-long/2addr v9, v7

    cmp-long v4, v4, v9

    if-nez v4, :cond_0

    move v3, v6

    :cond_0
    return v3

    .line 723
    :cond_1
    if-ne v0, v1, :cond_2

    move v3, v6

    :cond_2
    return v3

    .line 725
    :cond_3
    move-object v2, p0

    return v3
.end method

.method public millisSinceMidnight(J)J
    .locals 2
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentTime"
        }
    .end annotation

    .line 528
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightTomorrow:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightToday:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 529
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->updateMidnightMillis(J)V

    .line 531
    :cond_1
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;->midnightToday:J

    sub-long v0, p1, v0

    return-wide v0
.end method
