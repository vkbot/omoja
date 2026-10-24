.class public Lorg/apache/logging/log4j/core/tools/BasicCommandLineArguments;
.super Ljava/lang/Object;
.source "BasicCommandLineArguments.java"


# instance fields
.field private help:Z
    .annotation runtime Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
        description = {
            "Prints this help and exits."
        }
        names = {
            "--help",
            "-?",
            "-h"
        }
        usageHelp = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHelp()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/BasicCommandLineArguments;->help:Z

    return v0
.end method

.method public setHelp(Z)V
    .locals 0
    .param p1, "help"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "help"
        }
    .end annotation

    .line 31
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/tools/BasicCommandLineArguments;->help:Z

    .line 32
    return-void
.end method
