.class public final Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.source "MemoryMappedFileAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<",
        "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "appender"
    name = "MemoryMappedFile"
    printObject = true
.end annotation


# static fields
.field private static final BIT_POSITION_1GB:I = 0x1e

.field private static final MAX_REGION_LENGTH:I = 0x40000000

.field private static final MIN_REGION_LENGTH:I = 0x100


# instance fields
.field private advertisement:Ljava/lang/Object;

.field private final advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

.field private final fileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "manager"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
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
            "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/net/Advertiser;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 134
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

    .line 135
    if-eqz v9, :cond_0

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 137
    .local v0, "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p4}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 138
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "name"

    move-object v2, p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-interface {v9, v0}, Lorg/apache/logging/log4j/core/net/Advertiser;->advertise(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->advertisement:Ljava/lang/Object;

    goto :goto_0

    .line 135
    .end local v0    # "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v2, p1

    .line 142
    :goto_0
    move-object v0, p5

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->fileName:Ljava/lang/String;

    .line 143
    iput-object v9, v8, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Layout;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Filter;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .param p9, "x8"    # [Lorg/apache/logging/log4j/core/config/Property;
    .param p10, "x9"    # Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$1;

    .line 44
    invoke-direct/range {p0 .. p9}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 44
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->determineValidRegionLength(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static createAppender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;
    .locals 16
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "append"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "immediateFlush"    # Ljava/lang/String;
    .param p4, "regionLengthStr"    # Ljava/lang/String;
    .param p5, "ignore"    # Ljava/lang/String;
    .param p7, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p8, "advertise"    # Ljava/lang/String;
    .param p9, "advertiseURI"    # Ljava/lang/String;
    .param p10, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
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
            "fileName",
            "append",
            "name",
            "immediateFlush",
            "regionLengthStr",
            "ignore",
            "layout",
            "filter",
            "advertise",
            "advertiseURI",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<",
            "TB;>;>(",
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
            "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    .local p6, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v0, 0x1

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 213
    .local v2, "isAppend":Z
    const/4 v3, 0x0

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 214
    .local v3, "isImmediateFlush":Z
    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lorg/apache/logging/log4j/core/util/Booleans;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 215
    .local v0, "ignoreExceptions":Z
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 216
    .local v6, "isAdvertise":Z
    const/high16 v7, 0x2000000

    move-object/from16 v8, p4

    invoke-static {v8, v7}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 219
    .local v7, "regionLength":I
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->newBuilder()Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    move-result-object v9

    .line 220
    invoke-virtual {v9, v6}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setAdvertise(Z)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    move-result-object v9

    .line 221
    move-object/from16 v10, p9

    invoke-virtual {v9, v10}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setAdvertiseURI(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    move-result-object v9

    .line 222
    invoke-virtual {v9, v2}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setAppend(Z)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    move-result-object v9

    .line 223
    move-object/from16 v11, p10

    invoke-virtual {v9, v11}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    .line 224
    move-object/from16 v12, p0

    invoke-virtual {v9, v12}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    move-result-object v9

    move-object/from16 v13, p7

    invoke-virtual {v9, v13}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    invoke-virtual {v9, v0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    .line 225
    invoke-virtual {v9, v3}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->withImmediateFlush(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    move-object/from16 v14, p6

    invoke-virtual {v9, v14}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    move-object/from16 v15, p2

    invoke-virtual {v9, v15}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v9

    check-cast v9, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    .line 226
    invoke-virtual {v9, v7}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->setRegionLength(I)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    move-result-object v9

    .line 227
    invoke-virtual {v9}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;

    move-result-object v9

    .line 219
    return-object v9
.end method

.method private static determineValidRegionLength(Ljava/lang/String;I)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "regionLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "regionLength"
        }
    .end annotation

    .line 240
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_0

    .line 241
    sget-object v1, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 241
    const-string v4, "MemoryMappedAppender[{}] Reduced region length from {} to max length: {}"

    invoke-interface {v1, v4, p0, v2, v3}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    return v0

    .line 245
    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 246
    sget-object v1, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 246
    const-string v4, "MemoryMappedAppender[{}] Expanded region length from {} to min length: {}"

    invoke-interface {v1, v4, p0, v2, v3}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    return v0

    .line 250
    :cond_1
    invoke-static {p1}, Lorg/apache/logging/log4j/core/util/Integers;->ceilingNextPowerOfTwo(I)I

    move-result v0

    .line 251
    .local v0, "result":I
    if-eq p1, v0, :cond_2

    .line 252
    sget-object v1, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->LOGGER:Lorg/apache/logging/log4j/Logger;

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 252
    const-string v4, "MemoryMappedAppender[{}] Rounded up region length from {} to next power of two: {}"

    invoke-interface {v1, v4, p0, v2, v3}, Lorg/apache/logging/log4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    :cond_2
    return v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 233
    new-instance v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    return-object v0
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionLength()I
    .locals 1

    .line 172
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->getManager()Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getRegionLength()I

    move-result v0

    return v0
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

    .line 148
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->setStopping()V

    .line 149
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    .line 150
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->advertisement:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/net/Advertiser;->unadvertise(Ljava/lang/Object;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->setStopped()V

    .line 154
    const/4 v0, 0x1

    return v0
.end method
