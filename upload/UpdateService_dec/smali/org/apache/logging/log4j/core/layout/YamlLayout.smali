.class public final Lorg/apache/logging/log4j/core/layout/YamlLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
.source "YamlLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "YamlLayout"
    printObject = true
.end annotation


# static fields
.field static final CONTENT_TYPE:Ljava/lang/String; = "application/yaml"

.field private static final DEFAULT_FOOTER:Ljava/lang/String; = ""

.field private static final DEFAULT_HEADER:Ljava/lang/String; = ""


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V
    .locals 18
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "locationInfo"    # Z
    .param p3, "properties"    # Z
    .param p4, "complete"    # Z
    .param p5, "compact"    # Z
    .param p6, "eventEol"    # Z
    .param p7, "endOfLine"    # Ljava/lang/String;
    .param p8, "headerPattern"    # Ljava/lang/String;
    .param p9, "footerPattern"    # Ljava/lang/String;
    .param p10, "charset"    # Ljava/nio/charset/Charset;
    .param p11, "includeStacktrace"    # Z
    .param p12, "stacktraceAsString"    # Z
    .param p13, "includeNullDelimiter"    # Z
    .param p14, "includeTimeMillis"    # Z
    .param p15, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
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
            "config",
            "locationInfo",
            "properties",
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
            "additionalFields"
        }
    .end annotation

    .line 95
    move-object/from16 v12, p1

    new-instance v0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct {v0, v13, v14}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;-><init>(ZZ)V

    .line 96
    move/from16 v15, p2

    move/from16 v11, p3

    move/from16 v10, p5

    move/from16 v9, p14

    invoke-virtual {v0, v15, v11, v10, v9}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;->newWriter(ZZZZ)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v2

    .line 98
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    move-object/from16 v8, p8

    invoke-virtual {v0, v8}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v16

    .line 99
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    move-object/from16 v7, p9

    invoke-virtual {v0, v7}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v17

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p10

    move/from16 v4, p5

    move/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move/from16 v10, p13

    move-object/from16 v11, p15

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Z[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/YamlLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/nio/charset/Charset;
    .param p11, "x10"    # Z
    .param p12, "x11"    # Z
    .param p13, "x12"    # Z
    .param p14, "x13"    # Z
    .param p15, "x14"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p16, "x15"    # Lorg/apache/logging/log4j/core/layout/YamlLayout$1;

    .line 49
    invoke-direct/range {p0 .. p15}, Lorg/apache/logging/log4j/core/layout/YamlLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 19
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "locationInfo"    # Z
    .param p3, "properties"    # Z
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
            0x10
        }
        names = {
            "config",
            "locationInfo",
            "properties",
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

    .line 82
    move-object/from16 v12, p1

    new-instance v0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;

    const/4 v1, 0x0

    move/from16 v13, p10

    invoke-direct {v0, v13, v1}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;-><init>(ZZ)V

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p5

    invoke-virtual {v0, v14, v15, v11}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;->newWriter(ZZZ)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v2

    .line 84
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    move-object/from16 v10, p7

    invoke-virtual {v0, v10}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v8

    .line 85
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/PatternLayout;->newSerializerBuilder()Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    move-object/from16 v9, p8

    invoke-virtual {v0, v9}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->setDefaultPattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/PatternLayout$SerializerBuilder;->build()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v16

    .line 82
    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p9

    move/from16 v4, p5

    move/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Z[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    .line 87
    return-void
.end method

.method public static createDefaultLayout()Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
    .locals 17

    .line 203
    new-instance v16, Lorg/apache/logging/log4j/core/layout/YamlLayout;

    new-instance v1, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/config/DefaultConfiguration;-><init>()V

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lorg/apache/logging/log4j/core/layout/YamlLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    return-object v16
.end method

.method public static createLayout(Lorg/apache/logging/log4j/core/config/Configuration;ZZLjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
    .locals 17
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p1, "locationInfo"    # Z
    .param p2, "properties"    # Z
    .param p3, "headerPattern"    # Ljava/lang/String;
    .param p4, "footerPattern"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .param p6, "includeStacktrace"    # Z
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
            "config",
            "locationInfo",
            "properties",
            "headerPattern",
            "footerPattern",
            "charset",
            "includeStacktrace"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    new-instance v16, Lorg/apache/logging/log4j/core/layout/YamlLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v0 .. v15}, Lorg/apache/logging/log4j/core/layout/YamlLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    return-object v16
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 194
    new-instance v0, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/YamlLayout$Builder;

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

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "version"

    const-string v2, "2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/yaml; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFooter()[B
    .locals 3

    .line 130
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/YamlLayout;->complete:Z

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/YamlLayout;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout;->getFooterSerializer()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/layout/YamlLayout;->serializeToString(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/YamlLayout;->eol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/layout/YamlLayout;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public getHeader()[B
    .locals 3

    .line 111
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/YamlLayout;->complete:Z

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/YamlLayout;->getHeaderSerializer()Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/layout/YamlLayout;->serializeToString(Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/YamlLayout;->eol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/layout/YamlLayout;->getBytes(Ljava/lang/String;)[B

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

    .line 48
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "event",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-super {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Writer;)V

    return-void
.end method
