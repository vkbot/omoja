.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterIndexGapException;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterIndexGapException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x151b9c483de4338fL


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

    .line 4794
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;-><init>(Ljava/lang/String;)V

    return-void
.end method
