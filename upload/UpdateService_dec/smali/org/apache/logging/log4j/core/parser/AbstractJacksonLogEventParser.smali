.class Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;
.super Ljava/lang/Object;
.source "AbstractJacksonLogEventParser.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/parser/TextLogEventParser;


# instance fields
.field private final objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 2
    .param p1, "objectMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "objectMapper"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 32
    const-class v0, Lorg/apache/logging/log4j/core/impl/Log4jLogEvent;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 33
    return-void
.end method


# virtual methods
.method public parseFrom(Ljava/lang/String;)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    .line 38
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LogEvent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/logging/log4j/core/parser/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseFrom([B)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LogEvent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/logging/log4j/core/parser/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseFrom([BII)Lorg/apache/logging/log4j/core/LogEvent;
    .locals 2
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
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

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/parser/AbstractJacksonLogEventParser;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue([BII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/LogEvent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/logging/log4j/core/parser/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
