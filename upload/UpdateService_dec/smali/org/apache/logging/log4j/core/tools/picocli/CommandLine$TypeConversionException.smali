.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TypeConversionException;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeConversionException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b020bbf27402e02L


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

    .line 4713
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;-><init>(Ljava/lang/String;)V

    return-void
.end method
