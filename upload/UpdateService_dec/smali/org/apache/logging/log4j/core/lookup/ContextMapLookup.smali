.class public Lorg/apache/logging/log4j/core/lookup/ContextMapLookup;
.super Ljava/lang/Object;
.source "ContextMapLookup.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/lookup/StrLookup;


# annotations
.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Lookup"
    name = "ctx"
.end annotation


# instance fields
.field private final injector:Lorg/apache/logging/log4j/core/ContextDataInjector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lorg/apache/logging/log4j/core/impl/ContextDataInjectorFactory;->createInjector()Lorg/apache/logging/log4j/core/ContextDataInjector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/lookup/ContextMapLookup;->injector:Lorg/apache/logging/log4j/core/ContextDataInjector;

    return-void
.end method

.method private currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/logging/log4j/core/lookup/ContextMapLookup;->injector:Lorg/apache/logging/log4j/core/ContextDataInjector;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/ContextDataInjector;->rawContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    return-object v0
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

    .line 43
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/lookup/ContextMapLookup;->currentContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

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

    .line 58
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method
