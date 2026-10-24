.class Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;
.super Lcom/fasterxml/jackson/databind/module/SimpleModule;
.source "Log4jJsonModule.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final encodeThreadContextAsList:Z

.field private final includeStacktrace:Z

.field private final objectMessageAsJsonObject:Z

.field private final stacktraceAsString:Z


# direct methods
.method constructor <init>(ZZZZ)V
    .locals 9
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

    .line 40
    const-class v0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/fasterxml/jackson/core/Version;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v8}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 41
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;->encodeThreadContextAsList:Z

    .line 42
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;->includeStacktrace:Z

    .line 43
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;->stacktraceAsString:Z

    .line 44
    iput-boolean p4, p0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;->objectMessageAsJsonObject:Z

    .line 48
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;-><init>()V

    invoke-virtual {v0, p0, p4}, Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;->initialize(Lcom/fasterxml/jackson/databind/module/SimpleModule;Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V
    .locals 3
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/Module$SetupContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V

    .line 55
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;->encodeThreadContextAsList:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextInitializer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextInitializer;-><init>()V

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;->includeStacktrace:Z

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;->stacktraceAsString:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextInitializer;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;ZZ)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextJsonInitializer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextJsonInitializer;-><init>()V

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;->includeStacktrace:Z

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/jackson/Log4jJsonModule;->stacktraceAsString:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextJsonInitializer;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;ZZ)V

    .line 60
    :goto_0
    return-void
.end method
