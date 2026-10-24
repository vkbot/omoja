.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecutionException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6bc12f9f68bd9bfeL


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

    .line 4697
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;-><init>(Ljava/lang/String;)V

    .line 4698
    const-string v0, "commandLine"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;->commandLine:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 4699
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

    .line 4701
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4702
    const-string v0, "commandLine"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;->commandLine:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 4703
    return-void
.end method


# virtual methods
.method public getCommandLine()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 1

    .line 4707
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;->commandLine:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    return-object v0
.end method
