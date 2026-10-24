.class public interface abstract Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IExceptionHandler"
.end annotation


# virtual methods
.method public varargs abstract handleException(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
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
.end method
