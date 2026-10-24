.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x147fc24ac173a943L


# instance fields
.field private final commandLine:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V
    .locals 1
    .param p1, "commandLine"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "commandLine",
            "msg"
        }
    .end annotation

    .line 4725
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;-><init>(Ljava/lang/String;)V

    .line 4726
    const-string v0, "commandLine"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;->commandLine:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 4727
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "commandLine"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "commandLine",
            "msg",
            "ex"
        }
    .end annotation

    .line 4734
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4735
    const-string v0, "commandLine"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;->commandLine:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 4736
    return-void
.end method

.method static synthetic access$1900(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/Exception;Ljava/lang/String;I[Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p1, "x1"    # Ljava/lang/Exception;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/String;

    .line 4716
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;->create(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/Exception;Ljava/lang/String;I[Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;

    move-result-object v0

    return-object v0
.end method

.method private static create(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/Exception;Ljava/lang/String;I[Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;
    .locals 3
    .param p0, "cmd"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "cmd",
            "ex",
            "arg",
            "i",
            "args"
        }
    .end annotation

    .line 4745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while processing argument at or before arg["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4746
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4747
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v1
.end method


# virtual methods
.method public getCommandLine()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 1

    .line 4742
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;->commandLine:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    return-object v0
.end method
