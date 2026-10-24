.class public final Lorg/apache/logging/log4j/core/layout/JsonLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
.source "JsonLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "JsonLayout"
    printObject = true
.end annotation


# static fields
.field static final CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final DEFAULT_FOOTER:Ljava/lang/String; = "]"

.field private static final DEFAULT_HEADER:Ljava/lang/String; = "["


# direct methods
.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 19
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "locationInfo"    # Z
    .param p3, "properties"    # Z
    .param p4, "encodeThreadContextAsList"    # Z
    .param p5, "complete"    # Z
    .param p6, "compact"    # Z
    .param p7, "eventEol"    # Z
    .param p8, "endOfLine"    # Ljava/lang/String;
    .param p9, "headerPattern"    # Ljava/lang/String;
    .param p10, "footerPattern"    # Ljava/lang/String;
    .param p11, "charset"    # Ljava/nio/charset/Charset;
    .param p12, "includeStacktrace"    # Z
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
            "config",
            "locationInfo",
            "properties",
            "encodeThreadContextAsList",
            "complete",
            "compact",
            "eventEol",
            "endOfLine",
            "headerPattern",
            "footerPattern",
            "charset",
            "includeStacktrace"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    move-object/from16 v12, p1

    new-instance v0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;

    const/4 v1, 0x0

    move/from16 v13, p4

    move/from16 v14, p12

    invoke-direct {v0, v13, v14, v1, v1}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;-><init>(ZZZZ)V

    move/from16 v15, p2

    move/from16 v11, p3

    move/from16 v10, p6

    invoke-virtual {v0, v15, v11, v10}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->newWriter(ZZZ)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v2

    .line 147
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    move-object/from16 v9, p9

    invoke-virtual {v0, v9}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v8

    .line 148
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    move-object/from16 v7, p10

    invoke-virtual {v0, v7}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v16

    .line 144
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p11

    move/from16 v4, p6

    move/from16 v5, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Z[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    .line 150
    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;Z)V
    .locals 18
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "locationInfo"    # Z
    .param p3, "properties"    # Z
    .param p4, "encodeThreadContextAsList"    # Z
    .param p5, "complete"    # Z
    .param p6, "compact"    # Z
    .param p7, "eventEol"    # Z
    .param p8, "endOfLine"    # Ljava/lang/String;
    .param p9, "headerPattern"    # Ljava/lang/String;
    .param p10, "footerPattern"    # Ljava/lang/String;
    .param p11, "charset"    # Ljava/nio/charset/Charset;
    .param p12, "includeStacktrace"    # Z
    .param p13, "stacktraceAsString"    # Z
    .param p14, "includeNullDelimiter"    # Z
    .param p15, "includeTimeMillis"    # Z
    .param p16, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p17, "objectMessageAsJsonObject"    # Z
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
            0x10
        }
        names = {
            "config",
            "locationInfo",
            "properties",
            "encodeThreadContextAsList",
            "complete",
            "compact",
            "eventEol",
            "endOfLine",
            "headerPattern",
            "footerPattern",
            "charset",
            "includeStacktrace",
            "stacktraceAsString",
            "includeNullDelimiter",
            "includeTimeMillis",
            "additionalFields",
            "objectMessageAsJsonObject"
        }
    .end annotation

    .line 159
    move-object/from16 v12, p1

    new-instance v0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;

    move/from16 v13, p4

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v11, p17

    invoke-direct {v0, v13, v14, v15, v11}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;-><init>(ZZZZ)V

    move/from16 v10, p2

    move/from16 v9, p3

    move/from16 v8, p6

    move/from16 v7, p15

    invoke-virtual {v0, v10, v9, v8, v7}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->newWriter(ZZZZ)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v2

    .line 162
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    move-object/from16 v6, p9

    invoke-virtual {v0, v6}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v16

    .line 163
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    move-object/from16 v5, p10

    invoke-virtual {v0, v5}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v17

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p11

    move/from16 v4, p6

    move/from16 v5, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move/from16 v10, p14

    move-object/from16 v11, p16

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Z[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;ZLorg/apache/logging/log4j/core/layout/JsonLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # Ljava/nio/charset/Charset;
    .param p12, "x11"    # Z
    .param p13, "x12"    # Z
    .param p14, "x13"    # Z
    .param p15, "x14"    # Z
    .param p16, "x15"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p17, "x16"    # Z
    .param p18, "x17"    # Lorg/apache/logging/log4j/core/layout/JsonLayout$1;

    .line 71
    invoke-direct/range {p0 .. p17}, Lorg/apache/logging/log4j/core/layout/JsonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;Z)V

    return-void
.end method

.method public static createDefaultLayout()Lorg/apache/logging/log4j/core/layout/JsonLayout;
    .locals 19

    .line 283
    new-instance v18, Lorg/apache/logging/log4j/core/layout/JsonLayout;

    move-object/from16 v0, v18

    new-instance v2, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;

    move-object v1, v2

    invoke-direct {v2}, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;-><init>()V

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "["

    const-string v10, "]"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lorg/apache/logging/log4j/core/layout/JsonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;Z)V

    return-object v18
.end method

.method public static createLayout(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lorg/apache/logging/log4j/core/layout/JsonLayout;
    .locals 19
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p1, "locationInfo"    # Z
    .param p2, "properties"    # Z
    .param p3, "propertiesAsList"    # Z
    .param p4, "complete"    # Z
    .param p5, "compact"    # Z
    .param p6, "eventEol"    # Z
    .param p7, "headerPattern"    # Ljava/lang/String;
    .param p8, "footerPattern"    # Ljava/lang/String;
    .param p9, "charset"    # Ljava/nio/charset/Charset;
    .param p10, "includeStacktrace"    # Z
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
            "config",
            "locationInfo",
            "properties",
            "propertiesAsList",
            "complete",
            "compact",
            "eventEol",
            "headerPattern",
            "footerPattern",
            "charset",
            "includeStacktrace"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 268
    .local v4, "encodeThreadContextAsList":Z
    new-instance v18, Lorg/apache/logging/log4j/core/layout/JsonLayout;

    move-object/from16 v0, v18

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v0 .. v17}, Lorg/apache/logging/log4j/core/layout/JsonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;Z)V

    return-object v18
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 274
    new-instance v0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/JsonLayout$Builder;

    return-object v0
.end method


# virtual methods
.method public getContentFormat()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "version"

    const-string v2, "2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/json; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFooter()[B
    .locals 3

    .line 194
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout;->complete:Z

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout;->getFooterSerializer()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/layout/JsonLayout;->serializeToString(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout;->eol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/layout/JsonLayout;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public getHeader()[B
    .locals 3

    .line 175
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout;->complete:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JsonLayout;->getHeaderSerializer()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/layout/JsonLayout;->serializeToString(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout;->eol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/layout/JsonLayout;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "event"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Writer;)V
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "event",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout;->complete:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/logging/log4j/core/layout/JsonLayout;->eventCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 290
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 292
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Writer;)V

    .line 293
    return-void
.end method
