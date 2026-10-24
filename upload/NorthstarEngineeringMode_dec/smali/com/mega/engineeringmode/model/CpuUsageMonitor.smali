.class public Lcom/mega/engineeringmode/model/CpuUsageMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/model/CpuUsageMonitor$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/mega/engineeringmode/model/CpuUsageMonitor$a;

.field public d:Lcom/mega/engineeringmode/model/CpuUsageMonitor$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mega/engineeringmode/model/CpuUsageMonitor$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/model/CpuUsageMonitor$a;-><init>(Lcom/mega/engineeringmode/model/CpuUsageMonitor;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->c:Lcom/mega/engineeringmode/model/CpuUsageMonitor$a;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CpuUsageThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->b:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->c:Lcom/mega/engineeringmode/model/CpuUsageMonitor$a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->d:Lcom/mega/engineeringmode/model/CpuUsageMonitor$b;

    iget-object p0, p0, Lcom/mega/engineeringmode/model/CpuUsageMonitor;->a:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method
