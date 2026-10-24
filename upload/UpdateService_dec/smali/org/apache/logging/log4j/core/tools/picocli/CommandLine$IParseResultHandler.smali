.class public interface abstract Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IParseResultHandler"
.end annotation


# virtual methods
.method public abstract handleParseResult(Ljava/util/List;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parsedCommands",
            "out",
            "ansi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            ">;",
            "Ljava/io/PrintStream;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;
        }
    .end annotation
.end method
