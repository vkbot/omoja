.class public Lorg/apache/logging/log4j/core/net/SocketOptions;
.super Ljava/lang/Object;
.source "SocketOptions.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/net/SocketOptions;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "SocketOptions"
    printObject = true
.end annotation


# instance fields
.field private keepAlive:Ljava/lang/Boolean;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private oobInline:Ljava/lang/Boolean;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private performancePreferences:Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "PerformancePreferences"
    .end annotation
.end field

.field private receiveBufferSize:Ljava/lang/Integer;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private reuseAddress:Ljava/lang/Boolean;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private rfc1349TrafficClass:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private sendBufferSize:Ljava/lang/Integer;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private soLinger:Ljava/lang/Integer;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private soTimeout:Ljava/lang/Integer;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private tcpNoDelay:Ljava/lang/Boolean;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private trafficClass:Ljava/lang/Integer;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 37
    new-instance v0, Lorg/apache/logging/log4j/core/net/SocketOptions;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/net/SocketOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "socket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->keepAlive:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->oobInline:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->reuseAddress:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 83
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->performancePreferences:Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;

    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;->apply(Ljava/net/Socket;)V

    .line 86
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->receiveBufferSize:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 89
    :cond_4
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->soLinger:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 92
    :cond_5
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->soTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 95
    :cond_6
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->tcpNoDelay:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 98
    :cond_7
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/SocketOptions;->getActualTrafficClass()Ljava/lang/Integer;

    move-result-object v0

    .line 99
    .local v0, "actualTrafficClass":Ljava/lang/Integer;
    if-eqz v0, :cond_8

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 102
    :cond_8
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/SocketOptions;->build()Lorg/apache/logging/log4j/core/net/SocketOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 2

    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/net/SocketOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getActualTrafficClass()Ljava/lang/Integer;
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->trafficClass:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->rfc1349TrafficClass:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You MUST not set both customTrafficClass and trafficClass."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->trafficClass:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 118
    return-object v0

    .line 120
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->rfc1349TrafficClass:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 123
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPerformancePreferences()Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->performancePreferences:Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;

    return-object v0
.end method

.method public getReceiveBufferSize()Ljava/lang/Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->receiveBufferSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRfc1349TrafficClass()Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->rfc1349TrafficClass:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    return-object v0
.end method

.method public getSendBufferSize()Ljava/lang/Integer;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->sendBufferSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSoLinger()Ljava/lang/Integer;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->soLinger:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSoTimeout()Ljava/lang/Integer;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->soTimeout:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrafficClass()Ljava/lang/Integer;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->trafficClass:Ljava/lang/Integer;

    return-object v0
.end method

.method public isKeepAlive()Ljava/lang/Boolean;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->keepAlive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isOobInline()Ljava/lang/Boolean;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->oobInline:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isReuseAddress()Ljava/lang/Boolean;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->reuseAddress:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isTcpNoDelay()Ljava/lang/Boolean;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->tcpNoDelay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setKeepAlive(Z)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .param p1, "keepAlive"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keepAlive"
        }
    .end annotation

    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->keepAlive:Ljava/lang/Boolean;

    .line 172
    return-object p0
.end method

.method public setOobInline(Z)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .param p1, "oobInline"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oobInline"
        }
    .end annotation

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->oobInline:Ljava/lang/Boolean;

    .line 177
    return-object p0
.end method

.method public setPerformancePreferences(Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 0
    .param p1, "performancePreferences"    # Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "performancePreferences"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->performancePreferences:Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;

    .line 182
    return-object p0
.end method

.method public setReceiveBufferSize(I)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .param p1, "receiveBufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "receiveBufferSize"
        }
    .end annotation

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->receiveBufferSize:Ljava/lang/Integer;

    .line 187
    return-object p0
.end method

.method public setReuseAddress(Z)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .param p1, "reuseAddress"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reuseAddress"
        }
    .end annotation

    .line 191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->reuseAddress:Ljava/lang/Boolean;

    .line 192
    return-object p0
.end method

.method public setRfc1349TrafficClass(Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 0
    .param p1, "trafficClass"    # Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "trafficClass"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->rfc1349TrafficClass:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    .line 197
    return-object p0
.end method

.method public setSendBufferSize(I)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .param p1, "sendBufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sendBufferSize"
        }
    .end annotation

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->sendBufferSize:Ljava/lang/Integer;

    .line 202
    return-object p0
.end method

.method public setSoLinger(I)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .param p1, "soLinger"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "soLinger"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->soLinger:Ljava/lang/Integer;

    .line 207
    return-object p0
.end method

.method public setSoTimeout(I)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .param p1, "soTimeout"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "soTimeout"
        }
    .end annotation

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->soTimeout:Ljava/lang/Integer;

    .line 212
    return-object p0
.end method

.method public setTcpNoDelay(Z)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .param p1, "tcpNoDelay"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tcpNoDelay"
        }
    .end annotation

    .line 216
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->tcpNoDelay:Ljava/lang/Boolean;

    .line 217
    return-object p0
.end method

.method public setTrafficClass(I)Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1
    .param p1, "trafficClass"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "trafficClass"
        }
    .end annotation

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->trafficClass:Ljava/lang/Integer;

    .line 222
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketOptions [keepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->keepAlive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oobInline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->oobInline:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", performancePreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->performancePreferences:Lorg/apache/logging/log4j/core/net/SocketPerformancePreferences;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", receiveBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->receiveBufferSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reuseAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->reuseAddress:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rfc1349TrafficClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->rfc1349TrafficClass:Lorg/apache/logging/log4j/core/net/Rfc1349TrafficClass;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sendBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->sendBufferSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", soLinger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->soLinger:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", soTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->soTimeout:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tcpNoDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->tcpNoDelay:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trafficClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/SocketOptions;->trafficClass:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
