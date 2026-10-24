.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$RunLast;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunLast"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleParseResult(Ljava/util/List;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)Ljava/util/List;
    .locals 4
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
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

    .line 539
    .local p1, "parsedCommands":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    invoke-static {p1, p2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->printHelpIfRequested(Ljava/util/List;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 540
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 541
    .local v0, "last":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
