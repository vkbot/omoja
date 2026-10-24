.class public Lcom/callisto/auto/gatherer/model/ProcExe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_proc_exe_info:Ljava/lang/String;

.field private b_proc_exe_pid:Ljava/lang/String;

.field private b_proc_exe_stat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/callisto/auto/gatherer/model/ProcExe;->b_proc_exe_pid:Ljava/lang/String;

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/ProcExe;->b_proc_exe_info:Ljava/lang/String;

    iput p3, p0, Lcom/callisto/auto/gatherer/model/ProcExe;->b_proc_exe_stat:I

    return-void
.end method


# virtual methods
.method public getProcExeInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/ProcExe;->b_proc_exe_info:Ljava/lang/String;

    return-object v0
.end method

.method public getProcExePid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/ProcExe;->b_proc_exe_pid:Ljava/lang/String;

    return-object v0
.end method

.method public getProcExeStat()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/ProcExe;->b_proc_exe_stat:I

    return v0
.end method

.method public isProcExeEqual(Lcom/callisto/auto/gatherer/model/ProcExe;Lcom/callisto/auto/gatherer/model/ProcExe;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/ProcExe;->getProcExeInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/ProcExe;->getProcExeInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/ProcExe;->getProcExePid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/ProcExe;->getProcExePid()Ljava/lang/String;

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

.method public setProcExeStat(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/ProcExe;->b_proc_exe_stat:I

    return-void
.end method
