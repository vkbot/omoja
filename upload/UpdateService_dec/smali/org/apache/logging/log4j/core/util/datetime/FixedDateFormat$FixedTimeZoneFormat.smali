.class public final enum Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;
.super Ljava/lang/Enum;
.source "FixedDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FixedTimeZoneFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

.field public static final enum HH:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

.field public static final enum HHCMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

.field public static final enum HHMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;


# instance fields
.field private final length:I

.field private final timeSeparatorChar:C

.field private final timeSeparatorCharLen:I

.field private final useMinutes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 322
    new-instance v6, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    const-string v1, "HH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;-><init>(Ljava/lang/String;ICZI)V

    sput-object v6, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->HH:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    .line 327
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    const-string v8, "HHMM"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;-><init>(Ljava/lang/String;ICZI)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->HHMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    .line 332
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    const-string v2, "HHCMM"

    const/4 v3, 0x2

    const/16 v4, 0x3a

    const/4 v5, 0x1

    const/4 v6, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;-><init>(Ljava/lang/String;ICZI)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->HHCMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    .line 317
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->HH:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->HHMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->$VALUES:[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;-><init>(Ljava/lang/String;ICZI)V

    .line 336
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICZI)V
    .locals 0
    .param p3, "timeSeparatorChar"    # C
    .param p4, "minutes"    # Z
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "timeSeparatorChar",
            "minutes",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CZI)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 339
    iput-char p3, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->timeSeparatorChar:C

    .line 340
    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->timeSeparatorCharLen:I

    .line 341
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->useMinutes:Z

    .line 342
    iput p5, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->length:I

    .line 343
    return-void
.end method

.method static synthetic access$700(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;I[CI)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;
    .param p1, "x1"    # I
    .param p2, "x2"    # [C
    .param p3, "x3"    # I

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->write(I[CI)I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 317
    const-class v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;
    .locals 1

    .line 317
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->$VALUES:[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    return-object v0
.end method

.method private write(I[CI)I
    .locals 7
    .param p1, "offset"    # I
    .param p2, "buffer"    # [C
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "offset",
            "buffer",
            "pos"
        }
    .end annotation

    .line 360
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "pos":I
    .local v0, "pos":I
    if-gez p1, :cond_0

    const/16 v1, 0x2d

    goto :goto_0

    :cond_0
    const/16 v1, 0x2b

    :goto_0
    aput-char v1, p2, p3

    .line 361
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 362
    .local p3, "absOffset":I
    const v1, 0x36ee80

    div-int v2, p3, v1

    .line 363
    .local v2, "hours":I
    mul-int/2addr v1, v2

    sub-int v1, p3, v1

    .line 366
    .local v1, "ms":I
    div-int/lit8 v3, v2, 0xa

    .line 367
    .local v3, "temp":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    aput-char v5, p2, v0

    .line 370
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "pos":I
    .restart local v0    # "pos":I
    mul-int/lit8 v5, v3, 0xa

    sub-int v5, v2, v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p2, v4

    .line 373
    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->useMinutes:Z

    if-eqz v4, :cond_1

    .line 374
    iget-char v4, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->timeSeparatorChar:C

    aput-char v4, p2, v0

    .line 375
    iget v4, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->timeSeparatorCharLen:I

    add-int/2addr v0, v4

    .line 376
    const v4, 0xea60

    div-int v5, v1, v4

    .line 377
    .local v5, "minutes":I
    mul-int/2addr v4, v5

    sub-int/2addr v1, v4

    .line 379
    div-int/lit8 v3, v5, 0xa

    .line 380
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "pos":I
    .restart local v4    # "pos":I
    add-int/lit8 v6, v3, 0x30

    int-to-char v6, v6

    aput-char v6, p2, v0

    .line 383
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "pos":I
    .restart local v0    # "pos":I
    mul-int/lit8 v6, v3, 0xa

    sub-int v6, v5, v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, p2, v4

    .line 385
    .end local v5    # "minutes":I
    :cond_1
    return v0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 352
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->length:I

    return v0
.end method
