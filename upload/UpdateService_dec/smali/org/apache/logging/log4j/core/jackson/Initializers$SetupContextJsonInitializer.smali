.class Lorg/apache/logging/log4j/core/jackson/Initializers$SetupContextJsonInitializer;
.super Ljava/lang/Object;
.source "Initializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/jackson/Initializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetupContextJsonInitializer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;ZZ)V
    .locals 2
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/Module$SetupContext;
    .param p2, "includeStacktrace"    # Z
    .param p3, "stacktraceAsString"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "includeStacktrace",
            "stacktraceAsString"
        }
    .end annotation

    .line 69
    const-class v0, Ljava/lang/StackTraceElement;

    const-class v1, Lorg/apache/logging/log4j/core/jackson/StackTraceElementMixIn;

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 71
    const-class v0, Lorg/apache/logging/log4j/Marker;

    const-class v1, Lorg/apache/logging/log4j/core/jackson/MarkerMixIn;

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lorg/apache/logging/log4j/Level;

    const-class v1, Lorg/apache/logging/log4j/core/jackson/LevelMixIn;

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 73
    const-class v0, Lorg/apache/logging/log4j/core/time/Instant;

    const-class v1, Lorg/apache/logging/log4j/core/jackson/InstantMixIn;

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 74
    const-class v0, Lorg/apache/logging/log4j/core/LogEvent;

    const-class v1, Lorg/apache/logging/log4j/core/jackson/LogEventJsonMixIn;

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    const-class v1, Lorg/apache/logging/log4j/core/jackson/ExtendedStackTraceElementMixIn;

    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 77
    const-class v0, Lorg/apache/logging/log4j/core/impl/ThrowableProxy;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const-class v1, Lorg/apache/logging/log4j/core/jackson/ThrowableProxyWithStacktraceAsStringMixIn;

    goto :goto_0

    :cond_0
    const-class v1, Lorg/apache/logging/log4j/core/jackson/ThrowableProxyMixIn;

    goto :goto_0

    :cond_1
    const-class v1, Lorg/apache/logging/log4j/core/jackson/ThrowableProxyWithoutStacktraceMixIn;

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 79
    return-void
.end method
