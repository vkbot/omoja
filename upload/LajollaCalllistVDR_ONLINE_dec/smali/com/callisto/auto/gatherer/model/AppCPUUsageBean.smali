.class public Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_app_cpu:D

.field private b_app_pid:I

.field private b_resapp_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_resapp_name:Ljava/lang/String;

    iput p2, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_app_pid:I

    iput-wide p3, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_app_cpu:D

    return-void
.end method


# virtual methods
.method public getAppCpu()D
    .locals 2

    iget-wide v0, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_app_cpu:D

    return-wide v0
.end method

.method public getAppPid()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_app_pid:I

    return v0
.end method

.method public getResAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_resapp_name:Ljava/lang/String;

    return-object v0
.end method

.method public isAppResUsageBeanEqual(Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->getResAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->getResAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->getAppCpu()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->getAppCpu()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->getAppPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->getAppPid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    :goto_1
    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public setAppCpu(D)V
    .locals 0

    iput-wide p1, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_app_cpu:D

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_resapp_name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{b_resapp_name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_resapp_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", b_app_cpu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_app_cpu:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", b_app_pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callisto/auto/gatherer/model/AppCPUUsageBean;->b_app_pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
