.class public final Lorg/apache/logging/log4j/core/layout/XmlLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
.source "XmlLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "layout"
    name = "XmlLayout"
    printObject = true
.end annotation


# static fields
.field private static final ROOT_TAG:Ljava/lang/String; = "Events"


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZLjava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V
    .locals 17
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "locationInfo"    # Z
    .param p3, "properties"    # Z
    .param p4, "complete"    # Z
    .param p5, "compact"    # Z
    .param p6, "endOfLine"    # Ljava/lang/String;
    .param p7, "charset"    # Ljava/nio/charset/Charset;
    .param p8, "includeStacktrace"    # Z
    .param p9, "stacktraceAsString"    # Z
    .param p10, "includeNullDelimiter"    # Z
    .param p11, "includeTimeMillis"    # Z
    .param p12, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
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
            "complete",
            "compact",
            "endOfLine",
            "charset",
            "includeStacktrace",
            "stacktraceAsString",
            "includeNullDelimiter",
            "includeTimeMillis",
            "additionalFields"
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$XML;

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$XML;-><init>(ZZ)V

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v15, p5

    move/from16 v14, p11

    invoke-virtual {v0, v3, v4, v15, v14}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$XML;->newWriter(ZZZZ)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p7

    move/from16 v9, p5

    move/from16 v10, p4

    move-object/from16 v12, p6

    move-object v14, v0

    move/from16 v15, p10

    move-object/from16 v16, p12

    invoke-direct/range {v5 .. v16}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Z[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZLjava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;Lorg/apache/logging/log4j/core/layout/XmlLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/nio/charset/Charset;
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # Z
    .param p12, "x11"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .param p13, "x12"    # Lorg/apache/logging/log4j/core/layout/XmlLayout$1;

    .line 63
    invoke-direct/range {p0 .. p12}, Lorg/apache/logging/log4j/core/layout/XmlLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZLjava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    return-void
.end method

.method protected constructor <init>(ZZZZLjava/nio/charset/Charset;Z)V
    .locals 13
    .param p1, "locationInfo"    # Z
    .param p2, "properties"    # Z
    .param p3, "complete"    # Z
    .param p4, "compact"    # Z
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .param p6, "includeStacktrace"    # Z
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
            "locationInfo",
            "properties",
            "complete",
            "compact",
            "charset",
            "includeStacktrace"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v12}, Lorg/apache/logging/log4j/core/layout/XmlLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZLjava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    .line 90
    return-void
.end method

.method public static createDefaultLayout()Lorg/apache/logging/log4j/core/layout/XmlLayout;
    .locals 14

    .line 206
    new-instance v13, Lorg/apache/logging/log4j/core/layout/XmlLayout;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/apache/logging/log4j/core/layout/XmlLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZLjava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    return-object v13
.end method

.method public static createLayout(ZZZZLjava/nio/charset/Charset;Z)Lorg/apache/logging/log4j/core/layout/XmlLayout;
    .locals 14
    .param p0, "locationInfo"    # Z
    .param p1, "properties"    # Z
    .param p2, "complete"    # Z
    .param p3, "compact"    # Z
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "includeStacktrace"    # Z
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
            "locationInfo",
            "properties",
            "complete",
            "compact",
            "charset",
            "includeStacktrace"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    new-instance v13, Lorg/apache/logging/log4j/core/layout/XmlLayout;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v12}, Lorg/apache/logging/log4j/core/layout/XmlLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;ZZZZLjava/lang/String;Ljava/nio/charset/Charset;ZZZZ[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    return-object v13
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder<",
            "TB;>;>()TB;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 197
    new-instance v0, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;->asBuilder()Lorg/apache/logging/log4j/core/layout/AbstractLayout$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/XmlLayout$Builder;

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

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "xsd"

    const-string v2, "log4j-events.xsd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "version"

    const-string v2, "2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/xml; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFooter()[B
    .locals 2

    .line 137
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/XmlLayout;->complete:Z

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</Events>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/XmlLayout;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/layout/XmlLayout;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getHeader()[B
    .locals 3

    .line 114
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/XmlLayout;->complete:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/XmlLayout;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "Events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, " xmlns=\"http://logging.apache.org/log4j/2.0/events\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/XmlLayout;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/XmlLayout;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
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

    .line 62
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

    .line 62
    invoke-super {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Writer;)V

    return-void
.end method
