.class public final Lorg/apache/logging/log4j/core/appender/FileAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.source "FileAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<",
        "Lorg/apache/logging/log4j/core/appender/FileManager;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "File"
    printObject = true
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final PLUGIN_NAME:Ljava/lang/String; = "File"


# instance fields
.field private final advertisement:Ljava/lang/Object;

.field private final advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

.field private final fileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/FileManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/appender/FileManager;
    .param p5, "filename"    # Ljava/lang/String;
    .param p6, "ignoreExceptions"    # Z
    .param p7, "immediateFlush"    # Z
    .param p8, "advertiser"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .param p9, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "name",
            "layout",
            "filter",
            "manager",
            "filename",
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
            "Lorg/apache/logging/log4j/core/appender/FileManager;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/net/Advertiser;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 259
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v8, p0

    move-object/from16 v9, p8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p9

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V

    .line 260
    if-eqz v9, :cond_0

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 262
    .local v0, "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p4}, Lorg/apache/logging/log4j/core/appender/FileManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 263
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "name"

    move-object v2, p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-interface {v9, v0}, Lorg/apache/logging/log4j/core/net/Advertiser;->advertise(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lorg/apache/logging/log4j/core/appender/FileAppender;->advertisement:Ljava/lang/Object;

    .line 266
    .end local v0    # "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 267
    :cond_0
    move-object v2, p1

    const/4 v0, 0x0

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/FileAppender;->advertisement:Ljava/lang/Object;

    .line 269
    :goto_0
    move-object v0, p5

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/FileAppender;->fileName:Ljava/lang/String;

    .line 270
    iput-object v9, v8, Lorg/apache/logging/log4j/core/appender/FileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    .line 271
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/FileManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/FileAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Layout;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/FileManager;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .param p9, "x8"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p10, "x9"    # Lorg/apache/logging/log4j/core/appender/FileAppender$1;

    .line 42
    invoke-direct/range {p0 .. p9}, Lorg/apache/logging/log4j/core/appender/FileAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/FileManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/logging/log4j/core/appender/FileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/logging/log4j/core/appender/FileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/FileAppender;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "append"    # Ljava/lang/String;
    .param p2, "locking"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "immediateFlush"    # Ljava/lang/String;
    .param p5, "ignoreExceptions"    # Ljava/lang/String;
    .param p6, "bufferedIo"    # Ljava/lang/String;
    .param p7, "bufferSizeStr"    # Ljava/lang/String;
    .param p9, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p10, "advertise"    # Ljava/lang/String;
    .param p11, "advertiseUri"    # Ljava/lang/String;
    .param p12, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            "fileName",
            "append",
            "locking",
            "name",
            "immediateFlush",
            "ignoreExceptions",
            "bufferedIo",
            "bufferSizeStr",
            "layout",
            "filter",
            "advertise",
            "advertiseUri",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<",
            "TB;>;>(",
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
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/config/Configuration;",
            ")",
            "Lorg/apache/logging/log4j/core/appender/FileAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    .local p8, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/FileAppender;->newBuilder()Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    move-result-object v0

    .line 231
    invoke-static {p10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->withAdvertise(Z)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p11}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->withAdvertiseUri(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    move-result-object v0

    .line 233
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->withAppend(Z)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    move-result-object v0

    .line 234
    invoke-static {p6, v1}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->withBufferedIo(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    .line 235
    const/16 v2, 0x2000

    invoke-static {p7, v2}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->withBufferSize(I)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    .line 236
    invoke-virtual {v0, p12}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    .line 237
    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->withFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    move-result-object v0

    invoke-virtual {v0, p9}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    invoke-static {p5, v1}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    .line 238
    invoke-static {p4, v1}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->withImmediateFlush(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    invoke-virtual {v0, p8}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    .line 239
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->withLocking(Z)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    .line 240
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/FileAppender;

    move-result-object v0

    .line 230
    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 246
    new-instance v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender;->fileName:Ljava/lang/String;

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

    .line 283
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender;->setStopping()V

    .line 284
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    .line 285
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender;->advertisement:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/net/Advertiser;->unadvertise(Ljava/lang/Object;)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender;->setStopped()V

    .line 289
    const/4 v0, 0x1

    return v0
.end method
