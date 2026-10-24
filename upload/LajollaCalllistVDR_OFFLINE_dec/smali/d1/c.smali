.class public final Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/google/gson/Gson;

.field public final b:Lcom/callisto/auto/gatherer/model/SecureLogBean;

.field public c:Lcom/callisto/auto/gatherer/model/SnmBean;

.field public d:Lcom/callisto/auto/gatherer/model/SnmBean;

.field public final e:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final f:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/callisto/auto/gatherer/model/SecureLogBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/SecureLogBean;-><init>()V

    iput-object v0, p0, Ld1/c;->b:Lcom/callisto/auto/gatherer/model/SecureLogBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/SnmBean;-><init>()V

    iput-object v0, p0, Ld1/c;->d:Lcom/callisto/auto/gatherer/model/SnmBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld1/c;->e:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Ld1/c;->f:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Ld1/c;->a:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Ld1/c;->c:Lcom/callisto/auto/gatherer/model/SnmBean;

    iget-object v1, p0, Ld1/c;->d:Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-virtual {v0, v0, v1}, Lcom/callisto/auto/gatherer/model/SnmBean;->isSnmBeanEqual(Lcom/callisto/auto/gatherer/model/SnmBean;Lcom/callisto/auto/gatherer/model/SnmBean;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "b020111"

    iget-object v1, p0, Ld1/c;->c:Lcom/callisto/auto/gatherer/model/SnmBean;

    iget-object v2, p0, Ld1/c;->e:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v2, v0, v1}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x6f

    iget-object v1, p0, Ld1/c;->b:Lcom/callisto/auto/gatherer/model/SecureLogBean;

    invoke-virtual {v1, v0}, Lcom/callisto/auto/gatherer/model/SecureLogBean;->setEventType(I)V

    iget-object v0, p0, Ld1/c;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld1/c;->f:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, v1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->sendSecureLog(Ljava/util/ArrayList;)Z

    const-string v0, "callisto_vdr"

    const-string v1, "Get event:b020111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld1/c;->c:Lcom/callisto/auto/gatherer/model/SnmBean;

    iput-object v0, p0, Ld1/c;->d:Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/SnmBean;->clear()V

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/net/snmp"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-direct {v1}, Lcom/callisto/auto/gatherer/model/SnmBean;-><init>()V

    iput-object v1, p0, Ld1/c;->c:Lcom/callisto/auto/gatherer/model/SnmBean;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ip: Forwarding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v3, "Ip:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v2, v4

    iget-object v5, p0, Ld1/c;->c:Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-virtual {v5, v3}, Lcom/callisto/auto/gatherer/model/SnmBean;->setForwarding(Ljava/lang/String;)V

    :cond_1
    const-string v3, "Icmp: InMsgs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Icmp:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v4

    iget-object v4, p0, Ld1/c;->c:Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-virtual {v4, v3}, Lcom/callisto/auto/gatherer/model/SnmBean;->setInMsgs(Ljava/lang/String;)V

    :cond_2
    const-string v3, "Tcp: RtoAlgorithm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Tcp:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xe

    aget-object v3, v2, v3

    iget-object v4, p0, Ld1/c;->c:Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-virtual {v4, v3}, Lcom/callisto/auto/gatherer/model/SnmBean;->setOutRsts(Ljava/lang/String;)V

    :cond_3
    const-string v3, "Udp: InDatagrams"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Udp:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aget-object v1, v2, v1

    iget-object v2, p0, Ld1/c;->c:Lcom/callisto/auto/gatherer/model/SnmBean;

    invoke-virtual {v2, v1}, Lcom/callisto/auto/gatherer/model/SnmBean;->setNoPorts(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ld1/c;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
