.class Lorg/apache/logging/log4j/core/layout/JacksonFactory$XML;
.super Lorg/apache/logging/log4j/core/layout/JacksonFactory;
.source "JacksonFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/JacksonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XML"
.end annotation


# static fields
.field static final DEFAULT_INDENT:I = 0x1


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

    .line 107
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/JacksonFactory;-><init>()V

    .line 108
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$XML;->includeStacktrace:Z

    .line 109
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$XML;->stacktraceAsString:Z

    .line 110
    return-void
.end method


# virtual methods
.method protected getPropertNameForContextMap()Ljava/lang/String;
    .locals 1

    .line 124
    const-string v0, "ContextMap"

    return-object v0
.end method

.method protected getPropertNameForNanoTime()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, "nanoTime"

    return-object v0
.end method

.method protected getPropertNameForSource()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, "Source"

    return-object v0
.end method

.method protected getPropertyNameForInstant()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "Instant"

    return-object v0
.end method

.method protected getPropertyNameForTimeMillis()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "TimeMillis"

    return-object v0
.end method

.method protected newCompactPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3

    .line 145
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Log4jXmlObjectMapper;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$XML;->includeStacktrace:Z

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$XML;->stacktraceAsString:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/jackson/Log4jXmlObjectMapper;-><init>(ZZ)V

    return-object v0
.end method

.method protected newPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 2

    .line 150
    new-instance v0, Lorg/apache/logging/log4j/core/layout/JacksonFactory$Log4jXmlPrettyPrinter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/layout/JacksonFactory$Log4jXmlPrettyPrinter;-><init>(I)V

    return-object v0
.end method
