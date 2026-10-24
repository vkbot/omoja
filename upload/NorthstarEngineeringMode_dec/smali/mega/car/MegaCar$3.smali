.class Lmega/car/MegaCar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/MegaCar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/car/MegaCar;


# direct methods
.method public constructor <init>(Lmega/car/MegaCar;)V
    .locals 0

    iput-object p1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {p1}, Lmega/car/MegaCar;->access$200(Lmega/car/MegaCar;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {p2}, Lmega/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/ICar;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lmega/car/MegaCar;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string p2, "null binder service"

    invoke-static {p0, p2}, Lmega/car/utils/LogUtil;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$400(Lmega/car/MegaCar;)Lmega/car/ICar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$400(Lmega/car/MegaCar;)Lmega/car/ICar;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmega/car/MegaCar;->access$502(Lmega/car/MegaCar;I)I

    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0, p2}, Lmega/car/MegaCar;->access$402(Lmega/car/MegaCar;Lmega/car/ICar;)Lmega/car/ICar;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {p1}, Lmega/car/MegaCar;->access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {p1}, Lmega/car/MegaCar;->access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;

    move-result-object p1

    iget-object p0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lmega/car/MegaCar$CarServiceLifecycleListener;->onLifecycleChanged(Lmega/car/MegaCar;Z)V

    :cond_2
    return-void

    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {p1}, Lmega/car/MegaCar;->access$200(Lmega/car/MegaCar;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$500(Lmega/car/MegaCar;)I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->access$700(Lmega/car/MegaCar;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {p1}, Lmega/car/MegaCar;->access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {p1}, Lmega/car/MegaCar;->access$600(Lmega/car/MegaCar;)Lmega/car/MegaCar$CarServiceLifecycleListener;

    move-result-object p1

    iget-object p0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lmega/car/MegaCar$CarServiceLifecycleListener;->onLifecycleChanged(Lmega/car/MegaCar;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmega/car/MegaCar$3;->this$0:Lmega/car/MegaCar;

    invoke-static {p0}, Lmega/car/MegaCar;->access$800(Lmega/car/MegaCar;)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
