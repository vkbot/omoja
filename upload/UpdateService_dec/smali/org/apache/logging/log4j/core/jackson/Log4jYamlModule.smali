.class final Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;
.super Lcom/fasterxml/jackson/databind/module/SimpleModule;
.source "Log4jYamlModule.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final encodeThreadContextAsList:Z

.field private final includeStacktrace:Z

.field private final stacktraceAsString:Z


# direct methods
.method constructor <init>(ZZZ)V
    .locals 9
    .param p1, "encodeThreadContextAsList"    # Z
    .param p2, "includeStacktrace"    # Z
    .param p3, "stacktraceAsString"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "encodeThreadContextAsList",
            "includeStacktrace",
            "stacktraceAsString"
        }
    .end annotation

    .line 39
    const-class v0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;

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

    .line 40
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;->encodeThreadContextAsList:Z

    .line 41
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;->includeStacktrace:Z

    .line 42
    iput-boolean p3, p0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;->stacktraceAsString:Z

    .line 46
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;->initialize(Lcom/fasterxml/jackson/databind/module/SimpleModule;Z)V

    .line 47
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

    .line 52
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V

    .line 53
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;->encodeThreadContextAsList:Z

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextInitializer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextInitializer;-><init>()V

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;->includeStacktrace:Z

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;->stacktraceAsString:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextInitializer;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;ZZ)V

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextJsonInitializer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextJsonInitializer;-><init>()V

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;->includeStacktrace:Z

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/jackson/Log4jYamlModule;->stacktraceAsString:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextJsonInitializer;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;ZZ)V

    .line 58
    :goto_0
    return-void
.end method
