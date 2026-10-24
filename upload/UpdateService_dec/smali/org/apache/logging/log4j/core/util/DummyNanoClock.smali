.class public final Lorg/apache/logging/log4j/core/util/DummyNanoClock;
.super Ljava/lang/Object;
.source "DummyNanoClock.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/NanoClock;


# instance fields
.field private final fixedNanoTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/util/DummyNanoClock;-><init>(J)V

    .line 28
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "fixedNanoTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fixedNanoTime"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/util/DummyNanoClock;->fixedNanoTime:J

    .line 36
    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/util/DummyNanoClock;->fixedNanoTime:J

    return-wide v0
.end method
