.class public final Lorg/apache/logging/log4j/core/appender/FailoversPlugin;
.super Ljava/lang/Object;
.source "FailoversPlugin.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "failovers"
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/appender/FailoversPlugin;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static varargs createFailovers([Lorg/apache/logging/log4j/core/config/AppenderRef;)[Ljava/lang/String;
    .locals 3
    .param p0, "refs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "AppenderRef"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "refs"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 49
    if-nez p0, :cond_0

    .line 50
    sget-object v0, Lorg/apache/logging/log4j/core/appender/FailoversPlugin;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "failovers must contain an appender reference"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 55
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/config/AppenderRef;->getRef()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
