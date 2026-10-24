.class public Lorg/apache/logging/log4j/core/lookup/JmxRuntimeInputArgumentsLookup;
.super Lorg/apache/logging/log4j/core/lookup/MapLookup;
.source "JmxRuntimeInputArgumentsLookup.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "jvmrunargs"
.end annotation


# static fields
.field public static final JMX_SINGLETON:Lorg/apache/logging/log4j/core/lookup/JmxRuntimeInputArgumentsLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getInputArguments()Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/logging/log4j/core/lookup/JmxRuntimeInputArgumentsLookup;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/lookup/MapLookup;->toMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/lookup/JmxRuntimeInputArgumentsLookup;-><init>(Ljava/util/Map;)V

    sput-object v1, Lorg/apache/logging/log4j/core/lookup/JmxRuntimeInputArgumentsLookup;->JMX_SINGLETON:Lorg/apache/logging/log4j/core/lookup/JmxRuntimeInputArgumentsLookup;

    .line 38
    .end local v0    # "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/MapLookup;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/lookup/MapLookup;-><init>(Ljava/util/Map;)V

    .line 50
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 60
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/lookup/JmxRuntimeInputArgumentsLookup;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 63
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public lookup(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "key"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/lookup/JmxRuntimeInputArgumentsLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
