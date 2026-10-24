.class public final Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter;
.source "DynamicThresholdFilter.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "filter"
    name = "DynamicThresholdFilter"
    printObject = true
.end annotation


# instance fields
.field private defaultThreshold:Lorg/apache/logging/log4j/Level;

.field private final injector:Lorg/apache/logging/log4j/core/ContextDataInjector;

.field private final key:Ljava/lang/String;

.field private levelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "defaultLevel"    # Lorg/apache/logging/log4j/Level;
    .param p4, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p5, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "pairs",
            "defaultLevel",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            ">;",
            "Lorg/apache/logging/log4j/Level;",
            "Lorg/apache/logging/log4j/core/Filter$Result;",
            "Lorg/apache/logging/log4j/core/Filter$Result;",
            ")V"
        }
    .end annotation

    .line 82
    .local p2, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/Level;>;"
    invoke-direct {p0, p4, p5}, Lorg/apache/logging/log4j/core/filter/AbstractFilter;-><init>(Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    .line 75
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->defaultThreshold:Lorg/apache/logging/log4j/Level;

    .line 77
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataInjectorFactory;->createInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->injector:Lorg/apache/logging/log4j/core/ContextDataInjector;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->levelMap:Ljava/util/Map;

    .line 83
    const-string v0, "key cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->key:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->levelMap:Ljava/util/Map;

    .line 86
    iput-object p3, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->defaultThreshold:Lorg/apache/logging/log4j/Level;

    .line 87
    return-void
.end method

.method public static createFilter(Ljava/lang/String;[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "key"
        .end annotation
    .end param
    .param p1, "pairs"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Pairs"
        .end annotation
    .end param
    .param p2, "defaultThreshold"    # Lorg/apache/logging/log4j/Level;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "defaultThreshold"
        .end annotation
    .end param
    .param p3, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMatch"
        .end annotation
    .end param
    .param p4, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "onMismatch"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "pairs",
            "defaultThreshold",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/Level;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 69
    .local v3, "pair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v3    # "pair":Lorg/apache/logging/log4j/core/util/KeyValuePair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    if-nez p2, :cond_1

    sget-object v1, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p2

    .line 72
    .local v4, "level":Lorg/apache/logging/log4j/Level;
    :goto_1
    new-instance v7, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;-><init>(Ljava/lang/String;Ljava/util/Map;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    return-object v7
.end method

.method private currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->injector:Lorg/apache/logging/log4j/core/ContextDataInjector;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/ContextDataInjector;->rawContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    return-object v0
.end method

.method private filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 3
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "contextMap"    # Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "contextMap"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->key:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->levelMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/Level;

    .line 117
    .local v1, "ctxLevel":Lorg/apache/logging/log4j/Level;
    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->defaultThreshold:Lorg/apache/logging/log4j/Level;

    .line 120
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/logging/log4j/Level;->isMoreSpecificThan(Lorg/apache/logging/log4j/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    :goto_0
    return-object v2

    .line 122
    .end local v1    # "ctxLevel":Lorg/apache/logging/log4j/Level;
    :cond_2
    sget-object v1, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 92
    return v0

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/filter/AbstractFilter;->equalsImpl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 95
    return v2

    .line 97
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 98
    return v2

    .line 100
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;

    .line 101
    .local v1, "other":Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->defaultThreshold:Lorg/apache/logging/log4j/Level;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->defaultThreshold:Lorg/apache/logging/log4j/Level;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    return v2

    .line 104
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->key:Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->key:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 105
    return v2

    .line 107
    :cond_4
    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->levelMap:Ljava/util/Map;

    iget-object v4, v1, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->levelMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 108
    return v2

    .line 110
    :cond_5
    return v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 2
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .param p14, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "params"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->levelMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 232
    const/16 v0, 0x1f

    .line 233
    .local v0, "prime":I
    invoke-super {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilter;->hashCodeImpl()I

    move-result v1

    .line 234
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->defaultThreshold:Lorg/apache/logging/log4j/Level;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/logging/log4j/Level;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 235
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->key:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    .line 236
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->levelMap:Ljava/util/Map;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    .line 237
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->defaultThreshold:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->levelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 246
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    const/4 v1, 0x1

    .line 248
    .local v1, "first":Z
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/DynamicThresholdFilter;->levelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 249
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/Level;>;"
    if-nez v1, :cond_0

    .line 250
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const/4 v1, 0x0

    .line 253
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/logging/log4j/Level;>;"
    goto :goto_0

    .line 255
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    .end local v1    # "first":Z
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
