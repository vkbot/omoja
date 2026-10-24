.class abstract Lorg/apache/logging/log4j/core/jackson/ThrowableProxyMixIn;
.super Ljava/lang/Object;
.source "ThrowableProxyMixIn.java"


# instance fields
.field private causeProxy:Lorg/apache/logging/log4j/core/jackson/ThrowableProxyMixIn;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cause"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "Cause"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end field

.field private commonElementCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end field

.field private extendedStackTrace:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "extendedStackTrace"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlElementWrapper;
        localName = "ExtendedStackTrace"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "ExtendedStackTraceItem"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end field

.field private localizedMessage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end field

.field private transient throwable:Ljava/lang/Throwable;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCauseStackTraceAsString()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getExtendedStackTraceAsString()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getStackTrace()[Ljava/lang/StackTraceElement;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getSuppressedProxies()[Lorg/apache/logging/log4j/core/impl/ThrowableProxy;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "suppressed"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlElementWrapper;
        localName = "Suppressed"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        localName = "SuppressedItem"
        namespace = "http://logging.apache.org/log4j/2.0/events"
    .end annotation
.end method

.method public abstract getSuppressedStackTrace()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method
