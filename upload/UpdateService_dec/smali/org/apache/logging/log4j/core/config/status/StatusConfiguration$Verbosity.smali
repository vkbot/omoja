.class public final enum Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;
.super Ljava/lang/Enum;
.source "StatusConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/status/StatusConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Verbosity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

.field public static final enum QUIET:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

.field public static final enum VERBOSE:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    const-string v1, "QUIET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->QUIET:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    new-instance v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    const-string v1, "VERBOSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->VERBOSE:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    .line 59
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    sget-object v4, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->QUIET:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->$VALUES:[Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toVerbosity(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->VERBOSE:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->QUIET:Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 59
    const-class v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;
    .locals 1

    .line 59
    sget-object v0, Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->$VALUES:[Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/config/status/StatusConfiguration$Verbosity;

    return-object v0
.end method
