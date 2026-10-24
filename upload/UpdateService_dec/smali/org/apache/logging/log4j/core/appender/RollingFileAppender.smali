.class public final Lorg/apache/logging/log4j/core/appender/RollingFileAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.source "RollingFileAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<",
        "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "RollingFile"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final PLUGIN_NAME:Ljava/lang/String; = "RollingFile"


# instance fields
.field private advertisement:Ljava/lang/Object;

.field private final advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

.field private final fileName:Ljava/lang/String;

.field private final filePattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;Ljava/lang/String;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "filePattern"    # Ljava/lang/String;
    .param p7, "ignoreExceptions"    # Z
    .param p8, "immediateFlush"    # Z
    .param p9, "advertiser"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .param p10, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "layout",
            "filter",
            "manager",
            "fileName",
            "filePattern",
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
            "Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/net/Advertiser;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 281
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v8, p0

    move-object/from16 v9, p9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p10

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V

    .line 282
    if-eqz v9, :cond_0

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 284
    .local v0, "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "name"

    move-object v2, p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-interface {v9, v0}, Lorg/apache/logging/log4j/core/net/Advertiser;->advertise(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->advertisement:Ljava/lang/Object;

    goto :goto_0

    .line 282
    .end local v0    # "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v2, p1

    .line 288
    :goto_0
    move-object v0, p5

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->fileName:Ljava/lang/String;

    .line 289
    move-object/from16 v1, p6

    iput-object v1, v8, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->filePattern:Ljava/lang/String;

    .line 290
    iput-object v9, v8, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    .line 291
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;Ljava/lang/String;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/RollingFileAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Layout;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .param p10, "x9"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p11, "x10"    # Lorg/apache/logging/log4j/core/appender/RollingFileAppender$1;

    .line 51
    invoke-direct/range {p0 .. p10}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;Ljava/lang/String;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender;
    .locals 16
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "filePattern"    # Ljava/lang/String;
    .param p2, "append"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "bufferedIO"    # Ljava/lang/String;
    .param p5, "bufferSizeStr"    # Ljava/lang/String;
    .param p6, "immediateFlush"    # Ljava/lang/String;
    .param p7, "policy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p8, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p10, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p11, "ignore"    # Ljava/lang/String;
    .param p12, "advertise"    # Ljava/lang/String;
    .param p13, "advertiseUri"    # Ljava/lang/String;
    .param p14, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            0x10
        }
        names = {
            "fileName",
            "filePattern",
            "append",
            "name",
            "bufferedIO",
            "bufferSizeStr",
            "immediateFlush",
            "policy",
            "strategy",
            "layout",
            "filter",
            "ignore",
            "advertise",
            "advertiseUri",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<",
            "TB;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/RollingFileAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    .local p9, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/16 v0, 0x2000

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 383
    .local v0, "bufferSize":I
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->newBuilder()Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    .line 384
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withAdvertise(Z)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    .line 385
    move-object/from16 v3, p13

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withAdvertiseUri(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    .line 386
    const/4 v4, 0x1

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withAppend(Z)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    .line 387
    move-object/from16 v6, p4

    invoke-static {v6, v4}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v2, v7}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withBufferedIo(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    .line 388
    invoke-virtual {v2, v0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withBufferSize(I)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    .line 389
    move-object/from16 v7, p14

    invoke-virtual {v2, v7}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    .line 390
    move-object/from16 v8, p0

    invoke-virtual {v2, v8}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    .line 391
    move-object/from16 v9, p1

    invoke-virtual {v2, v9}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withFilePattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    move-object/from16 v10, p10

    invoke-virtual {v2, v10}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-object/from16 v11, p11

    invoke-static {v11, v4}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v2, v12}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    .line 392
    move-object/from16 v12, p6

    invoke-static {v12, v4}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withImmediateFlush(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-object/from16 v4, p9

    invoke-virtual {v2, v4}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    .line 393
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withCreateOnDemand(Z)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    .line 394
    invoke-virtual {v2, v13}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withLocking(Z)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    move-object/from16 v13, p3

    invoke-virtual {v2, v13}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    .line 395
    move-object/from16 v14, p7

    invoke-virtual {v2, v14}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withPolicy(Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    .line 396
    move-object/from16 v15, p8

    invoke-virtual {v2, v15}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->withStrategy(Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    move-result-object v2

    .line 397
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/RollingFileAppender;

    move-result-object v2

    .line 383
    return-object v2
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 409
    new-instance v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method


# virtual methods
.method public append(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->getManager()Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->checkRollover(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 312
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->append(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 313
    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePattern()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->filePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggeringPolicy()Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            ">()TT;"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->getManager()Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getTriggeringPolicy()Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    move-result-object v0

    return-object v0
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
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

    .line 295
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->setStopping()V

    .line 296
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    .line 297
    .local v0, "stopped":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    if-eqz v1, :cond_0

    .line 298
    iget-object v2, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->advertisement:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/core/net/Advertiser;->unadvertise(Ljava/lang/Object;)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->setStopped()V

    .line 301
    return v0
.end method
