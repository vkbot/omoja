.class public Lcom/callisto/auto/gatherer/model/KernelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_backtrace:Ljava/lang/String;

.field private b_cause:Ljava/lang/String;

.field private b_kernel_uid:Ljava/lang/String;

.field private b_pid:Ljava/lang/String;

.field private b_signal:Ljava/lang/String;

.field private b_time_stamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NA"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_cause:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBacktrace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_backtrace:Ljava/lang/String;

    return-object v0
.end method

.method public getCause()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_cause:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_pid:Ljava/lang/String;

    return-object v0
.end method

.method public getSignal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_signal:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_time_stamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_kernel_uid:Ljava/lang/String;

    return-object v0
.end method

.method public isKernelInfoEqual(Lcom/callisto/auto/gatherer/model/KernelInfo;Lcom/callisto/auto/gatherer/model/KernelInfo;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getSignal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getSignal()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getCause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getCause()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getBacktrace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/KernelInfo;->getBacktrace()Ljava/lang/String;

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

.method public setBacktrace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_backtrace:Ljava/lang/String;

    return-void
.end method

.method public setCause(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_cause:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_pid:Ljava/lang/String;

    return-void
.end method

.method public setSignal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_signal:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_time_stamp:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/KernelInfo;->b_kernel_uid:Ljava/lang/String;

    return-void
.end method
