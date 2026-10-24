.class public Lorg/apache/mina/util/AvailablePortFinder;
.super Ljava/lang/Object;
.source "AvailablePortFinder.java"


# static fields
.field public static final MAX_PORT_NUMBER:I = 0xbfff

.field public static final MIN_PORT_NUMBER:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static available(I)Z
    .locals 4
    .param p0, "port"    # I

    .line 105
    const/4 v0, 0x1

    if-lt p0, v0, :cond_4

    const v1, 0xbfff

    if-gt p0, v1, :cond_4

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "ss":Ljava/net/ServerSocket;
    const/4 v2, 0x0

    .line 113
    .local v2, "ds":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, p0}, Ljava/net/ServerSocket;-><init>(I)V

    move-object v1, v3

    .line 114
    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 115
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3, p0}, Ljava/net/DatagramSocket;-><init>(I)V

    move-object v2, v3

    .line 116
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    nop

    .line 121
    nop

    .line 122
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 125
    nop

    .line 127
    :try_start_1
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v3

    .line 117
    :goto_0
    return v0

    .line 121
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 125
    :cond_0
    if-eqz v1, :cond_1

    .line 127
    :try_start_2
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    goto :goto_1

    .line 128
    :catch_1
    move-exception v3

    .line 132
    :cond_1
    :goto_1
    throw v0

    .line 118
    :catch_2
    move-exception v0

    .line 121
    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 125
    :cond_2
    if-eqz v1, :cond_3

    .line 127
    :try_start_3
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 130
    :goto_2
    goto :goto_3

    .line 128
    :catch_3
    move-exception v0

    goto :goto_2

    .line 134
    :cond_3
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 106
    .end local v1    # "ss":Ljava/net/ServerSocket;
    .end local v2    # "ds":Ljava/net/DatagramSocket;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid start port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAvailablePorts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    const v1, 0xbfff

    invoke-static {v0, v1}, Lorg/apache/mina/util/AvailablePortFinder;->getAvailablePorts(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailablePorts(II)Ljava/util/Set;
    .locals 5
    .param p0, "fromPort"    # I
    .param p1, "toPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 148
    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    const v0, 0xbfff

    if-gt p1, v0, :cond_3

    if-gt p0, p1, :cond_3

    .line 152
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 154
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move v1, p0

    .local v1, "i":I
    :goto_0
    if-gt v1, p1, :cond_2

    .line 155
    const/4 v2, 0x0

    .line 158
    .local v2, "s":Ljava/net/ServerSocket;
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, v1}, Ljava/net/ServerSocket;-><init>(I)V

    move-object v2, v3

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    nop

    .line 165
    :try_start_1
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 163
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    .line 165
    :try_start_2
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    goto :goto_1

    .line 166
    :catch_0
    move-exception v4

    .line 170
    :cond_0
    :goto_1
    throw v3

    .line 160
    :catch_1
    move-exception v3

    .line 163
    if-eqz v2, :cond_1

    .line 165
    :try_start_3
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 168
    :goto_2
    goto :goto_3

    .line 166
    :catch_2
    move-exception v3

    goto :goto_2

    .line 154
    .end local v2    # "s":Ljava/net/ServerSocket;
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 149
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNextAvailable()I
    .locals 4

    .line 70
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v0, "serverSocket":Ljava/net/ServerSocket;
    :try_start_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    return v1

    .line 70
    :catchall_0
    move-exception v1

    .end local v0    # "serverSocket":Ljava/net/ServerSocket;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    .restart local v0    # "serverSocket":Ljava/net/ServerSocket;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "serverSocket":Ljava/net/ServerSocket;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getNextAvailable(I)I
    .locals 3
    .param p0, "fromPort"    # I

    .line 85
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const v0, 0xbfff

    if-gt p0, v0, :cond_2

    .line 89
    move v1, p0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 90
    invoke-static {v1}, Lorg/apache/mina/util/AvailablePortFinder;->available(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    return v1

    .line 89
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find an available port above "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid start port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
