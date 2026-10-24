.class Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;
.super Ljava/lang/Object;
.source "TcpSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/net/TcpSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FactoryData"
.end annotation


# instance fields
.field protected final bufferSize:I

.field protected final connectTimeoutMillis:I

.field protected final host:Ljava/lang/String;

.field protected final immediateFail:Z

.field protected final layout:Lorg/apache/logging/log4j/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field protected final port:I

.field protected final reconnectDelayMillis:I

.field protected final socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "connectTimeoutMillis"    # I
    .param p4, "reconnectDelayMillis"    # I
    .param p5, "immediateFail"    # Z
    .param p7, "bufferSize"    # I
    .param p8, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "host",
            "port",
            "connectTimeoutMillis",
            "reconnectDelayMillis",
            "immediateFail",
            "layout",
            "bufferSize",
            "socketOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I",
            "Lorg/apache/logging/log4j/core/net/SocketOptions;",
            ")V"
        }
    .end annotation

    .line 432
    .local p6, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->host:Ljava/lang/String;

    .line 434
    iput p2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->port:I

    .line 435
    iput p3, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->connectTimeoutMillis:I

    .line 436
    iput p4, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->reconnectDelayMillis:I

    .line 437
    iput-boolean p5, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->immediateFail:Z

    .line 438
    iput-object p6, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    .line 439
    iput p7, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->bufferSize:I

    .line 440
    iput-object p8, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    .line 441
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FactoryData [host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->connectTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reconnectDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->reconnectDelayMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", immediateFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->immediateFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->layout:Lorg/apache/logging/log4j/core/Layout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", socketOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
