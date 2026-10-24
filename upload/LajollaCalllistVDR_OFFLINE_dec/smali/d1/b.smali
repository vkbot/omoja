.class public final Ld1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/google/gson/Gson;

.field public final b:Lcom/callisto/auto/gatherer/model/SecureLogBean;

.field public final c:Lcom/callisto/auto/gatherer/model/SockStatBean;

.field public final d:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/callisto/auto/gatherer/model/SecureLogBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/SecureLogBean;-><init>()V

    iput-object v0, p0, Ld1/b;->b:Lcom/callisto/auto/gatherer/model/SecureLogBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/SockStatBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/SockStatBean;-><init>()V

    iput-object v0, p0, Ld1/b;->c:Lcom/callisto/auto/gatherer/model/SockStatBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld1/b;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Ld1/b;->e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Ld1/b;->a:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Ld1/b;->b:Lcom/callisto/auto/gatherer/model/SecureLogBean;

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/net/sockstat"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Ld1/b;->c:Lcom/callisto/auto/gatherer/model/SockStatBean;

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "sockets: used"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    array-length v5, v4

    if-lt v5, v6, :cond_1

    aget-object v5, v4, v6

    invoke-virtual {v3, v5}, Lcom/callisto/auto/gatherer/model/SockStatBean;->setSocketsUsed(Ljava/lang/String;)V

    :cond_1
    const-string v5, "TCP: inuse"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x3

    if-eqz v5, :cond_2

    array-length v5, v4

    if-lt v5, v7, :cond_2

    aget-object v5, v4, v6

    invoke-virtual {v3, v5}, Lcom/callisto/auto/gatherer/model/SockStatBean;->setTcpInuse(Ljava/lang/String;)V

    :cond_2
    const-string v5, "UDP: inuse"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    array-length v2, v4

    if-lt v2, v7, :cond_0

    aget-object v2, v4, v6

    invoke-virtual {v3, v2}, Lcom/callisto/auto/gatherer/model/SockStatBean;->setUdpInuse(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v3, :cond_5

    iget-object v1, p0, Ld1/b;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    const-string v2, "b020108"

    invoke-virtual {v1, v2, v3}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/callisto/auto/gatherer/model/SecureLogBean;->setEventType(I)V

    iget-object v1, p0, Ld1/b;->a:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-byte v4, v0, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Ld1/b;->e:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {p0, v1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->sendSecureLog(Ljava/util/ArrayList;)Z

    const-string p0, "callisto_vdr"

    const-string v0, "Get event:b020108"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method
