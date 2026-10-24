.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DefaultExceptionHandler;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultExceptionHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs handleException(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "ex"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "ex",
            "out",
            "ansi",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;",
            "Ljava/io/PrintStream;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 413
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;->getCommandLine()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usage(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    .line 415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
