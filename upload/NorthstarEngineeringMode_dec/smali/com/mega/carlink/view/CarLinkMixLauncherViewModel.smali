.class public Lcom/mega/carlink/view/CarLinkMixLauncherViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 3
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    const-string p0, "CarLinkMixLauncherViewModel"

    const-string v0, "CarLinkMixLauncherViewModel()"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo0/d;->e()Lo0/d;

    move-result-object p0

    new-instance v0, Lcom/mega/carlink/view/CarLinkMixLauncherViewModel$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init() context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarLinkDeviceManager"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "init() context is null"

    invoke-static {v2, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mega/carlink/view/CarLinkMixLauncherViewModel$a;->b()V

    :cond_0
    iput-object p1, p0, Lo0/d;->b:Landroid/content/Context;

    iget-object p1, p0, Lo0/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo0/d;->c()Z

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 4

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    const-string p0, "CarLinkMixLauncherViewModel"

    const-string/jumbo v0, "onCleared()"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo0/d;->e()Lo0/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CarLinkDeviceManager"

    const-string/jumbo v1, "unBind()"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    iget-object v1, p0, Lo0/d;->t:Lo0/d$c;

    invoke-interface {v0, v1}, Lo0/h;->k(Lo0/m;)V

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    iget-object v1, p0, Lo0/d;->u:Lo0/d$d;

    invoke-interface {v0, v1}, Lo0/h;->m(Lo0/n;)V

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    iget-object v1, p0, Lo0/d;->v:Lo0/d$e;

    invoke-interface {v0, v1}, Lo0/h;->r(Lo0/e;)V

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    iget-object v1, p0, Lo0/d;->w:Lo0/d$f;

    invoke-interface {v0, v1}, Lo0/h;->u(Lo0/j;)V

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    iget-object v1, p0, Lo0/d;->x:Lo0/d$g;

    invoke-interface {v0, v1}, Lo0/h;->F(Lo0/g;)V

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    iget-object v1, p0, Lo0/d;->y:Lo0/d$h;

    invoke-interface {v0, v1}, Lo0/h;->j(Lo0/f;)V

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    iget-object v1, p0, Lo0/d;->z:Lo0/d$i;

    invoke-interface {v0, v1}, Lo0/h;->a(Lo0/i;)V

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    iget-object v1, p0, Lo0/d;->A:Lo0/d$j;

    invoke-interface {v0, v1}, Lo0/h;->g(Lo0/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarLinkDeviceManager"

    const-string/jumbo v2, "unBind "

    invoke-static {v1, v2, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lo0/d;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo0/d;->s:Lo0/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lo0/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lo0/d;->s:Lo0/d$b;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v0, p0, Lo0/d;->b:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "CarLinkDeviceManager"

    const-string v3, "Service was not registered"

    invoke-static {v2, v3, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lo0/d;->b:Landroid/content/Context;

    :cond_0
    :goto_1
    iget-object v0, p0, Lo0/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lo0/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    iget-object v1, p0, Lo0/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lo0/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    iget-object v0, p0, Lo0/d;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lo0/d;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    iget-object v1, p0, Lo0/d;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lo0/d;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    iget-object v0, p0, Lo0/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lo0/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    iget-object v1, p0, Lo0/d;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lo0/d;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v0, p0, Lo0/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lo0/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v1, p0, Lo0/d;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lo0/d;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v0, p0, Lo0/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_a
    iget-object p0, p0, Lo0/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw p0

    :catchall_6
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw p0

    :catchall_7
    move-exception p0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw p0

    :catchall_8
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw p0
.end method
