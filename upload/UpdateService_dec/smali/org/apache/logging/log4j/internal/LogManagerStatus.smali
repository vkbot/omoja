.class public Lorg/apache/logging/log4j/internal/LogManagerStatus;
.super Ljava/lang/Object;
.source "LogManagerStatus.java"


# static fields
.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/logging/log4j/internal/LogManagerStatus;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 31
    sget-boolean v0, Lorg/apache/logging/log4j/internal/LogManagerStatus;->initialized:Z

    return v0
.end method

.method public static setInitialized(Z)V
    .locals 0
    .param p0, "managerStatus"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "managerStatus"
        }
    .end annotation

    .line 27
    sput-boolean p0, Lorg/apache/logging/log4j/internal/LogManagerStatus;->initialized:Z

    .line 28
    return-void
.end method
