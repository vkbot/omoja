.class abstract Lorg/apache/logging/log4j/core/jackson/ExtendedStackTraceElementMixIn;
.super Ljava/lang/Object;
.source "ExtendedStackTraceElementMixIn.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    value = {
        "class",
        "method",
        "file",
        "line",
        "exact",
        "location",
        "version"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "declaringClass"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "class"
        .end annotation
    .end param
    .param p2, "methodName"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "method"
        .end annotation
    .end param
    .param p3, "fileName"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "file"
        .end annotation
    .end param
    .param p4, "lineNumber"    # I
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "line"
        .end annotation
    .end param
    .param p5, "exact"    # Z
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "exact"
        .end annotation
    .end param
    .param p6, "location"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "location"
        .end annotation
    .end param
    .param p7, "version"    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "version"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "declaringClass",
            "methodName",
            "fileName",
            "lineNumber",
            "exact",
            "location",
            "version"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public abstract getClassName()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "class"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "class"
    .end annotation
.end method

.method public abstract getExact()Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end method

.method public abstract getExtraClassInfo()Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getFileName()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "file"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "file"
    .end annotation
.end method

.method public abstract getLineNumber()I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "line"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "line"
    .end annotation
.end method

.method public abstract getLocation()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end method

.method public abstract getMethodName()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "method"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "method"
    .end annotation
.end method

.method abstract getStackTraceElement()Ljava/lang/StackTraceElement;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
    .end annotation
.end method

.method public abstract isNativeMethod()Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method
