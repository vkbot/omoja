.class public Lorg/apache/logging/log4j/core/parser/XmlLogEventParser;
.super Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;
.source "XmlLogEventParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Log4jXmlObjectMapper;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/jackson/Log4jXmlObjectMapper;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic parseFrom(Ljava/lang/String;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/parser/ParseException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;->parseFrom(Ljava/lang/String;)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([B)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/parser/ParseException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;->parseFrom([B)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BII)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/parser/ParseException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;->parseFrom([BII)Lorg/apache/logging/log4j/core/LogEvent;

    move-result-object p1

    return-object p1
.end method
