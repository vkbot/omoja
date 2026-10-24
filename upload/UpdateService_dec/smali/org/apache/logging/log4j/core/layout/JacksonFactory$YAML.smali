.class Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;
.super Lorg/apache/logging/log4j/core/layout/JacksonFactory;
.source "JacksonFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/JacksonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "YAML"
.end annotation


# instance fields
.field private final includeStacktrace:Z

.field private final stacktraceAsString:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
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

    .line 160
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;-><init>()V

    .line 161
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;->includeStacktrace:Z

    .line 162
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;->stacktraceAsString:Z

    .line 163
    return-void
.end method


# virtual methods
.method protected getPropertNameForContextMap()Ljava/lang/String;
    .locals 1

    .line 177
    const-string v0, "contextMap"

    return-object v0
.end method

.method protected getPropertNameForNanoTime()Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, "nanoTime"

    return-object v0
.end method

.method protected getPropertNameForSource()Ljava/lang/String;
    .locals 1

    .line 182
    const-string v0, "source"

    return-object v0
.end method

.method protected getPropertyNameForInstant()Ljava/lang/String;
    .locals 1

    .line 172
    const-string v0, "instant"

    return-object v0
.end method

.method protected getPropertyNameForTimeMillis()Ljava/lang/String;
    .locals 1

    .line 167
    const-string v0, "timeMillis"

    return-object v0
.end method

.method protected newCompactPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .line 192
    new-instance v0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;-><init>()V

    return-object v0
.end method

.method protected newObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 4

    .line 197
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlObjectMapper;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;->includeStacktrace:Z

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$YAML;->stacktraceAsString:Z

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/logging/log4j/core/jackson/Log4jYamlObjectMapper;-><init>(ZZZ)V

    return-object v0
.end method

.method protected newPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .line 202
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    return-object v0
.end method
