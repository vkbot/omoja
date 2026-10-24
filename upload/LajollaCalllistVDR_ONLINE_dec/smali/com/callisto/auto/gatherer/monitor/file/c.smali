.class public final Lcom/callisto/auto/gatherer/monitor/file/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lcom/callisto/ncvdr/VdrSensor;

.field public final c:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final e:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/c;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/file/c;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/file/c;->e:Lcom/google/gson/Gson;

    :try_start_0
    new-instance p1, Lcom/callisto/ncvdr/VdrSensor;

    invoke-direct {p1}, Lcom/callisto/ncvdr/VdrSensor;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/monitor/file/c;->b:Lcom/callisto/ncvdr/VdrSensor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/callisto/ncvdr/VdrSensor;->notifySensorInit(Ljava/lang/String;)I
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
.method public final run()V
    .locals 4

    const-string v0, "fileMonitorMsg:"

    :try_start_0
    iget-object v1, p0, Lcom/callisto/auto/gatherer/monitor/file/c;->b:Lcom/callisto/ncvdr/VdrSensor;

    invoke-virtual {v1}, Lcom/callisto/ncvdr/VdrSensor;->getFileMonitorMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "c"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/callisto/auto/gatherer/monitor/file/FilesOpenMonitor$1;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/monitor/file/FilesOpenMonitor$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/file/c;->e:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

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

    const-string v0, "b010306"

    iget-object v2, p0, Lcom/callisto/auto/gatherer/monitor/file/c;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v2, v0, v1}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/monitor/file/c;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, v2}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string v0, "callisto_vdr"

    const-string v1, "Get event:b010306"

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
