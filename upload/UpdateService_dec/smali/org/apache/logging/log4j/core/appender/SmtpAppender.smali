.class public final Lorg/apache/logging/log4j/core/appender/SmtpAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender;
.source "SmtpAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "SMTP"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x200


# instance fields
.field private final manager:Lorg/apache/logging/log4j/core/net/SmtpManager;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/net/SmtpManager;Z[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/net/SmtpManager;
    .param p5, "ignoreExceptions"    # Z
    .param p6, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "name",
            "filter",
            "layout",
            "manager",
            "ignoreExceptions",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/net/SmtpManager;",
            "Z[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 73
    .local p3, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    .line 74
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender;->manager:Lorg/apache/logging/log4j/core/net/SmtpManager;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/net/SmtpManager;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/SmtpAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Filter;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Layout;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/net/SmtpManager;
    .param p5, "x4"    # Z
    .param p6, "x5"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p7, "x6"    # Lorg/apache/logging/log4j/core/appender/SmtpAppender$1;

    .line 64
    invoke-direct/range {p0 .. p6}, Lorg/apache/logging/log4j/core/appender/SmtpAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/net/SmtpManager;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method public static createAppender(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender;
    .locals 31
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "name"
        .end annotation

        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        .end annotation
    .end param
    .param p2, "to"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "to"
        .end annotation
    .end param
    .param p3, "cc"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "cc"
        .end annotation
    .end param
    .param p4, "bcc"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "bcc"
        .end annotation
    .end param
    .param p5, "from"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "from"
        .end annotation
    .end param
    .param p6, "replyTo"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "replyTo"
        .end annotation
    .end param
    .param p7, "subject"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "subject"
        .end annotation
    .end param
    .param p8, "smtpProtocol"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "smtpProtocol"
        .end annotation
    .end param
    .param p9, "smtpHost"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "smtpHost"
        .end annotation
    .end param
    .param p10, "smtpPortStr"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            defaultString = "0"
            value = "smtpPort"
        .end annotation

        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;
        .end annotation
    .end param
    .param p11, "smtpUsername"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "smtpUsername"
        .end annotation
    .end param
    .param p12, "smtpPassword"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            sensitive = true
            value = "smtpPassword"
        .end annotation
    .end param
    .param p13, "smtpDebug"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "smtpDebug"
        .end annotation
    .end param
    .param p14, "bufferSizeStr"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "bufferSize"
        .end annotation
    .end param
    .param p15    # Lorg/apache/logging/log4j/core/Layout;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Layout"
        .end annotation
    .end param
    .param p16, "filter"    # Lorg/apache/logging/log4j/core/Filter;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Filter"
        .end annotation
    .end param
    .param p17, "ignore"    # Ljava/lang/String;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
            value = "ignoreExceptions"
        .end annotation
    .end param
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
            0x0,
            0x0,
            0x10
        }
        names = {
            "config",
            "name",
            "to",
            "cc",
            "bcc",
            "from",
            "replyTo",
            "subject",
            "smtpProtocol",
            "smtpHost",
            "smtpPortStr",
            "smtpUsername",
            "smtpPassword",
            "smtpDebug",
            "bufferSizeStr",
            "layout",
            "filter",
            "ignore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            ")",
            "Lorg/apache/logging/log4j/core/appender/SmtpAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    .local p15, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 305
    sget-object v1, Lorg/apache/logging/log4j/core/appender/SmtpAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "No name provided for SmtpAppender"

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 306
    return-object v0

    .line 309
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v8, p17

    invoke-static {v8, v1}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 310
    .local v9, "ignoreExceptions":Z
    const/4 v1, 0x0

    move-object/from16 v10, p10

    invoke-static {v10, v1}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->parseInt(Ljava/lang/String;I)I

    move-result v27

    .line 311
    .local v27, "smtpPort":I
    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v28

    .line 312
    .local v28, "isSmtpDebug":Z
    if-nez p14, :cond_1

    const/16 v1, 0x200

    goto :goto_0

    :cond_1
    invoke-static/range {p14 .. p14}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    move/from16 v25, v1

    .line 314
    .local v25, "bufferSize":I
    if-nez p15, :cond_2

    .line 315
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->createDefaultLayout()Lorg/apache/logging/log4j/core/layout/HtmlLayout;

    move-result-object v1

    move-object/from16 v29, v1

    .end local p15    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local v1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    goto :goto_1

    .line 314
    .end local v1    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .restart local p15    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    :cond_2
    move-object/from16 v29, p15

    .line 317
    .end local p15    # "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local v29, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    :goto_1
    if-nez p16, :cond_3

    .line 318
    invoke-static {v0, v0, v0}, Lorg/apache/logging/log4j/core/filter/ThresholdFilter;->createFilter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/filter/ThresholdFilter;

    move-result-object v1

    move-object/from16 v30, v1

    .end local p16    # "filter":Lorg/apache/logging/log4j/core/Filter;
    .local v1, "filter":Lorg/apache/logging/log4j/core/Filter;
    goto :goto_2

    .line 317
    .end local v1    # "filter":Lorg/apache/logging/log4j/core/Filter;
    .restart local p16    # "filter":Lorg/apache/logging/log4j/core/Filter;
    :cond_3
    move-object/from16 v30, p16

    .line 320
    .end local p16    # "filter":Lorg/apache/logging/log4j/core/Filter;
    .local v30, "filter":Lorg/apache/logging/log4j/core/Filter;
    :goto_2
    if-eqz p0, :cond_4

    move-object/from16 v11, p0

    goto :goto_3

    :cond_4
    new-instance v1, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;-><init>()V

    move-object v11, v1

    .line 322
    .local v11, "configuration":Lorg/apache/logging/log4j/core/config/Configuration;
    :goto_3
    nop

    .line 323
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    .line 322
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move/from16 v20, v27

    move-object/from16 v21, p11

    move-object/from16 v22, p12

    move/from16 v23, v28

    invoke-static/range {v11 .. v26}, Lorg/apache/logging/log4j/core/net/SmtpManager;->getSmtpManager(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Lorg/apache/logging/log4j/core/net/SmtpManager;

    move-result-object v12

    .line 324
    .local v12, "manager":Lorg/apache/logging/log4j/core/net/SmtpManager;
    if-nez v12, :cond_5

    .line 325
    return-object v0

    .line 328
    :cond_5
    new-instance v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender;

    const/4 v7, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, v30

    move-object/from16 v4, v29

    move-object v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/appender/SmtpAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/net/SmtpManager;Z[Lorg/apache/logging/log4j/core/config/Property;)V

    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 276
    new-instance v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
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

    .line 353
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender;->manager:Lorg/apache/logging/log4j/core/net/SmtpManager;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/logging/log4j/core/net/SmtpManager;->sendEvents(Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 354
    return-void
.end method

.method public isFiltered(Lorg/apache/logging/log4j/core/LogEvent;)Z
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

    .line 338
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractAppender;->isFiltered(Lorg/apache/logging/log4j/core/LogEvent;)Z

    move-result v0

    .line 339
    .local v0, "filtered":Z
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender;->manager:Lorg/apache/logging/log4j/core/net/SmtpManager;

    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/net/SmtpManager;->add(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 342
    :cond_0
    return v0
.end method
