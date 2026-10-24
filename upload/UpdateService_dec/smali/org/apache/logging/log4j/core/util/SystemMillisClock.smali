.class public final Lorg/apache/logging/log4j/core/util/SystemMillisClock;
.super Ljava/lang/Object;
.source "SystemMillisClock.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Clock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
