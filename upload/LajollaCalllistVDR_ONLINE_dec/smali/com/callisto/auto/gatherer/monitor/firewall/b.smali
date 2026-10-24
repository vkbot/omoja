.class public final Lcom/callisto/auto/gatherer/monitor/firewall/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lcom/callisto/ncvdr/VdrSensor;

.field public final c:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "20,21,22,23,5555,80"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->e:Ljava/lang/String;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    new-instance p1, Lcom/callisto/ncvdr/VdrSensor;

    invoke-direct {p1}, Lcom/callisto/ncvdr/VdrSensor;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->b:Lcom/callisto/ncvdr/VdrSensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
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

    iget-object p3, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->b:Lcom/callisto/ncvdr/VdrSensor;

    invoke-virtual {p3, p1, p2}, Lcom/callisto/ncvdr/VdrSensor;->firewallSensor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "firewallSensor:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "b"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->e:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->e:Ljava/lang/String;

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

    new-instance v1, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-direct {v1}, Lcom/callisto/auto/gatherer/model/DataListBean;-><init>()V

    invoke-virtual {v1, v0}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/callisto/auto/gatherer/model/DataListBean;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "b030101"

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v2, v0, v1}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/monitor/firewall/b;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, v2}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string v0, "callisto_vdr"

    const-string v1, "Get event:b030101"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
