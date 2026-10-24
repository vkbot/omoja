.class final enum Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate$2;
.super Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;
.source "LoggerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 968
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig$LoggerConfigPredicate;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/config/LoggerConfig$1;)V

    return-void
.end method


# virtual methods
.method allow(Lorg/apache/logging/log4j/core/config/LoggerConfig;)Z
    .locals 1
    .param p1, "config"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 971
    instance-of v0, p1, Lorg/apache/logging/log4j/core/async/AsyncLoggerConfig;

    return v0
.end method
