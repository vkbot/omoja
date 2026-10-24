.class public final Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;
.super Ljava/lang/Object;
.source "RolloverDescriptionImpl.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescription;


# instance fields
.field private final activeFileName:Ljava/lang/String;

.field private final append:Z

.field private final asynchronous:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

.field private final synchronous:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLorg/apache/logging/log4j/core/appender/rolling/action/Action;Lorg/apache/logging/log4j/core/appender/rolling/action/Action;)V
    .locals 1
    .param p1, "activeFileName"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "synchronous"    # Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .param p4, "asynchronous"    # Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "activeFileName",
            "append",
            "synchronous",
            "asynchronous"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "activeFileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iput-boolean p2, p0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;->append:Z

    .line 63
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;->activeFileName:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;->synchronous:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    .line 65
    iput-object p4, p0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;->asynchronous:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    .line 66
    return-void
.end method


# virtual methods
.method public getActiveFileName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;->activeFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppend()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;->append:Z

    return v0
.end method

.method public getAsynchronous()Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;->asynchronous:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    return-object v0
.end method

.method public getSynchronous()Lorg/apache/logging/log4j/core/appender/rolling/action/Action;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/rolling/RolloverDescriptionImpl;->synchronous:Lorg/apache/logging/log4j/core/appender/rolling/action/Action;

    return-object v0
.end method
