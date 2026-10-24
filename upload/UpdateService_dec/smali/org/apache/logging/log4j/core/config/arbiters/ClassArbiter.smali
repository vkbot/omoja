.class public Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;
.super Ljava/lang/Object;
.source "ClassArbiter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/arbiters/Arbiter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    deferChildren = true
    elementType = "Arbiter"
    name = "ClassArbiter"
    printObject = true
.end annotation


# instance fields
.field private final className:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;->className:Ljava/lang/String;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$1;

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 45
    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/config/arbiters/SystemPropertyArbiter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isCondition()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;->className:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/LoaderUtil;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
