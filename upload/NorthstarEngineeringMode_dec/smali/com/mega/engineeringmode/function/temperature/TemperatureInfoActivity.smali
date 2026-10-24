.class public final Lcom/mega/engineeringmode/function/temperature/TemperatureInfoActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public i:Lcom/mega/engineeringmode/model/TemperatureViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004a

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/mega/engineeringmode/model/TemperatureViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "ViewModelProvider(\n     \u2026ureViewModel::class.java)"

    invoke-static {v0, v1}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/mega/engineeringmode/model/TemperatureViewModel;

    iput-object v0, p0, Lcom/mega/engineeringmode/function/temperature/TemperatureInfoActivity;->i:Lcom/mega/engineeringmode/model/TemperatureViewModel;

    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->b(Lcom/mega/engineeringmode/model/TemperatureViewModel;)V

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    const p1, 0x7f120325

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/temperature/TemperatureInfoActivity;->i:Lcom/mega/engineeringmode/model/TemperatureViewModel;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->a:Ljava/lang/String;

    const-string/jumbo v2, "release"

    invoke-static {v1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->j:Lcom/mega/engineeringmode/model/CpuUsageMonitor;

    iget-object v1, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->c:Lcom/mega/engineeringmode/model/CpuUsageMonitor$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->d:Lcom/mega/engineeringmode/model/CpuUsageMonitor$b;

    iget-object p0, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->a:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :cond_0
    const-string p0, "mModel"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    throw v0
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/temperature/TemperatureInfoActivity;->i:Lcom/mega/engineeringmode/model/TemperatureViewModel;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->h:Lz1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lz1/d;->b:Ljava/lang/Object;

    check-cast v0, Ln2/i;

    const-string v2, "car_engineering_mode/general_ctrl/req"

    invoke-virtual {v0, v2, v1}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    const-string/jumbo v1, "reqSOCTempInfo "

    const-string v2, "ScreenInfoManager"

    invoke-static {v1, v0, v2}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->i:Lz1/d;

    invoke-virtual {v1, v0}, Lz1/d;->e(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lz1/d;->e(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->j:Lcom/mega/engineeringmode/model/CpuUsageMonitor;

    iget-object v0, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->c:Lcom/mega/engineeringmode/model/CpuUsageMonitor$a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string p0, "mModel"

    invoke-static {p0}, Lo3/h;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
