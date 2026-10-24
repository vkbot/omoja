.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x74e48e9b837b442fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 4688
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "ex"
        }
    .end annotation

    .line 4689
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
