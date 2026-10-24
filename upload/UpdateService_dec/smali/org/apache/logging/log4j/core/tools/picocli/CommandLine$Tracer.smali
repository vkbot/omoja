.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tracer"
.end annotation


# instance fields
.field level:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

.field stream:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4668
    const-string v0, "picocli.trace"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->lookup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->level:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    .line 4669
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->stream:Ljava/io/PrintStream;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$1;

    .line 4667
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;-><init>()V

    return-void
.end method


# virtual methods
.method varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "params"
        }
    .end annotation

    .line 4672
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->DEBUG:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->access$2600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "params"
        }
    .end annotation

    .line 4671
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->INFO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->access$2600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method isDebug()Z
    .locals 2

    .line 4675
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->level:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    sget-object v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->DEBUG:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->isEnabled(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;)Z

    move-result v0

    return v0
.end method

.method isInfo()Z
    .locals 2

    .line 4674
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->level:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    sget-object v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->INFO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->isEnabled(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;)Z

    move-result v0

    return v0
.end method

.method isWarn()Z
    .locals 2

    .line 4673
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->level:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    sget-object v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->WARN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->isEnabled(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;)Z

    move-result v0

    return v0
.end method

.method varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "params"
        }
    .end annotation

    .line 4670
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->WARN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->access$2600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
