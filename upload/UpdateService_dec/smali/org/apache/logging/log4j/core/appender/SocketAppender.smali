.class public Lorg/apache/logging/log4j/core/appender/SocketAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.source "SocketAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;,
        Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<",
        "Lorg/apache/logging/log4j/core/net/AbstractSocketManager;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "Socket"
    printObject = true
.end annotation


# instance fields
.field private final advertisement:Ljava/lang/Object;

.field private final advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/net/AbstractSocketManager;ZZLorg/apache/logging/log4j/core/net/Advertiser;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
    .param p5, "ignoreExceptions"    # Z
    .param p6, "immediateFlush"    # Z
    .param p7, "advertiser"    # Lorg/apache/logging/log4j/core/net/Advertiser;
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
            "name",
            "layout",
            "filter",
            "manager",
            "ignoreExceptions",
            "immediateFlush",
            "advertiser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/net/AbstractSocketManager;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/net/Advertiser;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    sget-object v8, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/appender/SocketAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/net/AbstractSocketManager;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 316
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/net/AbstractSocketManager;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
    .param p5, "ignoreExceptions"    # Z
    .param p6, "immediateFlush"    # Z
    .param p7, "advertiser"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .param p8, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "name",
            "layout",
            "filter",
            "manager",
            "ignoreExceptions",
            "immediateFlush",
            "advertiser",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/net/AbstractSocketManager;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/net/Advertiser;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 295
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v8, p0

    move-object/from16 v9, p7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V

    .line 296
    if-eqz v9, :cond_0

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 298
    .local v0, "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p4}, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 299
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "name"

    move-object v2, p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-interface {v9, v0}, Lorg/apache/logging/log4j/core/net/Advertiser;->advertise(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lorg/apache/logging/log4j/core/appender/SocketAppender;->advertisement:Ljava/lang/Object;

    .line 302
    .end local v0    # "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 303
    :cond_0
    move-object v2, p1

    const/4 v0, 0x0

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/SocketAppender;->advertisement:Ljava/lang/Object;

    .line 305
    :goto_0
    iput-object v9, v8, Lorg/apache/logging/log4j/core/appender/SocketAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    .line 306
    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/logging/log4j/core/appender/SocketAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/logging/log4j/core/appender/SocketAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createAppender(Ljava/lang/String;ILorg/apache/logging/log4j/core/net/Protocol;Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;IIZLjava/lang/String;ZZLorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/SocketAppender;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "protocol"    # Lorg/apache/logging/log4j/core/net/Protocol;
    .param p3, "sslConfig"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "reconnectDelayMillis"    # I
    .param p6, "immediateFail"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "immediateFlush"    # Z
    .param p9, "ignoreExceptions"    # Z
    .param p11, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p12, "advertise"    # Z
    .param p13, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            "host",
            "port",
            "protocol",
            "sslConfig",
            "connectTimeoutMillis",
            "reconnectDelayMillis",
            "immediateFail",
            "name",
            "immediateFlush",
            "ignoreExceptions",
            "layout",
            "filter",
            "advertise",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/logging/log4j/core/net/Protocol;",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            "IIZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Z",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/SocketAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 385
    .local p10, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->newBuilder()Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p12}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setAdvertise(Z)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    .line 387
    invoke-virtual {v0, p13}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    .line 388
    invoke-virtual {v0, p4}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setConnectTimeoutMillis(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    invoke-virtual {v0, p11}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    .line 389
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setHost(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    invoke-virtual {v0, p9}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    .line 390
    invoke-virtual {v0, p6}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setImmediateFail(Z)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    invoke-virtual {v0, p10}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    invoke-virtual {v0, p7}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    .line 391
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setPort(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    .line 392
    invoke-virtual {v0, p2}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setProtocol(Lorg/apache/logging/log4j/core/net/Protocol;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    .line 393
    invoke-virtual {v0, p5}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setReconnectDelayMillis(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    .line 394
    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->setSslConfiguration(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    .line 395
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/SocketAppender;

    move-result-object v0

    .line 385
    return-object v0
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/SocketAppender;
    .locals 21
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "portNum"    # Ljava/lang/String;
    .param p2, "protocolIn"    # Ljava/lang/String;
    .param p3, "sslConfig"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "delayMillis"    # Ljava/lang/String;
    .param p6, "immediateFail"    # Ljava/lang/String;
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "immediateFlush"    # Ljava/lang/String;
    .param p9, "ignore"    # Ljava/lang/String;
    .param p11, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p12, "advertise"    # Ljava/lang/String;
    .param p13, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            "host",
            "portNum",
            "protocolIn",
            "sslConfig",
            "connectTimeoutMillis",
            "delayMillis",
            "immediateFail",
            "name",
            "immediateFlush",
            "ignore",
            "layout",
            "filter",
            "advertise",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/SocketAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    .local p10, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v0, 0x1

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 454
    .local v16, "isFlush":Z
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 455
    .local v17, "isAdvertise":Z
    move-object/from16 v15, p9

    invoke-static {v15, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 456
    .local v18, "ignoreExceptions":Z
    move-object/from16 v14, p6

    invoke-static {v14, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 457
    .local v0, "fail":Z
    const/4 v2, 0x0

    move-object/from16 v13, p5

    invoke-static {v13, v2}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->parseInt(Ljava/lang/String;I)I

    move-result v19

    .line 458
    .local v19, "reconnectDelayMillis":I
    move-object/from16 v12, p1

    invoke-static {v12, v2}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->parseInt(Ljava/lang/String;I)I

    move-result v20

    .line 459
    .local v20, "port":I
    if-nez p2, :cond_0

    sget-object v2, Lorg/apache/logging/log4j/core/net/Protocol;->UDP:Lorg/apache/logging/log4j/core/net/Protocol;

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/apache/logging/log4j/core/net/Protocol;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/net/Protocol;

    move-result-object v2

    :goto_0
    move-object v4, v2

    .line 460
    .local v4, "p":Lorg/apache/logging/log4j/core/net/Protocol;
    move-object/from16 v2, p0

    move/from16 v3, v20

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, v19

    move v8, v0

    move-object/from16 v9, p7

    move/from16 v10, v16

    move/from16 v11, v18

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, v17

    move-object/from16 v15, p13

    invoke-static/range {v2 .. v15}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->createAppender(Ljava/lang/String;ILorg/apache/logging/log4j/core/net/Protocol;Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;IIZLjava/lang/String;ZZLorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZLorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/SocketAppender;

    move-result-object v2

    return-object v2
.end method

.method protected static createSocketManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/Protocol;Ljava/lang/String;IILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;IZLorg/apache/logging/log4j/core/Layout;I)Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "protocol"    # Lorg/apache/logging/log4j/core/net/Protocol;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "sslConfig"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p6, "reconnectDelayMillis"    # I
    .param p7, "immediateFail"    # Z
    .param p9, "bufferSize"    # I
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
            "name",
            "protocol",
            "host",
            "port",
            "connectTimeoutMillis",
            "sslConfig",
            "reconnectDelayMillis",
            "immediateFail",
            "layout",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/net/Protocol;",
            "Ljava/lang/String;",
            "II",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            "IZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I)",
            "Lorg/apache/logging/log4j/core/net/AbstractSocketManager;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    .local p8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->createSocketManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/Protocol;Ljava/lang/String;IILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;IZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/AbstractSocketManager;

    move-result-object v0

    return-object v0
.end method

.method protected static createSocketManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/Protocol;Ljava/lang/String;IILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;IZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
    .locals 19
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "protocol"    # Lorg/apache/logging/log4j/core/net/Protocol;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "sslConfig"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p6, "reconnectDelayMillis"    # I
    .param p7, "immediateFail"    # Z
    .param p9, "bufferSize"    # I
    .param p10, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
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
            "name",
            "protocol",
            "host",
            "port",
            "connectTimeoutMillis",
            "sslConfig",
            "reconnectDelayMillis",
            "immediateFail",
            "layout",
            "bufferSize",
            "socketOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/net/Protocol;",
            "Ljava/lang/String;",
            "II",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            "IZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I",
            "Lorg/apache/logging/log4j/core/net/SocketOptions;",
            ")",
            "Lorg/apache/logging/log4j/core/net/AbstractSocketManager;"
        }
    .end annotation

    .line 488
    .local p8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    sget-object v0, Lorg/apache/logging/log4j/core/net/Protocol;->TCP:Lorg/apache/logging/log4j/core/net/Protocol;

    move-object/from16 v1, p1

    if-ne v1, v0, :cond_0

    if-eqz p5, :cond_0

    .line 490
    sget-object v0, Lorg/apache/logging/log4j/core/net/Protocol;->SSL:Lorg/apache/logging/log4j/core/net/Protocol;

    move-object v9, v0

    .end local p1    # "protocol":Lorg/apache/logging/log4j/core/net/Protocol;
    .local v0, "protocol":Lorg/apache/logging/log4j/core/net/Protocol;
    goto :goto_0

    .line 492
    .end local v0    # "protocol":Lorg/apache/logging/log4j/core/net/Protocol;
    .restart local p1    # "protocol":Lorg/apache/logging/log4j/core/net/Protocol;
    :cond_0
    move-object v9, v1

    .end local p1    # "protocol":Lorg/apache/logging/log4j/core/net/Protocol;
    .local v9, "protocol":Lorg/apache/logging/log4j/core/net/Protocol;
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/net/Protocol;->SSL:Lorg/apache/logging/log4j/core/net/Protocol;

    if-eq v9, v0, :cond_1

    if-eqz p5, :cond_1

    .line 493
    sget-object v0, Lorg/apache/logging/log4j/core/appender/SocketAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v1, "Appender {} ignoring SSL configuration for {} protocol"

    move-object/from16 v10, p0

    invoke-interface {v0, v1, v10, v9}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 492
    :cond_1
    move-object/from16 v10, p0

    .line 495
    :goto_1
    sget-object v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$1;->$SwitchMap$org$apache$logging$log4j$core$net$Protocol:[I

    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/net/Protocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 502
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    invoke-static/range {v0 .. v8}, Lorg/apache/logging/log4j/core/net/SslSocketManager;->getSocketManager(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/SslSocketManager;

    move-result-object v0

    return-object v0

    .line 505
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/net/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_3
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/net/DatagramSocketManager;->getSocketManager(Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;I)Lorg/apache/logging/log4j/core/net/DatagramSocketManager;

    move-result-object v4

    return-object v4

    .line 497
    :cond_4
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v18, p10

    invoke-static/range {v11 .. v18}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->getSocketManager(Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    move-result-object v4

    return-object v4
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 286
    new-instance v0, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected directEncodeEvent(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 513
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->writeByteArrayToManager(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 514
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->setStopping()V

    .line 321
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    .line 322
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/SocketAppender;->advertisement:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/net/Advertiser;->unadvertise(Ljava/lang/Object;)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->setStopped()V

    .line 326
    const/4 v0, 0x1

    return v0
.end method
