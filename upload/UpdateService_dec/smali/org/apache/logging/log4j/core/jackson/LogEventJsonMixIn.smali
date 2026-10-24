.class abstract Lorg/apache/logging/log4j/core/jackson/LogEventJsonMixIn;
.super Ljava/lang/Object;
.source "LogEventJsonMixIn.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/LogEvent;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonFilter;
    value = "org.apache.logging.log4j.core.impl.Log4jLogEvent"
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    value = {
        "timeMillis",
        "instant",
        "threadName",
        "level",
        "loggerName",
        "marker",
        "message",
        "thrown",
        "ContextMap",
        "contextStack",
        "loggerFQCN",
        "Source",
        "endOfBatch"
    }
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonRootName;
    value = "Event"
.end annotation

.annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlRootElement;
    localName = "Event"
    namespace = "http://logging.apache.org/log4j/2.0/events"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContextData()Lorg/apache/logging/log4j/util/ReadOnlyStringMap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "contextMap"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lorg/apache/logging/log4j/core/jackson/ContextDataDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lorg/apache/logging/log4j/core/jackson/ContextDataSerializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "ContextMap"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end method

.method public abstract getContextMap()Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContextStack()Lorg/apache/logging/log4j/ThreadContext$ContextStack;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "contextStack"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlElementWrapper;
        localName = "ContextStack"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "ContextStackItem"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end method

.method public abstract getInstant()Lorg/apache/logging/log4j/core/time/Instant;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "instant"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "Instant"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end method

.method public abstract getLevel()Lorg/apache/logging/log4j/Level;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end method

.method public abstract getLoggerFqcn()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end method

.method public abstract getLoggerName()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end method

.method public abstract getMarker()Lorg/apache/logging/log4j/Marker;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "marker"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "Marker"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end method

.method public abstract getMessage()Lorg/apache/logging/log4j/message/Message;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lorg/apache/logging/log4j/core/jackson/SimpleMessageDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "Message"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end method

.method public abstract getSource()Ljava/lang/StackTraceElement;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "source"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lorg/apache/logging/log4j/core/jackson/Log4jStackTraceElementDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "Source"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end method

.method public abstract getThreadId()J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "threadId"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "threadId"
    .end annotation
.end method

.method public abstract getThreadName()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thread"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "thread"
    .end annotation
.end method

.method public abstract getThreadPriority()I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "threadPriority"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "threadPriority"
    .end annotation
.end method

.method public abstract getThrown()Ljava/lang/Throwable;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getThrownProxy()Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thrown"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "Thrown"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end method

.method public abstract getTimeMillis()J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        access = .enum Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->READ_ONLY:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
        value = "timeMillis"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end method

.method public abstract isEndOfBatch()Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end method

.method public abstract isIncludeLocation()Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract setEndOfBatch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endOfBatch"
        }
    .end annotation
.end method

.method public abstract setIncludeLocation(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationRequired"
        }
    .end annotation
.end method
