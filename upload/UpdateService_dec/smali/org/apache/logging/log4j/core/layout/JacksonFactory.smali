.class abstract Lorg/apache/logging/log4j/core/layout/JacksonFactory;
.super Ljava/lang/Object;
.source "JacksonFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/JacksonFactory$Log4jXmlPrettyPrinter;,
        Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;,
        Lorg/apache/logging/log4j/core/layout/JacksonFactory$XML;,
        Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getPropertNameForContextMap()Ljava/lang/String;
.end method

.method protected abstract getPropertNameForNanoTime()Ljava/lang/String;
.end method

.method protected abstract getPropertNameForSource()Ljava/lang/String;
.end method

.method protected abstract getPropertyNameForInstant()Ljava/lang/String;
.end method

.method protected abstract getPropertyNameForTimeMillis()Ljava/lang/String;
.end method

.method protected abstract newCompactPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
.end method

.method protected abstract newObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
.end method

.method protected abstract newPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
.end method

.method newWriter(ZZZ)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "locationInfo"    # Z
    .param p2, "properties"    # Z
    .param p3, "compact"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "locationInfo",
            "properties",
            "compact"
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;->newWriter(ZZZZ)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method newWriter(ZZZZ)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 4
    .param p1, "locationInfo"    # Z
    .param p2, "properties"    # Z
    .param p3, "compact"    # Z
    .param p4, "includeMillis"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "locationInfo",
            "properties",
            "compact",
            "includeMillis"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;-><init>()V

    .line 263
    .local v0, "filters":Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 264
    .local v1, "except":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;->getPropertNameForSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    if-nez p2, :cond_1

    .line 268
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;->getPropertNameForContextMap()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    if-eqz p4, :cond_2

    .line 271
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;->getPropertyNameForInstant()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;->getPropertyNameForTimeMillis()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    :goto_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;->getPropertNameForNanoTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    const-class v2, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->serializeAllExcept(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->addFilter(Ljava/lang/String;Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;

    .line 277
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;->newObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;->newCompactPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;->newPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writer(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v2

    .line 278
    .local v2, "writer":Lcom/fasterxml/jackson/databind/ObjectWriter;
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->with(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v3

    return-object v3
.end method
