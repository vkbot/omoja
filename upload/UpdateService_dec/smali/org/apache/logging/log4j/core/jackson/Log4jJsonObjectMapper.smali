.class public Lorg/apache/logging/log4j/core/jackson/Log4jJsonObjectMapper;
.super Lcom/fasterxml/jackson/databind/ObjectMapper;
.source "Log4jJsonObjectMapper.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0, v0}, Lorg/apache/logging/log4j/core/jackson/Log4jJsonObjectMapper;-><init>(ZZZZ)V

    .line 37
    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 1
    .param p1, "encodeThreadContextAsList"    # Z
    .param p2, "includeStacktrace"    # Z
    .param p3, "stacktraceAsString"    # Z
    .param p4, "objectMessageAsJsonObject"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "encodeThreadContextAsList",
            "includeStacktrace",
            "stacktraceAsString",
            "objectMessageAsJsonObject"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;-><init>(ZZZZ)V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/jackson/Log4jJsonObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 44
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/jackson/Log4jJsonObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 45
    return-void
.end method
