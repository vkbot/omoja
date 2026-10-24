.class public Lorg/apache/logging/log4j/core/jackson/Log4jYamlObjectMapper;
.super Lcom/fasterxml/jackson/dataformat/yaml/YAMLMapper;
.source "Log4jYamlObjectMapper.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/apache/logging/log4j/core/jackson/Log4jYamlObjectMapper;-><init>(ZZZ)V

    .line 38
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 1
    .param p1, "encodeThreadContextAsList"    # Z
    .param p2, "includeStacktrace"    # Z
    .param p3, "stacktraceAsString"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "encodeThreadContextAsList",
            "includeStacktrace",
            "stacktraceAsString"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/yaml/YAMLMapper;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;-><init>(ZZZ)V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/jackson/Log4jYamlObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 45
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/jackson/Log4jYamlObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 46
    return-void
.end method
