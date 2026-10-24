.class public final Lcom/callisto/auto/gatherer/monitor/firewall/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/callisto/auto/gatherer/model/DataListBean;

.field public final b:Lcom/callisto/ncvdr/VdrSensor;

.field public final c:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final e:Lcom/google/gson/Gson;

.field public f:Ljava/lang/String;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Lcom/callisto/auto/gatherer/model/SecureLogBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "20,21,22,23,5555,80"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->f:Ljava/lang/String;

    new-instance v0, Lcom/callisto/auto/gatherer/model/SecureLogBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/SecureLogBean;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->i:Lcom/callisto/auto/gatherer/model/SecureLogBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->g:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->h:Ljava/util/ArrayList;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    new-instance p1, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-direct {p1}, Lcom/callisto/auto/gatherer/model/DataListBean;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->a:Lcom/callisto/auto/gatherer/model/DataListBean;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->e:Lcom/google/gson/Gson;

    :try_start_0
    new-instance p1, Lcom/callisto/ncvdr/VdrSensor;

    invoke-direct {p1}, Lcom/callisto/ncvdr/VdrSensor;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->b:Lcom/callisto/ncvdr/VdrSensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callisto/auto/gatherer/model/OutPortBean;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callisto/auto/gatherer/model/OutPortBean;

    invoke-virtual {v7, v4, v7}, Lcom/callisto/auto/gatherer/model/OutPortBean;->isOutPortEqual(Lcom/callisto/auto/gatherer/model/OutPortBean;Lcom/callisto/auto/gatherer/model/OutPortBean;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    :cond_3
    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->a:Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-virtual {v3, v1}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    const-string v4, "b030101"

    invoke-virtual {v1, v4, v3}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x65

    iget-object v3, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->i:Lcom/callisto/auto/gatherer/model/SecureLogBean;

    invoke-virtual {v3, v1}, Lcom/callisto/auto/gatherer/model/SecureLogBean;->setEventType(I)V

    iget-object v1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->e:Lcom/google/gson/Gson;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v4, v1

    :goto_1
    if-ge v5, v4, :cond_5

    aget-byte v6, v1, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {p0, v3}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->sendSecureLog(Ljava/util/ArrayList;)Z

    const-string p0, "callisto_vdr"

    const-string v1, "Get event:b030101"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;

    invoke-direct {v0, p1, p3, p2}, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/model/FireWallRuleModel;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->b:Lcom/callisto/ncvdr/VdrSensor;

    invoke-virtual {p0, p1, p2}, Lcom/callisto/ncvdr/VdrSensor;->firewallSensor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "firewallSensor:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "b"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 5

    const-string v0, "b"

    const-string v1, "portMonitorSensor:"

    const-string v2, "portSensor:"

    iget-object v3, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->b:Lcom/callisto/ncvdr/VdrSensor;

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/callisto/ncvdr/VdrSensor;->multiPortMonitorSensor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/callisto/auto/gatherer/monitor/firewall/a;

    invoke-direct {v1}, Lcom/callisto/auto/gatherer/monitor/firewall/a;-><init>()V

    const-class v3, Lcom/callisto/auto/gatherer/model/OutPortBean;

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/callisto/auto/gatherer/monitor/firewall/FireWallMonitor$1;

    invoke-direct {v1}, Lcom/callisto/auto/gatherer/monitor/firewall/FireWallMonitor$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/callisto/auto/gatherer/monitor/firewall/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
