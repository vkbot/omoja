.class public Lorg/apache/logging/log4j/core/time/internal/FixedPreciseClock;
.super Ljava/lang/Object;
.source "FixedPreciseClock.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/time/PreciseClock;


# instance fields
.field private final currentTimeMillis:J

.field private final nanosOfMillisecond:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/time/internal/FixedPreciseClock;-><init>(J)V

    .line 35
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentTimeMillis"
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/time/internal/FixedPreciseClock;-><init>(JI)V

    .line 43
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .param p1, "currentTimeMillis"    # J
    .param p3, "nanosOfMillisecond"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "currentTimeMillis",
            "nanosOfMillisecond"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/time/internal/FixedPreciseClock;->currentTimeMillis:J

    .line 53
    iput p3, p0, Lorg/apache/logging/log4j/core/time/internal/FixedPreciseClock;->nanosOfMillisecond:I

    .line 54
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/time/internal/FixedPreciseClock;->currentTimeMillis:J

    return-wide v0
.end method

.method public init(Lorg/apache/logging/log4j/core/time/MutableInstant;)V
    .locals 3
    .param p1, "instant"    # Lorg/apache/logging/log4j/core/time/MutableInstant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instant"
        }
    .end annotation

    .line 58
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/time/internal/FixedPreciseClock;->currentTimeMillis:J

    iget v2, p0, Lorg/apache/logging/log4j/core/time/internal/FixedPreciseClock;->nanosOfMillisecond:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/logging/log4j/core/time/MutableInstant;->initFromEpochMilli(JI)V

    .line 59
    return-void
.end method
