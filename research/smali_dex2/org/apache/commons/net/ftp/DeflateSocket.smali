.class final Lorg/apache/commons/net/ftp/DeflateSocket;
.super Lorg/apache/commons/net/ftp/DelegateSocket;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/DelegateSocket;-><init>(Ljava/net/Socket;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/net/ftp/DelegateSocket;->delegate:Ljava/net/Socket;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/net/ftp/DelegateSocket;->delegate:Ljava/net/Socket;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
