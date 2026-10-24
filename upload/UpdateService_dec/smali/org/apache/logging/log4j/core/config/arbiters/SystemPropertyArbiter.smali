.class public Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;
.super Ljava/lang/Object;
.source "SystemPropertyArbiter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    deferChildren = true
    elementType = "Arbiter"
    name = "SystemPropertyArbiter"
    printObject = true
.end annotation


# instance fields
.field private final propertyName:Ljava/lang/String;

.field private final propertyValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "propertyName",
            "propertyValue"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;->propertyName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;->propertyValue:Ljava/lang/String;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$1;

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 52
    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isCondition()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;->propertyName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter;->propertyValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
