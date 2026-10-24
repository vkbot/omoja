.class Lorg/apache/logging/log4j/core/util/WatchManager$LocalUUID;
.super Ljava/lang/Object;
.source "WatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/WatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalUUID"
.end annotation


# static fields
.field private static final COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final HIGH_MASK:J = 0xfff000000000000L

.field private static final HUNDRED_NANOS_PER_MILLI:I = 0x2710

.field private static final LOW_MASK:J = 0xffffffffL

.field private static final MID_MASK:J = 0xffff00000000L

.field private static final NODE_SIZE:I = 0x8

.field private static final NUM_100NS_INTERVALS_SINCE_UUID_EPOCH:J = 0x1b21dd213814000L

.field private static final SEQUENCE_MASK:I = 0x3fff

.field private static final SHIFT_2:I = 0x10

.field private static final SHIFT_4:I = 0x20

.field private static final SHIFT_6:I = 0x30

.field private static final TYPE1:J = 0x1000L

.field private static final VARIANT:B = -0x80t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/WatchManager$LocalUUID;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/util/UUID;
    .locals 13

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    const-wide v2, 0x1b21dd213814000L

    add-long/2addr v0, v2

    sget-object v2, Lorg/apache/logging/log4j/core/util/WatchManager$LocalUUID;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    rem-int/lit16 v2, v2, 0x2710

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 91
    .local v0, "time":J
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 92
    .local v2, "timeLow":J
    const-wide v4, 0xffff00000000L

    and-long/2addr v4, v0

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    .line 93
    .local v4, "timeMid":J
    const-wide/high16 v6, 0xfff000000000000L

    and-long/2addr v6, v0

    const/16 v8, 0x30

    shr-long/2addr v6, v8

    .line 94
    .local v6, "timeHi":J
    or-long v8, v2, v4

    const-wide/16 v10, 0x1000

    or-long/2addr v8, v10

    or-long/2addr v8, v6

    .line 95
    .local v8, "most":J
    new-instance v10, Ljava/util/UUID;

    sget-object v11, Lorg/apache/logging/log4j/core/util/WatchManager$LocalUUID;->COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    int-to-long v11, v11

    invoke-direct {v10, v8, v9, v11, v12}, Ljava/util/UUID;-><init>(JJ)V

    return-object v10
.end method
