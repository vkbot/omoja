.class Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;
.super Lorg/apache/logging/log4j/core/layout/JacksonFactory;
.source "JacksonFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/JacksonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSON"
.end annotation


# instance fields
.field private final encodeThreadContextAsList:Z

.field private final includeStacktrace:Z

.field private final objectMessageAsJsonObject:Z

.field private final stacktraceAsString:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0
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

    .line 50
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;-><init>()V

    .line 51
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->encodeThreadContextAsList:Z

    .line 52
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->includeStacktrace:Z

    .line 53
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->stacktraceAsString:Z

    .line 54
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->objectMessageAsJsonObject:Z

    .line 55
    return-void
.end method


# virtual methods
.method protected getPropertNameForContextMap()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "contextMap"

    return-object v0
.end method

.method protected getPropertNameForNanoTime()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "nanoTime"

    return-object v0
.end method

.method protected getPropertNameForSource()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "source"

    return-object v0
.end method

.method protected getPropertyNameForInstant()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "instant"

    return-object v0
.end method

.method protected getPropertyNameForTimeMillis()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "timeMillis"

    return-object v0
.end method

.method protected newCompactPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .line 84
    new-instance v0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;-><init>()V

    return-object v0
.end method

.method protected newObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 5

    .line 89
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonObjectMapper;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->encodeThreadContextAsList:Z

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->includeStacktrace:Z

    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->stacktraceAsString:Z

    iget-boolean v4, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$JSON;->objectMessageAsJsonObject:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/logging/log4j/core/jackson/Log4jJsonObjectMapper;-><init>(ZZZZ)V

    return-object v0
.end method

.method protected newPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .line 94
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    return-object v0
.end method
