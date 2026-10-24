.class public final Lj1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final e:Lcom/callisto/auto/gatherer/model/SysMemBean;

.field public f:Ljava/lang/Double;

.field public g:Ljava/lang/Double;

.field public final h:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lj1/c;->f:Ljava/lang/Double;

    iput-object v0, p0, Lj1/c;->g:Ljava/lang/Double;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lj1/c;->h:Ljava/text/DecimalFormat;

    iput-object p1, p0, Lj1/c;->c:Landroid/content/Context;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lj1/c;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    new-instance p1, Lcom/callisto/auto/gatherer/model/SysMemBean;

    invoke-direct {p1}, Lcom/callisto/auto/gatherer/model/SysMemBean;-><init>()V

    iput-object p1, p0, Lj1/c;->e:Lcom/callisto/auto/gatherer/model/SysMemBean;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lj1/c;->b:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lj1/c;->c:Landroid/content/Context;

    :try_start_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v0, v2, v0

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lj1/c;->h:Ljava/text/DecimalFormat;

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lj1/c;->g:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lj1/c;->g:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "systemMemoryUsage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SysMemBean"

    invoke-static {v3, v2}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lj1/c;->f:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lj1/c;->g:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lj1/c;->e:Lcom/callisto/auto/gatherer/model/SysMemBean;

    invoke-virtual {v2, v0, v1}, Lcom/callisto/auto/gatherer/model/SysMemBean;->setSysMem(D)V

    const-string v0, "b010102"

    iget-object v1, p0, Lj1/c;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v1, v0, v2}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lj1/c;->b:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, v1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string v0, "callisto_vdr"

    const-string v1, "Get event:b010102"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
