.class public final Ln2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lb/b;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IHwBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ln2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lb/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Ln2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:J


# virtual methods
.method public final serviceDied(J)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Ln2/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " hal died."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoReconnectDeathRecipient"

    invoke-static {v0, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Ln2/a;->c:Lb/b;

    invoke-interface {p1, p0}, Lb/b;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to unlinkToDeath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Ln2/a;->c:Lb/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Trying to reconnect to "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hal"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Ln2/a;->e:J

    iget-object p1, p0, Ln2/a;->b:Ln2/g;

    invoke-static {v2, v3, p1}, Ln2/g;->a(JLn2/g;)Lb/b;

    move-result-object p1

    iput-object p1, p0, Ln2/a;->c:Lb/b;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    :try_start_1
    invoke-interface {p1, p0, v1, v2}, Lb/b;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Notifying "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " hal reconnected..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ln2/a;->c:Lb/b;

    iget-object p0, p0, Ln2/a;->d:Ln2/f;

    check-cast p0, Lcom/mega/engineeringmode/function/tbox/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    new-instance p2, Lc2/b;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b;->d:Lcom/mega/engineeringmode/function/tbox/b$c;

    invoke-direct {p2, p1, v0, v1}, Lc2/b;-><init>(Lvendor/mega/tboxclient/V1_0/ITboxClientService;Landroid/os/Looper;Lcom/mega/engineeringmode/function/tbox/b$c;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/tbox/b;->b()V

    return-void

    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to linkToDeath hal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to reconnect to "

    invoke-static {p1, p2, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
