.class public final Lorg/apache/logging/log4j/core/tools/Generate$ExtendedLogger;
.super Ljava/lang/Object;
.source "Generate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/Generate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedLogger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .line 1030
    sget-object v0, Lorg/apache/logging/log4j/core/tools/Generate$Type;->EXTEND:Lorg/apache/logging/log4j/core/tools/Generate$Type;

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/tools/Generate;->access$100([Ljava/lang/String;Lorg/apache/logging/log4j/core/tools/Generate$Type;)V

    .line 1031
    return-void
.end method
