.class public Lorg/apache/logging/log4j/core/lookup/MainMapLookup;
.super Lorg/apache/logging/log4j/core/lookup/MapLookup;
.source "MainMapLookup.java"


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "main"
.end annotation


# static fields
.field static final MAIN_SINGLETON:Lorg/apache/logging/log4j/core/lookup/MapLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lorg/apache/logging/log4j/core/lookup/MapLookup;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/logging/log4j/core/lookup/MapLookup;->newMap(I)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/lookup/MapLookup;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/apache/logging/log4j/core/lookup/MainMapLookup;->MAIN_SINGLETON:Lorg/apache/logging/log4j/core/lookup/MapLookup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/MapLookup;-><init>()V

    .line 44
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

    .line 47
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/lookup/MapLookup;-><init>(Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public static varargs setMainArguments([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .line 79
    if-nez p0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/MainMapLookup;->MAIN_SINGLETON:Lorg/apache/logging/log4j/core/lookup/MapLookup;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/lookup/MapLookup;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/lookup/MainMapLookup;->initMap([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 83
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 92
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/MainMapLookup;->MAIN_SINGLETON:Lorg/apache/logging/log4j/core/lookup/MapLookup;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/lookup/MapLookup;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

    .line 87
    sget-object v0, Lorg/apache/logging/log4j/core/lookup/MainMapLookup;->MAIN_SINGLETON:Lorg/apache/logging/log4j/core/lookup/MapLookup;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/lookup/MapLookup;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
