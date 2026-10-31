.class public Lorg/apache/commons/net/DefaultSocketFactory;
.super Ljavax/net/SocketFactory;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final connProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/net/DefaultSocketFactory;-><init>(Ljava/net/Proxy;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .registers 3

    .line 1
    new-instance v0, Ljava/net/ServerSocket;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .registers 4

    .line 7
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .registers 5

    .line 8
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 3

    .line 39
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_c

    .line 40
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    return-object v0

    .line 41
    :cond_c
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5

    .line 42
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_14

    .line 43
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 44
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0

    .line 45
    :cond_14
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7

    .line 46
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_1c

    .line 47
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 48
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 49
    new-instance p3, Ljava/net/InetSocketAddress;

    invoke-direct {p3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0

    .line 50
    :cond_1c
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5

    .line 35
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_14

    .line 36
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 37
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0

    .line 38
    :cond_14
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    .line 2
    .line 3
    if-eqz v0, :cond_1c

    .line 4
    .line 5
    new-instance v0, Ljava/net/Socket;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 13
    .line 14
    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 18
    .line 19
    .line 20
    new-instance p3, Ljava/net/InetSocketAddress;

    .line 21
    .line 22
    invoke-direct {p3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1c
    new-instance v0, Ljava/net/Socket;

    .line 30
    .line 31
    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
