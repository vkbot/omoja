.class public Lorg/apache/logging/log4j/core/tools/CustomLoggerGenerator;
.super Ljava/lang/Object;
.source "CustomLoggerGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/Generate$CustomLogger;->main([Ljava/lang/String;)V

    .line 29
    return-void
.end method
