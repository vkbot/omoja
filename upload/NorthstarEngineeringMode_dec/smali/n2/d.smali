.class public final Ln2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ln0/a;

.field public static b:Ln2/d;

.field public static c:I

.field public static final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ln2/d;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 3

    const-string v0, "getData  id "

    const-string v1, " type "

    const-string v2, "  data  "

    invoke-static {v0, p0, v1, p1, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EngineerModeManager"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ln2/d;->a:Ln0/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Ln0/a;->D(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized b()Ln0/a;
    .locals 7

    const-string v0, "CALLBACK_CACHE = "

    const-class v1, Ln2/d;

    monitor-enter v1

    :try_start_0
    sget-object v2, Ln2/d;->a:Ln0/a;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "engineering_mode_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v4, Ln0/a$a;->a:I

    const-string v4, "com.mega.EngineeringMode.IEngineeringMode"

    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v5, v4, Ln0/a;

    if-eqz v5, :cond_0

    check-cast v4, Ln0/a;

    goto :goto_0

    :cond_0
    new-instance v4, Ln0/a$a$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Ln0/a$a$a;->a:Landroid/os/IBinder;

    :goto_0
    sput-object v4, Ln2/d;->a:Ln0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v4, Ln2/d$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object v2, Ln2/d;->a:Ln0/a;

    if-eqz v2, :cond_1

    sput v3, Ln2/d;->c:I

    const-string v2, "EngineerModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ln2/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v4, Ln2/d;->a:Ln0/a;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Ln2/d;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln0/b;

    invoke-interface {v4, v5, v2}, Ln0/a;->B(ILn0/b;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "EngineerModeManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "EngineerModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sEngineerManager  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ln2/d;->a:Ln0/a;

    if-nez v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ln2/d;->a:Ln0/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Ln2/d;
    .locals 3

    const-class v0, Ln2/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ln2/d;->b:Ln2/d;

    if-nez v1, :cond_0

    new-instance v1, Ln2/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ln2/d;->b()Ln0/a;

    move-result-object v2

    sput-object v2, Ln2/d;->a:Ln0/a;

    sput-object v1, Ln2/d;->b:Ln2/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Ln2/d;->b:Ln2/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static d(ILn0/b$a;)V
    .locals 2

    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Li1/b;

    invoke-direct {v1, p0, p1}, Li1/b;-><init>(ILn0/b$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static e(ILn0/b$a;)V
    .locals 3

    const-string v0, "EngineerModeManager"

    const-string/jumbo v1, "remove = "

    :try_start_0
    sget-object v2, Ln2/d;->a:Ln0/a;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "unregisterRxCallback "

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Ln2/d;->a:Ln0/a;

    invoke-interface {v2, p0, p1}, Ln0/a;->H(ILn0/b$a;)I

    sget-object p1, Ln2/d;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln0/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
