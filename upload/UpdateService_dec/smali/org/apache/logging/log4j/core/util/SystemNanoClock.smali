.class public final Lorg/apache/logging/log4j/core/util/SystemNanoClock;
.super Ljava/lang/Object;
.source "SystemNanoClock.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/NanoClock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 2

    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
