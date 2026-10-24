.class public Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;
.source "SyslogAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/SyslogAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/SocketAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "appName"
    .end annotation
.end field

.field private charsetName:Ljava/nio/charset/Charset;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "charset"
    .end annotation
.end field

.field private enterpriseNumber:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "enterpriseNumber"
    .end annotation
.end field

.field private escapeNL:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "newLineEscape"
    .end annotation
.end field

.field private eventPrefix:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "eventPrefix"
    .end annotation
.end field

.field private exceptionPattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "exceptionPattern"
    .end annotation
.end field

.field private excludes:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "mdcExcludes"
    .end annotation
.end field

.field private facility:Lorg/apache/logging/log4j/core/net/Facility;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "facility"
    .end annotation
.end field

.field private format:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "format"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "id"
    .end annotation
.end field

.field private includeMdc:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "includeMdc"
    .end annotation
.end field

.field private includes:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "mdcIncludes"
    .end annotation
.end field

.field private loggerFields:[Lorg/apache/logging/log4j/core/layout/LoggerFields;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "LoggerFields"
    .end annotation
.end field

.field private mdcId:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "mdcId"
    .end annotation
.end field

.field private mdcPrefix:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "mdcPrefix"
    .end annotation
.end field

.field private msgId:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "messageId"
    .end annotation
.end field

.field private newLine:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "newLine"
    .end annotation
.end field

.field private required:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "mdcRequired"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/SocketAppender$AbstractBuilder;-><init>()V

    .line 53
    sget-object v0, Lorg/apache/logging/log4j/core/net/Facility;->LOCAL0:Lorg/apache/logging/log4j/core/net/Facility;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    .line 59
    const/16 v0, 0x468c

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->enterpriseNumber:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->includeMdc:Z

    .line 98
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->charsetName:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 50
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/SyslogAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/SyslogAppender;
    .locals 33

    .line 110
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getProtocol()Lorg/apache/logging/log4j/core/net/Protocol;

    move-result-object v12

    .line 111
    .local v12, "protocol":Lorg/apache/logging/log4j/core/net/Protocol;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getSslConfiguration()Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    move-result-object v13

    .line 112
    .local v13, "sslConfiguration":Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    if-nez v13, :cond_1

    sget-object v1, Lorg/apache/logging/log4j/core/net/Protocol;->SSL:Lorg/apache/logging/log4j/core/net/Protocol;

    if-ne v12, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move/from16 v29, v1

    .line 113
    .local v29, "useTlsMessageFormat":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v32

    .line 114
    .local v32, "configuration":Lorg/apache/logging/log4j/core/config/Configuration;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v1

    .line 115
    .local v1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    if-nez v1, :cond_3

    .line 116
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->format:Ljava/lang/String;

    const-string v3, "RFC5424"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v14, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    iget-object v15, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->id:Ljava/lang/String;

    iget v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->enterpriseNumber:I

    move/from16 v16, v2

    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->includeMdc:Z

    move/from16 v17, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->mdcId:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->mdcPrefix:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->eventPrefix:Ljava/lang/String;

    move-object/from16 v20, v2

    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->newLine:Z

    move/from16 v21, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->escapeNL:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->appName:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->msgId:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->excludes:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->includes:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->required:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->exceptionPattern:Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->loggerFields:[Lorg/apache/logging/log4j/core/layout/LoggerFields;

    move-object/from16 v30, v2

    .line 117
    move-object/from16 v31, v32

    invoke-static/range {v14 .. v31}, Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;->createLayout(Lorg/apache/logging/log4j/core/net/Facility;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Lorg/apache/logging/log4j/core/layout/LoggerFields;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/Rfc5424Layout;

    move-result-object v2

    goto :goto_2

    .line 122
    :cond_2
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/SyslogLayout;->newBuilder()Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    .line 123
    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->setFacility(Lorg/apache/logging/log4j/core/net/Facility;)Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    move-result-object v2

    iget-boolean v3, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->newLine:Z

    .line 124
    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->setIncludeNewLine(Z)Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->escapeNL:Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->setEscapeNL(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->charsetName:Ljava/nio/charset/Charset;

    .line 126
    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;

    .line 127
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/layout/SyslogLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/SyslogLayout;

    move-result-object v2

    :goto_2
    move-object v1, v2

    move-object v14, v1

    goto :goto_3

    .line 115
    :cond_3
    move-object v14, v1

    .line 130
    .end local v1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local v14, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v15

    .line 131
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    if-nez v15, :cond_4

    .line 132
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/SyslogAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    const-string v2, "No name provided for SyslogAppender"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 133
    return-object v16

    .line 135
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getPort()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getConnectTimeoutMillis()I

    move-result v5

    .line 136
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getReconnectDelayMillis()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getImmediateFail()Z

    move-result v8

    sget v10, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_BYTE_BUFFER_SIZE:I

    const/4 v11, 0x0

    .line 135
    move-object v1, v15

    move-object v2, v12

    move-object v6, v13

    move-object v9, v14

    invoke-static/range {v1 .. v11}, Lorg/apache/logging/log4j/core/appender/SocketAppender;->createSocketManager(Ljava/lang/String;Lorg/apache/logging/log4j/core/net/Protocol;Ljava/lang/String;IILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;IZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/AbstractSocketManager;

    move-result-object v1

    .line 138
    .local v1, "manager":Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
    new-instance v11, Lorg/apache/logging/log4j/core/appender/SyslogAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->isIgnoreExceptions()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->isImmediateFlush()Z

    move-result v7

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->getAdvertise()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v32 .. v32}, Lorg/apache/logging/log4j/core/config/Configuration;->getAdvertiser()Lorg/apache/logging/log4j/core/net/Advertiser;

    move-result-object v2

    move-object v9, v2

    goto :goto_4

    :cond_5
    move-object/from16 v9, v16

    :goto_4
    const/4 v10, 0x0

    move-object v2, v11

    move-object v3, v15

    move-object v4, v14

    move-object v8, v1

    invoke-direct/range {v2 .. v10}, Lorg/apache/logging/log4j/core/appender/SyslogAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZLorg/apache/logging/log4j/core/net/AbstractSocketManager;Lorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 138
    return-object v11
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 179
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCharsetName()Ljava/nio/charset/Charset;
    .locals 1

    .line 203
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->charsetName:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getEnterpriseNumber()I
    .locals 1

    .line 151
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->enterpriseNumber:I

    return v0
.end method

.method public getEscapeNL()Ljava/lang/String;
    .locals 1

    .line 175
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->escapeNL:Ljava/lang/String;

    return-object v0
.end method

.method public getEventPrefix()Ljava/lang/String;
    .locals 1

    .line 167
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->eventPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionPattern()Ljava/lang/String;
    .locals 1

    .line 207
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->exceptionPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludes()Ljava/lang/String;
    .locals 1

    .line 187
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->excludes:Ljava/lang/String;

    return-object v0
.end method

.method public getFacility()Lorg/apache/logging/log4j/core/net/Facility;
    .locals 1

    .line 143
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 199
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 147
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludes()Ljava/lang/String;
    .locals 1

    .line 191
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->includes:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggerFields()[Lorg/apache/logging/log4j/core/layout/LoggerFields;
    .locals 1

    .line 211
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->loggerFields:[Lorg/apache/logging/log4j/core/layout/LoggerFields;

    return-object v0
.end method

.method public getMdcId()Ljava/lang/String;
    .locals 1

    .line 159
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->mdcId:Ljava/lang/String;

    return-object v0
.end method

.method public getMdcPrefix()Ljava/lang/String;
    .locals 1

    .line 163
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->mdcPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .line 183
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequired()Ljava/lang/String;
    .locals 1

    .line 195
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->required:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeMdc()Z
    .locals 1

    .line 155
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->includeMdc:Z

    return v0
.end method

.method public isNewLine()Z
    .locals 1

    .line 171
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->newLine:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->appName:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setCharsetName(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")TB;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->charsetName:Ljava/nio/charset/Charset;

    .line 291
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setEnterpriseNumber(I)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "enterpriseNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enterpriseNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->enterpriseNumber:I

    .line 226
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setEscapeNL(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "escapeNL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "escapeNL"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->escapeNL:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setEventPrefix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "eventPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "eventPrefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->eventPrefix:Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setExceptionPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "exceptionPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "exceptionPattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->exceptionPattern:Ljava/lang/String;

    .line 296
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setExcludes(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "excludes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "excludes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->excludes:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setFacility(Lorg/apache/logging/log4j/core/net/Facility;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "facility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "facility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/net/Facility;",
            ")TB;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    .line 216
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->format:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 220
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->id:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setIncludeMdc(Z)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "includeMdc"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeMdc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->includeMdc:Z

    .line 231
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setIncludes(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "includes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->includes:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setLoggerFields([Lorg/apache/logging/log4j/core/layout/LoggerFields;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "loggerFields"    # [Lorg/apache/logging/log4j/core/layout/LoggerFields;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggerFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/logging/log4j/core/layout/LoggerFields;",
            ")TB;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->loggerFields:[Lorg/apache/logging/log4j/core/layout/LoggerFields;

    .line 301
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setMdcId(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "mdcId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mdcId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->mdcId:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setMdcPrefix(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "mdcPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mdcPrefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->mdcPrefix:Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setMsgId(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msgId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->msgId:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setNewLine(Z)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "newLine"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newLine"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->newLine:Z

    .line 251
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method

.method public setRequired(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;
    .locals 1
    .param p1, "required"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "required"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->required:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SyslogAppender$Builder;

    return-object v0
.end method
