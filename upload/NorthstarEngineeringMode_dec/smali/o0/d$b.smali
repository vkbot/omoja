.class public final Lo0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/d;


# direct methods
.method public constructor <init>(Lo0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/d$b;->a:Lo0/d;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "CarLinkDeviceManager"

    const-string/jumbo v0, "onBindingDied()"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lo0/d$b;->a:Lo0/d;

    invoke-virtual {p0}, Lo0/d;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo0/d;->b:Landroid/content/Context;

    iget-object v0, p0, Lo0/d;->s:Lo0/d$b;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lo0/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lo0/d;->c()Z

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "CarLinkDeviceManager"

    const-string/jumbo v0, "onServiceConnected()"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/d$b;->a:Lo0/d;

    sget v1, Lo0/h$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.mega.carlink.ICarLinkInfoInterface"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lo0/h;

    if-eqz v2, :cond_1

    move-object p2, v1

    check-cast p2, Lo0/h;

    goto :goto_0

    :cond_1
    new-instance v1, Lo0/h$a$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lo0/h$a$a;->a:Landroid/os/IBinder;

    move-object p2, v1

    :goto_0
    iput-object p2, v0, Lo0/d;->c:Lo0/h;

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lo0/d;->a:Z

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/d$s;

    invoke-interface {v1}, Lo0/d$s;->a()V

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->c:Lo0/h;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v1, p0, Lo0/d$b;->a:Lo0/d;

    iget-object v1, v1, Lo0/d;->e:Lo0/d$k;

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->c:Lo0/h;

    iget-object v0, p0, Lo0/d$b;->a:Lo0/d;

    iget-object v0, v0, Lo0/d;->t:Lo0/d$c;

    invoke-interface {p2, v0}, Lo0/h;->s(Lo0/m;)V

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->c:Lo0/h;

    iget-object v0, p0, Lo0/d$b;->a:Lo0/d;

    iget-object v0, v0, Lo0/d;->u:Lo0/d$d;

    invoke-interface {p2, v0}, Lo0/h;->N(Lo0/n;)V

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->c:Lo0/h;

    iget-object v0, p0, Lo0/d$b;->a:Lo0/d;

    iget-object v0, v0, Lo0/d;->v:Lo0/d$e;

    invoke-interface {p2, v0}, Lo0/h;->n(Lo0/e;)V

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->c:Lo0/h;

    iget-object v0, p0, Lo0/d$b;->a:Lo0/d;

    iget-object v0, v0, Lo0/d;->w:Lo0/d$f;

    invoke-interface {p2, v0}, Lo0/h;->J(Lo0/j;)V

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->c:Lo0/h;

    iget-object v0, p0, Lo0/d$b;->a:Lo0/d;

    iget-object v0, v0, Lo0/d;->x:Lo0/d$g;

    invoke-interface {p2, v0}, Lo0/h;->w(Lo0/g;)V

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->c:Lo0/h;

    iget-object v0, p0, Lo0/d$b;->a:Lo0/d;

    iget-object v0, v0, Lo0/d;->y:Lo0/d$h;

    invoke-interface {p2, v0}, Lo0/h;->f(Lo0/f;)V

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->c:Lo0/h;

    iget-object v0, p0, Lo0/d$b;->a:Lo0/d;

    iget-object v0, v0, Lo0/d;->z:Lo0/d$i;

    invoke-interface {p2, v0}, Lo0/h;->c(Lo0/i;)V

    iget-object p2, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p2, p2, Lo0/d;->c:Lo0/h;

    iget-object p0, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p0, p0, Lo0/d;->A:Lo0/d$j;

    invoke-interface {p2, p0}, Lo0/h;->o(Lo0/l;)V

    const-string/jumbo p0, "register connect listener ..."

    invoke-static {p1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "CarLinkDeviceManager"

    const-string/jumbo v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo0/d$b;->a:Lo0/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lo0/d;->c:Lo0/h;

    iget-object p1, p0, Lo0/d$b;->a:Lo0/d;

    iput-object v0, p1, Lo0/d;->d:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lo0/d;->a:Z

    iget-object p0, p0, Lo0/d$b;->a:Lo0/d;

    iget-object p0, p0, Lo0/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo0/d$s;

    invoke-interface {p1}, Lo0/d$s;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
