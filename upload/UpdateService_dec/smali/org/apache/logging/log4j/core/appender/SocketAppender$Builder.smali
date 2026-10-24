.class public Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
.source "SocketAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/SocketAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<",
        "Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;",
        ">;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/SocketAppender;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/SocketAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/SocketAppender;
    .locals 19

    .line 255
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->isImmediateFlush()Z

    move-result v0

    .line 256
    .local v0, "immediateFlush":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->isBufferedIo()Z

    move-result v1

    .line 257
    .local v1, "bufferedIo":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v13

    .line 258
    .local v13, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v14, 0x0

    if-nez v13, :cond_0

    .line 259
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "No layout provided for SocketAppender"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 260
    return-object v14

    .line 263
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v15

    .line 264
    .local v15, "name":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 265
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "No name provided for SocketAppender"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 266
    return-object v14

    .line 269
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getProtocol()Lorg/apache/logging/log4j/core/net/Protocol;

    move-result-object v16

    .line 270
    .local v16, "protocol":Lorg/apache/logging/log4j/core/net/Protocol;
    if-eqz v16, :cond_2

    move-object/from16 v2, v16

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/apache/logging/log4j/core/net/Protocol;->TCP:Lorg/apache/logging/log4j/core/net/Protocol;

    :goto_0
    move-object v12, v2

    .line 271
    .local v12, "actualProtocol":Lorg/apache/logging/log4j/core/net/Protocol;
    sget-object v2, Lorg/apache/logging/log4j/core/net/Protocol;->UDP:Lorg/apache/logging/log4j/core/net/Protocol;

    if-ne v12, v2, :cond_3

    .line 272
    const/4 v0, 0x1

    .line 275
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getPort()I

    move-result v5

    .line 276
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getConnectTimeoutMillis()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getSslConfiguration()Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getReconnectDelayMillis()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getImmediateFail()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getBufferSize()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getSocketOptions()Lorg/apache/logging/log4j/core/net/SocketOptions;

    move-result-object v17

    .line 275
    move-object v2, v15

    move-object v3, v12

    move-object v10, v13

    move-object/from16 v18, v12

    .end local v12    # "actualProtocol":Lorg/apache/logging/log4j/core/net/Protocol;
    .local v18, "actualProtocol":Lorg/apache/logging/log4j/core/net/Protocol;
    move-object/from16 v12, v17

    invoke-static/range {v2 .. v12}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->createSocketManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/Protocol;Ljava/lang/String;IILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;IZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/AbstractSocketManager;

    move-result-object v11

    .line 278
    .local v11, "manager":Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
    new-instance v12, Lorg/apache/logging/log4j/core/appender/SocketAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->isIgnoreExceptions()Z

    move-result v7

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    :goto_2
    move v8, v2

    .line 279
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getAdvertise()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/Configuration;->getAdvertiser()Lorg/apache/logging/log4j/core/net/Advertiser;

    move-result-object v2

    move-object v9, v2

    goto :goto_3

    :cond_6
    move-object v9, v14

    .line 280
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v10

    move-object v2, v12

    move-object v3, v15

    move-object v4, v13

    move-object v6, v11

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/appender/SocketAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/net/AbstractSocketManager;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 278
    return-object v12
.end method
