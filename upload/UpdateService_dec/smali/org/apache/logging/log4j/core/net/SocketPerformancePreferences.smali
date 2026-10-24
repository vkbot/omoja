.class public Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;
.super Ljava/lang/Object;
.source "SocketPerformancePreferences.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "SocketPerformancePreferences"
    printObject = true
.end annotation


# instance fields
.field private bandwidth:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private connectionTime:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private latency:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 38
    new-instance v0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;-><init>()V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "socket"
        }
    .end annotation

    .line 54
    iget v0, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->connectionTime:I

    iget v1, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->latency:I

    iget v2, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->bandwidth:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 55
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->build()Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;
    .locals 2

    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBandwidth()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->bandwidth:I

    return v0
.end method

.method public getConnectionTime()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->connectionTime:I

    return v0
.end method

.method public getLatency()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->latency:I

    return v0
.end method

.method public setBandwidth(I)V
    .locals 0
    .param p1, "bandwidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bandwidth"
        }
    .end annotation

    .line 79
    iput p1, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->bandwidth:I

    .line 80
    return-void
.end method

.method public setConnectionTime(I)V
    .locals 0
    .param p1, "connectionTime"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "connectionTime"
        }
    .end annotation

    .line 83
    iput p1, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->connectionTime:I

    .line 84
    return-void
.end method

.method public setLatency(I)V
    .locals 0
    .param p1, "latency"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "latency"
        }
    .end annotation

    .line 87
    iput p1, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->latency:I

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketPerformancePreferences [bandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->bandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->connectionTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->latency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
