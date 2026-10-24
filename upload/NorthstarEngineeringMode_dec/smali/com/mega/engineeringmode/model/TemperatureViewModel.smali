.class public final Lcom/mega/engineeringmode/model/TemperatureViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lz1/d;

.field public final i:Lz1/d;

.field public final j:Lcom/mega/engineeringmode/model/CpuUsageMonitor;

.field public final k:Landroid/net/Uri;

.field public final l:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const-string v0, "TemperatureViewModel"

    iput-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->a:Ljava/lang/String;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lz1/d;

    invoke-direct {v0}, Lz1/d;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->h:Lz1/d;

    new-instance v1, Lz1/d;

    invoke-direct {v1}, Lz1/d;-><init>()V

    iput-object v1, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->i:Lz1/d;

    new-instance v2, Lcom/mega/engineeringmode/model/CpuUsageMonitor;

    invoke-direct {v2}, Lcom/mega/engineeringmode/model/CpuUsageMonitor;-><init>()V

    iput-object v2, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->j:Lcom/mega/engineeringmode/model/CpuUsageMonitor;

    const-string v3, "instrument_board_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->k:Landroid/net/Uri;

    const-string v3, "main_control_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->l:Landroid/net/Uri;

    new-instance v3, Lcom/mega/engineeringmode/model/TemperatureViewModel$a;

    invoke-direct {v3, p0}, Lcom/mega/engineeringmode/model/TemperatureViewModel$a;-><init>(Lcom/mega/engineeringmode/model/TemperatureViewModel;)V

    iget-object v0, v0, Lz1/d;->b:Ljava/lang/Object;

    check-cast v0, Ln2/i;

    const-string v4, "car_engineering_mode/general_ctrl/resp"

    invoke-virtual {v0, v4, v3}, Ln2/i;->a(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    new-instance v0, Lcom/mega/engineeringmode/model/TemperatureViewModel$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/model/TemperatureViewModel$b;-><init>(Lcom/mega/engineeringmode/model/TemperatureViewModel;)V

    invoke-virtual {v1, v0}, Lz1/d;->d(Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;)V

    new-instance v0, Ls0/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Ls0/e;-><init>(ILjava/lang/Object;)V

    iput-object v0, v2, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->d:Lcom/mega/engineeringmode/model/CpuUsageMonitor$b;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mega/engineeringmode/model/TemperatureViewModel$c;

    invoke-direct {v1, p0, v0}, Lcom/mega/engineeringmode/model/TemperatureViewModel$c;-><init>(Lcom/mega/engineeringmode/model/TemperatureViewModel;Landroid/os/Handler;)V

    return-void
.end method
