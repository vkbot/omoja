.class final Lorg/apache/logging/log4j/core/jackson/Log4jXmlModule;
.super Lcom/fasterxml/jackson/dataformat/xml/JacksonXmlModule;
.source "Log4jXmlModule.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final includeStacktrace:Z

.field private final stacktraceAsString:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 2
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

    .line 35
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/xml/JacksonXmlModule;-><init>()V

    .line 36
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/jackson/Log4jXmlModule;->includeStacktrace:Z

    .line 37
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/jackson/Log4jXmlModule;->stacktraceAsString:Z

    .line 40
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/apache/logging/log4j/core/jackson/Initializers$SimpleModuleInitializer;->initialize(Lcom/fasterxml/jackson/databind/module/SimpleModule;Z)V

    .line 41
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

    .line 46
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/dataformat/xml/JacksonXmlModule;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V

    .line 47
    new-instance v0, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextInitializer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextInitializer;-><init>()V

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/jackson/Log4jXmlModule;->includeStacktrace:Z

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/jackson/Log4jXmlModule;->stacktraceAsString:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextInitializer;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;ZZ)V

    .line 48
    return-void
.end method
