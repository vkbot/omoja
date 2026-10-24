.class abstract Lorg/apache/logging/log4j/core/jackson/StackTraceElementMixIn;
.super Ljava/lang/Object;
.source "StackTraceElementMixIn.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    value = {
        "nativeMethod"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "declaringClass",
            "methodName",
            "fileName",
            "lineNumber"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method abstract getClassName()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "class"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "class"
    .end annotation
.end method

.method abstract getFileName()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "file"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "file"
    .end annotation
.end method

.method abstract getLineNumber()I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "line"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "line"
    .end annotation
.end method

.method abstract getMethodName()Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "method"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/dataformat/xml/annotation/JacksonXmlProperty;
        isAttribute = true
        localName = "method"
    .end annotation
.end method
