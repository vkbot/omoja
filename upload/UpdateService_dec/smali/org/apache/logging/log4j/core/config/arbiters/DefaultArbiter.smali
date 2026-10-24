.class public Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter;
.super Ljava/lang/Object;
.source "DefaultArbiter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    deferChildren = true
    elementType = "Arbiter"
    name = "DefaultArbiter"
    printObject = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 40
    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/arbiters/DefaultArbiter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isCondition()Z
    .locals 1

    .line 35
    const/4 v0, 0x1

    return v0
.end method
