.class public Lorg/apache/logging/log4j/core/Logger;
.super Lorg/apache/logging/log4j/spi/AbstractLogger;
.source "Logger.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/Logger$LoggerProxy;,
        Lorg/apache/logging/log4j/core/Logger$PrivateConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/spi/AbstractLogger;",
        "Lorg/apache/logging/log4j/util/Supplier<",
        "Lorg/apache/logging/log4j/core/config/LoggerConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final context:Lorg/apache/logging/log4j/core/LoggerContext;

.field protected volatile privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;


# direct methods
.method protected constructor <init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V
    .locals 2
    .param p1, "context"    # Lorg/apache/logging/log4j/core/LoggerContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "messageFactory"    # Lorg/apache/logging/log4j/message/MessageFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "name",
            "messageFactory"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/spi/AbstractLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    .line 73
    iput-object p1, p0, Lorg/apache/logging/log4j/core/Logger;->context:Lorg/apache/logging/log4j/core/LoggerContext;

    .line 74
    new-instance v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/LoggerContext;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;-><init>(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Logger;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    .line 75
    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/logging/log4j/core/Appender;)V
    .locals 1
    .param p1, "appender"    # Lorg/apache/logging/log4j/core/Appender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appender"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/core/config/Configuration;->addLoggerAppender(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/Appender;)V

    .line 273
    return-void
.end method

.method public addFilter(Lorg/apache/logging/log4j/core/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/core/config/Configuration;->addLoggerFilter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/Filter;)V

    .line 344
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 685
    if-ne p0, p1, :cond_0

    .line 686
    const/4 v0, 0x1

    return v0

    .line 688
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 691
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/Logger;

    .line 692
    .local v0, "that":Lorg/apache/logging/log4j/core/Logger;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 689
    .end local v0    # "that":Lorg/apache/logging/log4j/core/Logger;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public filterCount()I
    .locals 2

    .line 328
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 329
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    if-nez v0, :cond_0

    .line 330
    const/4 v1, 0x0

    return v1

    .line 331
    :cond_0
    instance-of v1, v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    if-eqz v1, :cond_1

    .line 332
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->size()I

    move-result v1

    return v1

    .line 334
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->get()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    return-object v0
.end method

.method public getAppenders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getAppenders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lorg/apache/logging/log4j/core/LoggerContext;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->context:Lorg/apache/logging/log4j/core/LoggerContext;

    return-object v0
.end method

.method public getFilters()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/logging/log4j/core/Filter;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 301
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    if-nez v0, :cond_0

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 303
    :cond_0
    instance-of v1, v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    if-eqz v1, :cond_1

    .line 304
    move-object v1, v0

    check-cast v1, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 306
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/Filter;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->access$000(Lorg/apache/logging/log4j/core/Logger$PrivateConfig;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/logging/log4j/core/Logger;
    .locals 5

    .line 88
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 89
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getParent()Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 90
    .local v0, "lc":Lorg/apache/logging/log4j/core/config/LoggerConfig;
    :goto_0
    if-nez v0, :cond_1

    .line 91
    const/4 v1, 0x0

    return-object v1

    .line 93
    :cond_1
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "lcName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v2

    .line 95
    .local v2, "messageFactory":Lorg/apache/logging/log4j/message/MessageFactory;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/Logger;->context:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v3, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->hasLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    iget-object v3, p0, Lorg/apache/logging/log4j/core/Logger;->context:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-virtual {v3, v1, v2}, Lorg/apache/logging/log4j/core/LoggerContext;->getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/core/Logger;

    move-result-object v3

    return-object v3

    .line 98
    :cond_2
    new-instance v3, Lorg/apache/logging/log4j/core/Logger;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/Logger;->context:Lorg/apache/logging/log4j/core/LoggerContext;

    invoke-direct {v3, v4, v1, v2}, Lorg/apache/logging/log4j/core/Logger;-><init>(Lorg/apache/logging/log4j/core/LoggerContext;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .line 697
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAdditive()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->isAdditive()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 210
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 217
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 224
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "message",
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

    .line 232
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .param p12, "p8"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "message",
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

    .line 240
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 15
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .param p12, "p8"    # Ljava/lang/Object;
    .param p13, "p9"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "message",
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

    .line 248
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public varargs isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method protected log(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "fqcn"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/StackTraceElement;
    .param p5, "message"    # Lorg/apache/logging/log4j/message/Message;
    .param p6, "throwable"    # Ljava/lang/Throwable;
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
            "level",
            "marker",
            "fqcn",
            "location",
            "message",
            "throwable"
        }
    .end annotation

    .line 159
    move-object v9, p0

    iget-object v0, v9, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v10

    .line 160
    .local v10, "strategy":Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
    instance-of v0, v10, Lorg/apache/logging/log4j/core/config/LocationAwareReliabilityStrategy;

    if-eqz v0, :cond_0

    .line 161
    move-object v0, v10

    check-cast v0, Lorg/apache/logging/log4j/core/config/LocationAwareReliabilityStrategy;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v8}, Lorg/apache/logging/log4j/core/config/LocationAwareReliabilityStrategy;->log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v10

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 166
    :goto_0
    return-void
.end method

.method public logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "message"    # Lorg/apache/logging/log4j/message/Message;
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
            "fqcn",
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 151
    if-nez p4, :cond_0

    new-instance v0, Lorg/apache/logging/log4j/message/SimpleMessage;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v8, p4

    .line 152
    .local v8, "msg":Lorg/apache/logging/log4j/message/Message;
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getReliabilityStrategy()Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;

    move-result-object v0

    .line 153
    .local v0, "strategy":Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    move-object v9, p5

    invoke-interface/range {v2 .. v9}, Lorg/apache/logging/log4j/core/config/ReliabilityStrategy;->log(Lorg/apache/logging/log4j/util/Supplier;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method public removeAppender(Lorg/apache/logging/log4j/core/Appender;)V
    .locals 2
    .param p1, "appender"    # Lorg/apache/logging/log4j/core/Appender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appender"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-interface {p1}, Lorg/apache/logging/log4j/core/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->removeAppender(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method protected requiresLocation()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->access$100(Lorg/apache/logging/log4j/core/Logger$PrivateConfig;)Z

    move-result v0

    return v0
.end method

.method public setAdditive(Z)V
    .locals 1
    .param p1, "additive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "additive"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v0, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0, p0, p1}, Lorg/apache/logging/log4j/core/config/Configuration;->setLoggerAdditive(Lorg/apache/logging/log4j/core/Logger;Z)V

    .line 364
    return-void
.end method

.method public declared-synchronized setLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 3
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 120
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    if-eqz p1, :cond_1

    .line 124
    move-object v0, p1

    .local v0, "actualLevel":Lorg/apache/logging/log4j/Level;
    goto :goto_1

    .line 126
    .end local v0    # "actualLevel":Lorg/apache/logging/log4j/Level;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getParent()Lorg/apache/logging/log4j/core/Logger;

    move-result-object v0

    .line 127
    .local v0, "parent":Lorg/apache/logging/log4j/core/Logger;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/Logger;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    goto :goto_0

    .end local p0    # "this":Lorg/apache/logging/log4j/core/Logger;
    :cond_2
    iget-object v1, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->access$000(Lorg/apache/logging/log4j/core/Logger$PrivateConfig;)Lorg/apache/logging/log4j/Level;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 129
    .local v0, "actualLevel":Lorg/apache/logging/log4j/Level;
    :goto_1
    new-instance v1, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;-><init>(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/Logger$PrivateConfig;Lorg/apache/logging/log4j/Level;)V

    iput-object v1, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 118
    .end local v0    # "actualLevel":Lorg/apache/logging/log4j/Level;
    .end local p1    # "level":Lorg/apache/logging/log4j/Level;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "nameLevel":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/Logger;->context:Lorg/apache/logging/log4j/core/LoggerContext;

    if-nez v1, :cond_0

    .line 677
    return-object v0

    .line 679
    :cond_0
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "contextName":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method protected updateConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 384
    new-instance v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    invoke-direct {v0, p0, p1, p0}, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;-><init>(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Logger;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger;->privateConfig:Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    .line 385
    return-void
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/apache/logging/log4j/core/Logger$LoggerProxy;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/Logger$LoggerProxy;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    return-object v0
.end method
