.class public Lorg/apache/logging/log4j/spi/LoggerRegistry;
.super Ljava/lang/Object;
.source "LoggerRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory;,
        Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;,
        Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/logging/log4j/spi/ExtendedLogger;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY_KEY:Ljava/lang/String;


# instance fields
.field private final factory:Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->DEFAULT_FACTORY_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    new-instance v0, Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;-><init>(Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    .local p1, "factory":Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;, "Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "factory"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->factory:Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;

    .line 97
    invoke-interface {p1}, Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;->createOuterMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->map:Ljava/util/Map;

    .line 98
    return-void
.end method

.method private static factoryClassKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 101
    .local p0, "messageFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/message/MessageFactory;>;"
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->DEFAULT_FACTORY_KEY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static factoryKey(Lorg/apache/logging/log4j/message/MessageFactory;)Ljava/lang/String;
    .locals 1
    .param p0, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageFactory"
        }
    .end annotation

    .line 105
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->DEFAULT_FACTORY_KEY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "factoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factoryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 141
    .local v0, "inner":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    if-nez v0, :cond_0

    .line 142
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->factory:Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;

    invoke-interface {v1}, Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;->createInnerMap()Ljava/util/Map;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    sget-object v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->DEFAULT_FACTORY_KEY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/ExtendedLogger;

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ")TT;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    invoke-static {p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->factoryKey(Lorg/apache/logging/log4j/message/MessageFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/ExtendedLogger;

    return-object v0
.end method

.method public getLoggers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLoggers(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getLoggers(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    .local p1, "destination":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 134
    .local v1, "inner":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 135
    .end local v1    # "inner":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    goto :goto_0

    .line 136
    :cond_0
    return-object p1
.end method

.method public hasLogger(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    sget-object v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->DEFAULT_FACTORY_KEY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLogger(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;)Z"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    .local p2, "messageFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/logging/log4j/message/MessageFactory;>;"
    invoke-static {p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->factoryClassKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    invoke-static {p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->factoryKey(Lorg/apache/logging/log4j/message/MessageFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putIfAbsent(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/spi/ExtendedLogger;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory",
            "logger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            "TT;)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/apache/logging/log4j/spi/LoggerRegistry;, "Lorg/apache/logging/log4j/spi/LoggerRegistry<TT;>;"
    .local p3, "logger":Lorg/apache/logging/log4j/spi/ExtendedLogger;, "TT;"
    iget-object v0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->factory:Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;

    invoke-static {p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->factoryKey(Lorg/apache/logging/log4j/message/MessageFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getOrCreateInnerMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1, p1, p3}, Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Lorg/apache/logging/log4j/spi/ExtendedLogger;)V

    .line 181
    return-void
.end method
