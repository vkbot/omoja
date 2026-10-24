.class public Lorg/apache/logging/log4j/core/appender/SyslogAppender;
.super Lorg/apache/logging/log4j/core/appender/SocketAppender;
.source "SyslogAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "Syslog"
    printObject = true
.end annotation


# static fields
.field protected static final RFC5424:Ljava/lang/String; = "RFC5424"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZLorg/apache/logging/log4j/core/net/AbstractSocketManager;Lorg/apache/logging/log4j/core/net/Advertiser;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "immediateFlush"    # Z
    .param p6, "manager"    # Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
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
            "ignoreExceptions",
            "immediateFlush",
            "manager",
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
            "ZZ",
            "Lorg/apache/logging/log4j/core/net/AbstractSocketManager;",
            "Lorg/apache/logging/log4j/core/net/Advertiser;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    sget-object v8, Lorg/apache/logging/log4j/core/config/Property;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/Property;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/appender/SocketAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/net/AbstractSocketManager;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 322
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZLorg/apache/logging/log4j/core/net/AbstractSocketManager;Lorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "ignoreExceptions"    # Z
    .param p5, "immediateFlush"    # Z
    .param p6, "manager"    # Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
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
            "ignoreExceptions",
            "immediateFlush",
            "manager",
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
            "ZZ",
            "Lorg/apache/logging/log4j/core/net/AbstractSocketManager;",
            "Lorg/apache/logging/log4j/core/net/Advertiser;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 310
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/appender/SocketAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/net/AbstractSocketManager;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 311
    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createAppender(Ljava/lang/String;ILjava/lang/String;Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;IIZLjava/lang/String;ZZLorg/apache/logging/log4j/core/net/Facility;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Ljava/lang/String;[Lorg/apache/logging/log4j/core/layout/LoggerFields;Z)Lorg/apache/logging/log4j/core/appender/SyslogAppender;
    .locals 16
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "protocolStr"    # Ljava/lang/String;
    .param p3, "sslConfiguration"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .param p4, "connectTimeoutMillis"    # I
    .param p5, "reconnectDelayMillis"    # I
    .param p6, "immediateFail"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "immediateFlush"    # Z
    .param p9, "ignoreExceptions"    # Z
    .param p10, "facility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "enterpriseNumber"    # I
    .param p13, "includeMdc"    # Z
    .param p14, "mdcId"    # Ljava/lang/String;
    .param p15, "mdcPrefix"    # Ljava/lang/String;
    .param p16, "eventPrefix"    # Ljava/lang/String;
    .param p17, "newLine"    # Z
    .param p18, "escapeNL"    # Ljava/lang/String;
    .param p19, "appName"    # Ljava/lang/String;
    .param p20, "msgId"    # Ljava/lang/String;
    .param p21, "excludes"    # Ljava/lang/String;
    .param p22, "includes"    # Ljava/lang/String;
    .param p23, "required"    # Ljava/lang/String;
    .param p24, "format"    # Ljava/lang/String;
    .param p25, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p26, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p27, "charset"    # Ljava/nio/charset/Charset;
    .param p28, "exceptionPattern"    # Ljava/lang/String;
    .param p29, "loggerFields"    # [Lorg/apache/logging/log4j/core/layout/LoggerFields;
    .param p30, "advertise"    # Z
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
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "host",
            "port",
            "protocolStr",
            "sslConfiguration",
            "connectTimeoutMillis",
            "reconnectDelayMillis",
            "immediateFail",
            "name",
            "immediateFlush",
            "ignoreExceptions",
            "facility",
            "id",
            "enterpriseNumber",
            "includeMdc",
            "mdcId",
            "mdcPrefix",
            "eventPrefix",
            "newLine",
            "escapeNL",
            "appName",
            "msgId",
            "excludes",
            "includes",
            "required",
            "format",
            "filter",
            "configuration",
            "charset",
            "exceptionPattern",
            "loggerFields",
            "advertise"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<",
            "TB;>;>(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;",
            "IIZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/net/Facility;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/logging/log4j/core/layout/LoggerFields;",
            "Z)",
            "Lorg/apache/logging/log4j/core/appender/SyslogAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    move/from16 v0, p13

    move-object/from16 v1, p19

    invoke-static {}, Lorg/apache/logging/log4j/core/appender/SyslogAppender;->newSyslogAppenderBuilder()Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 401
    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setHost(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    .line 402
    move/from16 v4, p1

    invoke-virtual {v2, v4}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setPort(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    const-class v5, Lorg/apache/logging/log4j/core/net/Protocol;

    .line 403
    move-object/from16 v6, p2

    invoke-static {v5, v6}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/net/Protocol;

    invoke-virtual {v2, v5}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setProtocol(Lorg/apache/logging/log4j/core/net/Protocol;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    .line 404
    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setSslConfiguration(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    .line 405
    move/from16 v7, p4

    invoke-virtual {v2, v7}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setConnectTimeoutMillis(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    .line 406
    move/from16 v8, p5

    invoke-virtual {v2, v8}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setReconnectDelayMillis(I)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    .line 407
    move/from16 v9, p6

    invoke-virtual {v2, v9}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setImmediateFail(Z)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    .line 408
    move/from16 v10, p8

    invoke-virtual {v2, v10}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setImmediateFlush(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move/from16 v11, p9

    invoke-virtual {v2, v11}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-object/from16 v12, p25

    invoke-virtual {v2, v12}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    .line 409
    move-object/from16 v13, p26

    invoke-virtual {v2, v13}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    .line 410
    move/from16 v14, p30

    invoke-virtual {v2, v14}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setAdvertise(Z)Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    .line 411
    move-object/from16 v15, p10

    invoke-virtual {v2, v15}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setFacility(Lorg/apache/logging/log4j/core/net/Facility;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 412
    move-object/from16 v3, p11

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setId(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 413
    move/from16 v3, p12

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setEnterpriseNumber(I)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 414
    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setIncludeMdc(Z)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 415
    move-object/from16 v3, p14

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setMdcId(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 416
    move-object/from16 v3, p15

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setMdcPrefix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 417
    move-object/from16 v3, p16

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setEventPrefix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 418
    move/from16 v3, p17

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setNewLine(Z)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 419
    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setAppName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 420
    move-object/from16 v1, p20

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setMsgId(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 421
    move-object/from16 v1, p21

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setExcludes(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 422
    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setIncludeMdc(Z)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 423
    move-object/from16 v0, p23

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setRequired(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 424
    move-object/from16 v0, p24

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setFormat(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 425
    move-object/from16 v0, p27

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setCharsetName(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 426
    move-object/from16 v0, p28

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setExceptionPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 427
    move-object/from16 v0, p29

    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->setLoggerFields([Lorg/apache/logging/log4j/core/layout/LoggerFields;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/SyslogAppender;

    move-result-object v2

    .line 400
    return-object v2
.end method

.method public static newSyslogAppenderBuilder()Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 435
    new-instance v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method
