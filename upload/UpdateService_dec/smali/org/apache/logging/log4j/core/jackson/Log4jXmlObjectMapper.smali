.class public Lorg/apache/logging/log4j/core/jackson/Log4jXmlObjectMapper;
.super Lcom/fasterxml/jackson/dataformat/xml/XmlMapper;
.source "Log4jXmlObjectMapper.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/jackson/Log4jXmlObjectMapper;-><init>(ZZ)V

    .line 38
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "includeStacktrace"    # Z
    .param p2, "stacktraceAsString"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "includeStacktrace",
            "stacktraceAsString"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Log4jXmlModule;

    invoke-direct {v0, p1, p2}, Lorg/apache/logging/log4j/core/jackson/Log4jXmlModule;-><init>(ZZ)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/xml/XmlMapper;-><init>(Lcom/fasterxml/jackson/dataformat/xml/JacksonXmlModule;)V

    .line 45
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/jackson/Log4jXmlObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 46
    return-void
.end method
