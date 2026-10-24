.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$UnmatchedArgumentException;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnmatchedArgumentException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x78be1fb24825c898L


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V
    .locals 0
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

    .line 4800
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/util/List;)V
    .locals 3
    .param p1, "commandLine"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "commandLine",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4802
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched argument"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, " "

    goto :goto_0

    :cond_0
    const-string v1, "s "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$UnmatchedArgumentException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/util/Stack;)V
    .locals 2
    .param p1, "commandLine"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "commandLine",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4801
    .local p2, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2200(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$UnmatchedArgumentException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/util/List;)V

    return-void
.end method
