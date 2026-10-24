.class public final Lb1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic f:I


# instance fields
.field public final b:Lcom/callisto/auto/gatherer/utils/SPUtils;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/callisto/auto/gatherer/model/CfgDataRequest;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0.0"

    iput-object v0, p0, Lb1/b;->e:Ljava/lang/String;

    iput-object p1, p0, Lb1/b;->c:Landroid/content/Context;

    new-instance p1, Lcom/callisto/auto/gatherer/utils/SPUtils;

    invoke-direct {p1}, Lcom/callisto/auto/gatherer/utils/SPUtils;-><init>()V

    iput-object p1, p0, Lb1/b;->b:Lcom/callisto/auto/gatherer/utils/SPUtils;

    new-instance p1, Lcom/callisto/auto/gatherer/model/CfgDataRequest;

    invoke-direct {p1}, Lcom/callisto/auto/gatherer/model/CfgDataRequest;-><init>()V

    iput-object p1, p0, Lb1/b;->d:Lcom/callisto/auto/gatherer/model/CfgDataRequest;

    iput-object p2, p0, Lb1/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->setCurCfgVer(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/callisto/auto/gatherer/model/CfgDataRequest;->setUpdateTime(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->getInstance()Lcom/callisto/auto/gatherer/repository/RetrofitClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->getApiService()Lcom/callisto/auto/gatherer/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lb1/b;->d:Lcom/callisto/auto/gatherer/model/CfgDataRequest;

    invoke-interface {v0, v1}, Lcom/callisto/auto/gatherer/api/ApiService;->postHeartbeat(Lcom/callisto/auto/gatherer/model/CfgDataRequest;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lb1/a;

    invoke-direct {v1, p0}, Lb1/a;-><init>(Lb1/b;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
