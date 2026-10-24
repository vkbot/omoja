.class public final Lorg/apache/logging/log4j/core/config/AppendersPlugin;
.super Ljava/lang/Object;
.source "AppendersPlugin.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "appenders"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static createAppenders([Lorg/apache/logging/log4j/core/Appender;)Ljava/util/concurrent/ConcurrentMap;
    .locals 5
    .param p0, "appenders"    # [Lorg/apache/logging/log4j/core/Appender;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Appenders"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appenders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/Appender;",
            ")",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 48
    .local v0, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/logging/log4j/core/Appender;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 49
    .local v3, "appender":Lorg/apache/logging/log4j/core/Appender;
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/Appender;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v3    # "appender":Lorg/apache/logging/log4j/core/Appender;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-object v0
.end method
