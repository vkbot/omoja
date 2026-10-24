.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$RunAll;
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
    name = "RunAll"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 549
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

    .line 565
    .local p1, "parsedCommands":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    invoke-static {p1, p2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->printHelpIfRequested(Ljava/util/List;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x0

    return-object v0

    .line 568
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 570
    .local v2, "parsed":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v2    # "parsed":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    goto :goto_0

    .line 572
    :cond_1
    return-object v0
.end method
