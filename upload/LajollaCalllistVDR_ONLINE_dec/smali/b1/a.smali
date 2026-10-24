.class public final Lb1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic a:Lb1/b;


# direct methods
.method public constructor <init>(Lb1/b;)V
    .locals 0

    iput-object p1, p0, Lb1/a;->a:Lb1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1

    sget p1, Lb1/b;->f:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "network failure:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "b"

    invoke-static {p2, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callisto/auto/gatherer/model/CfgDataResponse;

    sget v0, Lb1/b;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response.body:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b"

    invoke-static {v1, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getVersion()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lb1/a;->a:Lb1/b;

    iget-object v1, v0, Lb1/b;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getVersion()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lb1/b;->e:Ljava/lang/String;

    iget-object p2, v0, Lb1/b;->d:Lcom/callisto/auto/gatherer/model/CfgDataRequest;

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->setCurCfgVer(Ljava/lang/String;)V

    iget-object p2, v0, Lb1/b;->d:Lcom/callisto/auto/gatherer/model/CfgDataRequest;

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->getData()Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse$DataBean;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->setUpdateTime(Ljava/lang/String;)V

    iget-object p2, v0, Lb1/b;->b:Lcom/callisto/auto/gatherer/utils/SPUtils;

    iget-object p2, v0, Lb1/b;->c:Landroid/content/Context;

    const-string v1, "CVDR_CONFIG_DATA1"

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/callisto/auto/gatherer/utils/SPUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Get Version:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lb1/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "callisto_vdr"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error response:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/CfgDataResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
