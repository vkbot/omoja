.class Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;
.super Ljava/lang/Object;
.source "BurstFilter.java"

# interfaces
.implements Ljava/util/concurrent/Delayed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/filter/BurstFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogDelay"
.end annotation


# instance fields
.field private expireTime:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .param p1, "expireTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expireTime"
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->expireTime:J

    .line 245
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "delayed"
        }
    .end annotation

    .line 241
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 4
    .param p1, "delayed"    # Ljava/util/concurrent/Delayed;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "delayed"
        }
    .end annotation

    .line 260
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->expireTime:J

    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;

    iget-wide v2, v2, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->expireTime:J

    sub-long/2addr v0, v2

    .line 261
    .local v0, "diff":J
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v2

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 266
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 267
    return v0

    .line 269
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;

    .line 275
    .local v2, "logDelay":Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;
    iget-wide v3, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->expireTime:J

    iget-wide v5, v2, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->expireTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 276
    return v1

    .line 279
    :cond_2
    return v0

    .line 270
    .end local v2    # "logDelay":Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;
    :cond_3
    :goto_0
    return v1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 4
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "timeUnit"
        }
    .end annotation

    .line 255
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->expireTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 284
    iget-wide v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->expireTime:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setDelay(J)V
    .locals 2
    .param p1, "delay"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "delay"
        }
    .end annotation

    .line 250
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/logging/log4j/core/filter/BurstFilter$LogDelay;->expireTime:J

    .line 251
    return-void
.end method
