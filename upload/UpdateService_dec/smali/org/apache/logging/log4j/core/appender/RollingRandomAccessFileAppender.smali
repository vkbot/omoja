.class public final Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.source "RollingRandomAccessFileAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<",
        "Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "RollingRandomAccessFile"
    printObject = true
.end annotation


# instance fields
.field private final advertisement:Ljava/lang/Object;

.field private final advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

.field private final fileName:Ljava/lang/String;

.field private final filePattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;Ljava/lang/String;Ljava/lang/String;ZZILorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "filePattern"    # Ljava/lang/String;
    .param p7, "ignoreExceptions"    # Z
    .param p8, "immediateFlush"    # Z
    .param p9, "bufferSize"    # I
    .param p10, "advertiser"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .param p11, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "name",
            "layout",
            "filter",
            "manager",
            "fileName",
            "filePattern",
            "ignoreExceptions",
            "immediateFlush",
            "bufferSize",
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
            "Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZI",
            "Lorg/apache/logging/log4j/core/net/Advertiser;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 207
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v8, p0

    move-object/from16 v9, p10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p11

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V

    .line 208
    if-eqz v9, :cond_0

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 210
    .local v0, "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "name"

    move-object v2, p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {v9, v0}, Lorg/apache/logging/log4j/core/net/Advertiser;->advertise(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->advertisement:Ljava/lang/Object;

    .line 213
    .end local v0    # "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 214
    :cond_0
    move-object v2, p1

    const/4 v0, 0x0

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->advertisement:Ljava/lang/Object;

    .line 216
    :goto_0
    move-object v0, p5

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->fileName:Ljava/lang/String;

    .line 217
    move-object/from16 v1, p6

    iput-object v1, v8, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->filePattern:Ljava/lang/String;

    .line 218
    iput-object v9, v8, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;Ljava/lang/String;Ljava/lang/String;ZZILorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Layout;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # I
    .param p10, "x9"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .param p11, "x10"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p12, "x11"    # Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$1;

    .line 51
    invoke-direct/range {p0 .. p11}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;Ljava/lang/String;Ljava/lang/String;ZZILorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;
    .locals 17
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "filePattern"    # Ljava/lang/String;
    .param p2, "append"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "immediateFlush"    # Ljava/lang/String;
    .param p5, "bufferSizeStr"    # Ljava/lang/String;
    .param p6, "policy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .param p7, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .param p9, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p10, "ignoreExceptions"    # Ljava/lang/String;
    .param p11, "advertise"    # Ljava/lang/String;
    .param p12, "advertiseURI"    # Ljava/lang/String;
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
            "fileName",
            "filePattern",
            "append",
            "name",
            "immediateFlush",
            "bufferSizeStr",
            "policy",
            "strategy",
            "layout",
            "filter",
            "ignoreExceptions",
            "advertise",
            "advertiseURI",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<",
            "TB;>;>(",
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
            "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    .local p8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v0, 0x1

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 318
    .local v2, "isAppend":Z
    move-object/from16 v3, p10

    invoke-static {v3, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 319
    .local v4, "isIgnoreExceptions":Z
    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 320
    .local v0, "isImmediateFlush":Z
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 321
    .local v6, "isAdvertise":Z
    const/high16 v7, 0x40000

    move-object/from16 v8, p5

    invoke-static {v8, v7}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 323
    .local v7, "bufferSize":I
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->newBuilder()Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move-result-object v9

    .line 324
    invoke-virtual {v9, v6}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withAdvertise(Z)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move-result-object v9

    .line 325
    move-object/from16 v10, p12

    invoke-virtual {v9, v10}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withAdvertiseURI(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move-result-object v9

    .line 326
    invoke-virtual {v9, v2}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withAppend(Z)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move-result-object v9

    .line 327
    invoke-virtual {v9, v7}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withBufferSize(I)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    .line 328
    move-object/from16 v11, p13

    invoke-virtual {v9, v11}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    .line 329
    move-object/from16 v12, p0

    invoke-virtual {v9, v12}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move-result-object v9

    .line 330
    move-object/from16 v13, p1

    invoke-virtual {v9, v13}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withFilePattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move-result-object v9

    move-object/from16 v14, p9

    invoke-virtual {v9, v14}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    invoke-virtual {v9, v4}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    .line 331
    invoke-virtual {v9, v0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withImmediateFlush(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move-object/from16 v15, p8

    invoke-virtual {v9, v15}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move/from16 v16, v0

    move-object/from16 v0, p3

    .end local v0    # "isImmediateFlush":Z
    .local v16, "isImmediateFlush":Z
    invoke-virtual {v9, v0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    .line 332
    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withPolicy(Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move-result-object v9

    .line 333
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withStrategy(Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    move-result-object v9

    .line 334
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;

    move-result-object v9

    .line 323
    return-object v9
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 339
    new-instance v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

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

    .line 239
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->getManager()Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;

    .line 240
    .local v0, "manager":Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->checkRollover(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 243
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->append(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 244
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 269
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->getManager()Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePattern()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->filePattern:Ljava/lang/String;

    return-object v0
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

    .line 223
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->setStopping()V

    .line 224
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    .line 225
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->advertisement:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/net/Advertiser;->unadvertise(Ljava/lang/Object;)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->setStopped()V

    .line 229
    const/4 v0, 0x1

    return v0
.end method
