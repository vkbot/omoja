.class public Lorg/apache/logging/log4j/core/net/TcpSocketManager;
.super Lorg/apache/logging/log4j/core/net/AbstractSocketManager;
.source "TcpSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;,
        Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;,
        Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;,
        Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;
    }
.end annotation


# static fields
.field private static final DEFAULT_PORT:I = 0x11d0

.field public static final DEFAULT_RECONNECTION_DELAY_MILLIS:I = 0x7530

.field private static final FACTORY:Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory<",
            "Lorg/apache/logging/log4j/core/net/TcpSocketManager;",
            "Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connectTimeoutMillis:I

.field private final immediateFail:Z

.field private final reconnectionDelayMillis:I

.field private reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

.field private final retry:Z

.field private socket:Ljava/net/Socket;

.field private final socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->FACTORY:Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;I)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "socket"    # Ljava/net/Socket;
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "connectTimeoutMillis"    # I
    .param p8, "reconnectionDelayMillis"    # I
    .param p9, "immediateFail"    # Z
    .param p11, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
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
            "name",
            "os",
            "socket",
            "inetAddress",
            "host",
            "port",
            "connectTimeoutMillis",
            "reconnectionDelayMillis",
            "immediateFail",
            "layout",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/net/Socket;",
            "Ljava/net/InetAddress;",
            "Ljava/lang/String;",
            "IIIZ",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    .local p10, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/Socket;Ljava/net/InetAddress;Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "socket"    # Ljava/net/Socket;
    .param p4, "inetAddress"    # Ljava/net/InetAddress;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "connectTimeoutMillis"    # I
    .param p8, "reconnectionDelayMillis"    # I
    .param p9, "immediateFail"    # Z
    .param p11, "bufferSize"    # I
    .param p12, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
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
            "name",
            "os",
            "socket",
            "inetAddress",
            "host",
            "port",
            "connectTimeoutMillis",
            "reconnectionDelayMillis",
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
            "Ljava/io/OutputStream;",
            "Ljava/net/Socket;",
            "Ljava/net/InetAddress;",
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

    .line 138
    .local p10, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    move-object v9, p0

    move-object v10, p3

    move/from16 v11, p8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p10

    move/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Ljava/net/InetAddress;Ljava/lang/String;ILorg/apache/logging/log4j/core/Layout;ZI)V

    .line 139
    move/from16 v0, p7

    iput v0, v9, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->connectTimeoutMillis:I

    .line 140
    iput v11, v9, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnectionDelayMillis:I

    .line 141
    iput-object v10, v9, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;

    .line 142
    move/from16 v1, p9

    iput-boolean v1, v9, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->immediateFail:Z

    .line 143
    if-lez v11, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v9, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->retry:Z

    .line 144
    if-nez v10, :cond_1

    .line 145
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->createReconnector()Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    move-result-object v2

    iput-object v2, v9, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    .line 146
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->start()V

    .line 148
    :cond_1
    move-object/from16 v2, p12

    iput-object v2, v9, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/net/TcpSocketManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    .line 45
    iget v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnectionDelayMillis:I

    return v0
.end method

.method static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$1000()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$1100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$1200()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$500()Lorg/apache/logging/log4j/Logger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/logging/log4j/core/net/TcpSocketManager;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    .line 45
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$602(Lorg/apache/logging/log4j/core/net/TcpSocketManager;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .param p1, "x1"    # Ljava/net/Socket;

    .line 45
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/logging/log4j/core/net/TcpSocketManager;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/logging/log4j/core/net/TcpSocketManager;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$902(Lorg/apache/logging/log4j/core/net/TcpSocketManager;Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;)Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    .line 45
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    return-object p1
.end method

.method private createReconnector()Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;
    .locals 2

    .line 391
    new-instance v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    invoke-direct {v0, p0, p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;-><init>(Lorg/apache/logging/log4j/core/net/TcpSocketManager;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V

    .line 392
    .local v0, "recon":Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->setDaemon(Z)V

    .line 393
    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->setPriority(I)V

    .line 394
    return-object v0
.end method

.method protected static createSocket(Ljava/net/InetSocketAddress;Lorg/apache/logging/log4j/core/net/SocketOptions;I)Ljava/net/Socket;
    .locals 3
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;
    .param p1, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .param p2, "connectTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "socketAddress",
            "socketOptions",
            "connectTimeoutMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    sget-object v0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Creating socket {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 405
    .local v0, "newSocket":Ljava/net/Socket;
    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/net/SocketOptions;->apply(Ljava/net/Socket;)V

    .line 409
    :cond_0
    invoke-virtual {v0, p0, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 410
    if-eqz p1, :cond_1

    .line 412
    invoke-virtual {p1, v0}, Lorg/apache/logging/log4j/core/net/SocketOptions;->apply(Ljava/net/Socket;)V

    .line 414
    :cond_1
    return-object v0
.end method

.method public static getSocketManager(Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;I)Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .locals 8
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "connectTimeoutMillis"    # I
    .param p3, "reconnectDelayMillis"    # I
    .param p4, "immediateFail"    # Z
    .param p6, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "bufferSize"
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
            ">;I)",
            "Lorg/apache/logging/log4j/core/net/TcpSocketManager;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    .local p5, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->getSocketManager(Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSocketManager(Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .locals 14
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "connectTimeoutMillis"    # I
    .param p3, "reconnectDelayMillis"    # I
    .param p4, "immediateFail"    # Z
    .param p6, "bufferSize"    # I
    .param p7, "socketOptions"    # Lorg/apache/logging/log4j/core/net/SocketOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x0,
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
            ")",
            "Lorg/apache/logging/log4j/core/net/TcpSocketManager;"
        }
    .end annotation

    .line 193
    .local p5, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    if-gtz p1, :cond_0

    .line 197
    const/16 v0, 0x11d0

    .end local p1    # "port":I
    .local v0, "port":I
    goto :goto_0

    .line 196
    .end local v0    # "port":I
    .restart local p1    # "port":I
    :cond_0
    move v0, p1

    .line 199
    .end local p1    # "port":I
    .restart local v0    # "port":I
    :goto_0
    if-nez p3, :cond_1

    .line 200
    const/16 v1, 0x7530

    move v10, v1

    .end local p3    # "reconnectDelayMillis":I
    .local v1, "reconnectDelayMillis":I
    goto :goto_1

    .line 199
    .end local v1    # "reconnectDelayMillis":I
    .restart local p3    # "reconnectDelayMillis":I
    :cond_1
    move/from16 v10, p3

    .line 202
    .end local p3    # "reconnectDelayMillis":I
    .local v10, "reconnectDelayMillis":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;

    move-object v1, v13

    move-object v2, p0

    move v3, v0

    move/from16 v4, p2

    move v5, v10

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$FactoryData;-><init>(Ljava/lang/String;IIIZLorg/apache/logging/log4j/core/Layout;ILorg/apache/logging/log4j/core/net/SocketOptions;)V

    sget-object v1, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->FACTORY:Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;

    invoke-static {v12, v13, v1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->getManager(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/core/appender/ManagerFactory;)Lorg/apache/logging/log4j/core/appender/OutputStreamManager;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/net/TcpSocketManager;

    return-object v1

    .line 194
    .end local v0    # "port":I
    .end local v10    # "reconnectDelayMillis":I
    .restart local p1    # "port":I
    .restart local p3    # "reconnectDelayMillis":I
    :cond_2
    move-object v11, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A host name is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setHostResolver(Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;)V
    .locals 0
    .param p0, "resolver"    # Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolver"
        }
    .end annotation

    .line 540
    sput-object p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager$TcpSocketManagerFactory;->RESOLVER:Lorg/apache/logging/log4j/core/net/TcpSocketManager$HostResolver;

    .line 541
    return-void
.end method

.method private writeAndFlush([BIIZ)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "immediateFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bytes",
            "offset",
            "length",
            "immediateFlush"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 253
    .local v0, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 254
    if-eqz p4, :cond_0

    .line 255
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized closeOutputStream()Z
    .locals 6

    monitor-enter p0

    .line 261
    :try_start_0
    invoke-super {p0}, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->closeOutputStream()Z

    move-result v0

    .line 262
    .local v0, "closed":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->shutdown()V

    .line 264
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->interrupt()V

    .line 265
    iput-object v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    .line 267
    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;

    .line 268
    .local v1, "oldSocket":Ljava/net/Socket;
    iput-object v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-eqz v1, :cond_1

    .line 271
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    goto :goto_0

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v4, "Could not close socket {}"

    iget-object v5, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;

    invoke-interface {v3, v4, v5}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 277
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 260
    .end local v0    # "closed":Z
    .end local v1    # "oldSocket":Ljava/net/Socket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createSocket(Ljava/net/InetSocketAddress;)Ljava/net/Socket;
    .locals 2
    .param p1, "socketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "socketAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->connectTimeoutMillis:I

    invoke-static {p1, v0, v1}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->createSocket(Ljava/net/InetSocketAddress;Lorg/apache/logging/log4j/core/net/SocketOptions;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    .line 281
    iget v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->connectTimeoutMillis:I

    return v0
.end method

.method public getContentFormat()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-super {p0}, Lorg/apache/logging/log4j/core/net/AbstractSocketManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 296
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "protocol"

    const-string v2, "tcp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "direction"

    const-string v2, "out"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-object v0
.end method

.method public getReconnectionDelayMillis()I
    .locals 1

    .line 575
    iget v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnectionDelayMillis:I

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 571
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketOptions()Lorg/apache/logging/log4j/core/net/SocketOptions;
    .locals 1

    .line 564
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TcpSocketManager [reconnectionDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnectionDelayMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reconnector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socketOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socketOptions:Lorg/apache/logging/log4j/core/net/SocketOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->retry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", immediateFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->immediateFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->connectTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inetAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->layout:Lorg/apache/logging/log4j/core/Layout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", byteBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected write([BIIZ)V
    .locals 11
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "immediateFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bytes",
            "offset",
            "length",
            "immediateFlush"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->immediateFail:Z

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->latch()V

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": socket not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_2
    :goto_0
    monitor-enter p0

    .line 219
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->writeAndFlush([BIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    nop

    .line 246
    :try_start_1
    monitor-exit p0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "causeEx":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "config":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->retry:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    if-nez v2, :cond_3

    .line 223
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->createReconnector()Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->reconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    nop

    .line 234
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->writeAndFlush([BIIZ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    nop

    .line 241
    :try_start_4
    monitor-exit p0

    return-void

    .line 235
    :catch_1
    move-exception v2

    .line 236
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v4, "Error writing to %s after reestablishing connection for %s"

    new-array v5, v10, [Ljava/lang/Object;

    .line 237
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "immediateFlush":Z
    throw v3

    .line 226
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "immediateFlush":Z
    :catch_2
    move-exception v7

    .line 227
    .local v7, "reconnEx":Ljava/io/IOException;
    sget-object v2, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Cannot reestablish socket connection to {}: {}; starting reconnector thread {}"

    .line 228
    invoke-virtual {v7}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->getName()Ljava/lang/String;

    move-result-object v6

    .line 227
    move-object v4, v1

    invoke-interface/range {v2 .. v7}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->reconnector:Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/net/TcpSocketManager$Reconnector;->start()V

    .line 230
    new-instance v2, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    const-string v3, "Error sending to %s for %s"

    new-array v4, v10, [Ljava/lang/Object;

    .line 231
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "immediateFlush":Z
    throw v2

    .line 243
    .end local v7    # "reconnEx":Ljava/io/IOException;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "immediateFlush":Z
    :cond_3
    const-string v2, "Error writing to %s for connection %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/TcpSocketManager;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;

    invoke-direct {v3, v2, v0}, Lorg/apache/logging/log4j/core/appender/AppenderLoggingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "immediateFlush":Z
    throw v3

    .line 246
    .end local v0    # "causeEx":Ljava/io/IOException;
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/net/TcpSocketManager;
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "immediateFlush":Z
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
