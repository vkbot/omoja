.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$OverwrittenOptionException;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverwrittenOptionException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1291a279ca17eba0L


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

    .line 4812
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    return-void
.end method
