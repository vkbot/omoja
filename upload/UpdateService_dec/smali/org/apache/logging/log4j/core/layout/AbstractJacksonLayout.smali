.class abstract Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;
.super Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;
.source "AbstractJacksonLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;,
        Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;,
        Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$LogEventWithAdditionalFields;,
        Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$Builder;
    }
.end annotation


# static fields
.field protected static final COMPACT_EOL:Ljava/lang/String; = ""

.field protected static final DEFAULT_EOL:Ljava/lang/String; = "\r\n"


# instance fields
.field protected final additionalFields:[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

.field protected final compact:Z

.field protected final complete:Z

.field protected final eol:Ljava/lang/String;

.field protected final includeNullDelimiter:Z

.field protected final objectWriter:Lcom/fasterxml/jackson/databind/ObjectWriter;


# direct methods
.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Z[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V
    .locals 1
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "objectWriter"    # Lcom/fasterxml/jackson/databind/ObjectWriter;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "compact"    # Z
    .param p5, "complete"    # Z
    .param p6, "eventEol"    # Z
    .param p7, "endOfLine"    # Ljava/lang/String;
    .param p8, "headerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .param p9, "footerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .param p10, "includeNullDelimiter"    # Z
    .param p11, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
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
            "objectWriter",
            "charset",
            "compact",
            "complete",
            "eventEol",
            "endOfLine",
            "headerSerializer",
            "footerSerializer",
            "includeNullDelimiter",
            "additionalFields"
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1, p3, p8, p9}, Lorg/apache/logging/log4j/core/layout/AbstractStringLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/nio/charset/Charset;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)V

    .line 249
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->objectWriter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 250
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->compact:Z

    .line 251
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->complete:Z

    .line 252
    if-eqz p7, :cond_0

    move-object v0, p7

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    if-nez p6, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "\r\n"

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->eol:Ljava/lang/String;

    .line 253
    iput-boolean p10, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->includeNullDelimiter:Z

    .line 254
    invoke-static {p1, p11}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->prepareAdditionalFields(Lorg/apache/logging/log4j/core/config/Configuration;[Lorg/apache/logging/log4j/core/util/KeyValuePair;)[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->additionalFields:[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    .line 255
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;)V
    .locals 10
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "objectWriter"    # Lcom/fasterxml/jackson/databind/ObjectWriter;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "compact"    # Z
    .param p5, "complete"    # Z
    .param p6, "eventEol"    # Z
    .param p7, "headerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .param p8, "footerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
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
            "config",
            "objectWriter",
            "charset",
            "compact",
            "complete",
            "eventEol",
            "headerSerializer",
            "footerSerializer"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Z)V

    .line 235
    return-void
.end method

.method protected constructor <init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Z)V
    .locals 12
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p2, "objectWriter"    # Lcom/fasterxml/jackson/databind/ObjectWriter;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "compact"    # Z
    .param p5, "complete"    # Z
    .param p6, "eventEol"    # Z
    .param p7, "headerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .param p8, "footerSerializer"    # Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;
    .param p9, "includeNullDelimiter"    # Z
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
            "config",
            "objectWriter",
            "charset",
            "compact",
            "complete",
            "eventEol",
            "headerSerializer",
            "footerSerializer",
            "includeNullDelimiter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;-><init>(Lorg/apache/logging/log4j/core/config/Configuration;Lcom/fasterxml/jackson/databind/ObjectWriter;Ljava/nio/charset/Charset;ZZZLjava/lang/String;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Lorg/apache/logging/log4j/core/layout/AbstractStringLayout$Serializer;Z[Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    .line 242
    return-void
.end method

.method private static convertMutableToLog4jEvent(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 1
    .param p0, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 305
    instance-of v0, p0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;->createMemento(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static prepareAdditionalFields(Lorg/apache/logging/log4j/core/config/Configuration;[Lorg/apache/logging/log4j/core/util/KeyValuePair;)[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;
    .locals 5
    .param p0, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p1, "additionalFields"    # [Lorg/apache/logging/log4j/core/util/KeyValuePair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "config",
            "additionalFields"
        }
    .end annotation

    .line 262
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 268
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    .line 270
    .local v0, "resolvableFields":[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 271
    new-instance v2, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;-><init>(Lorg/apache/logging/log4j/core/util/KeyValuePair;)V

    aput-object v2, v0, v1

    .line 274
    .local v2, "resolvable":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;
    if-nez p0, :cond_2

    iget-boolean v3, v2, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->valueNeedsLookup:Z

    if-nez v3, :cond_1

    goto :goto_1

    .line 275
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "configuration needs to be set when there are additional fields with variables"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 270
    .end local v2    # "resolvable":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "i":I
    :cond_3
    return-object v0

    .line 264
    .end local v0    # "resolvableFields":[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;
    :cond_4
    :goto_2
    sget-object v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    return-object v0
.end method

.method private resolveAdditionalFields(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/util/Map;
    .locals 8
    .param p1, "logEvent"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->additionalFields:[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 326
    .local v0, "additionalFieldsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getStrSubstitutor()Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;

    move-result-object v1

    .line 329
    .local v1, "strSubstitutor":Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;
    iget-object v2, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->additionalFields:[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 330
    .local v5, "pair":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;
    iget-boolean v6, v5, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->valueNeedsLookup:Z

    if-eqz v6, :cond_0

    .line 332
    iget-object v6, v5, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->key:Ljava/lang/String;

    iget-object v7, v5, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v1, p1, v7}, Lorg/apache/logging/log4j/core/lookup/StrSubstitutor;->replace(Lorg/apache/logging/log4j/core/LogEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 335
    :cond_0
    iget-object v6, v5, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->key:Ljava/lang/String;

    iget-object v7, v5, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;->value:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .end local v5    # "pair":Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    :cond_1
    return-object v0
.end method

.method protected static valueNeedsLookup(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 258
    if-eqz p0, :cond_0

    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "event"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 290
    new-instance v0, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;-><init>()V

    .line 292
    .local v0, "writer":Lorg/apache/logging/log4j/core/util/StringBuilderWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Writer;)V

    .line 293
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/util/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 294
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 297
    const-string v2, ""

    return-object v2
.end method

.method public toSerializable(Lorg/apache/logging/log4j/core/LogEvent;Ljava/io/Writer;)V
    .locals 2
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
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->objectWriter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-static {p1}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->convertMutableToLog4jEvent(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->wrapLogEvent(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValue(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->eol:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 346
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->includeNullDelimiter:Z

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->markEvent()V

    .line 350
    return-void
.end method

.method protected wrapLogEvent(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/lang/Object;
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

    .line 309
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->additionalFields:[Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ResolvableKeyValuePair;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 311
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout;->resolveAdditionalFields(Lorg/apache/logging/log4j/core/LogEvent;)Ljava/util/Map;

    move-result-object v0

    .line 313
    .local v0, "additionalFieldsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$LogEventWithAdditionalFields;

    invoke-direct {v1, p1, v0}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$LogEventWithAdditionalFields;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-object v1

    .line 314
    .end local v0    # "additionalFieldsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/message/Message;

    if-eqz v0, :cond_1

    .line 316
    new-instance v0, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/core/layout/AbstractJacksonLayout$ReadOnlyLogEventWrapper;-><init>(Lorg/apache/logging/log4j/core/LogEvent;)V

    return-object v0

    .line 319
    :cond_1
    return-object p1
.end method
