.class public final Lo0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/d$k;,
        Lo0/d$s;,
        Lo0/d$t;,
        Lo0/d$u;,
        Lo0/d$o;,
        Lo0/d$p;,
        Lo0/d$q;,
        Lo0/d$r;,
        Lo0/d$n;,
        Lo0/d$m;,
        Lo0/d$l;
    }
.end annotation


# static fields
.field public static volatile D:Lo0/d;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lo0/d$j;

.field public final B:Landroid/os/Handler$Callback;

.field public final C:Landroid/os/Handler$Callback;

.field public volatile a:Z

.field public b:Landroid/content/Context;

.field public volatile c:Lo0/h;

.field public d:Ljava/util/concurrent/CountDownLatch;

.field public final e:Lo0/d$k;

.field public f:Landroid/os/Handler;

.field public g:Landroid/os/Handler;

.field public h:Landroid/os/HandlerThread;

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final q:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final r:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final s:Lo0/d$b;

.field public final t:Lo0/d$c;

.field public final u:Lo0/d$d;

.field public final v:Lo0/d$e;

.field public final w:Lo0/d$f;

.field public final x:Lo0/d$g;

.field public final y:Lo0/d$h;

.field public final z:Lo0/d$i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo0/d;->a:Z

    .line 2
    new-instance v1, Lo0/d$k;

    invoke-direct {v1, p0}, Lo0/d$k;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->e:Lo0/d$k;

    .line 3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    new-instance v1, Lo0/d$b;

    invoke-direct {v1, p0}, Lo0/d$b;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->s:Lo0/d$b;

    .line 16
    new-instance v1, Lo0/d$c;

    invoke-direct {v1, p0}, Lo0/d$c;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->t:Lo0/d$c;

    .line 17
    new-instance v1, Lo0/d$d;

    invoke-direct {v1, p0}, Lo0/d$d;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->u:Lo0/d$d;

    .line 18
    new-instance v1, Lo0/d$e;

    invoke-direct {v1, p0}, Lo0/d$e;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->v:Lo0/d$e;

    .line 19
    new-instance v1, Lo0/d$f;

    invoke-direct {v1, p0}, Lo0/d$f;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->w:Lo0/d$f;

    .line 20
    new-instance v1, Lo0/d$g;

    invoke-direct {v1, p0}, Lo0/d$g;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->x:Lo0/d$g;

    .line 21
    new-instance v1, Lo0/d$h;

    invoke-direct {v1, p0}, Lo0/d$h;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->y:Lo0/d$h;

    .line 22
    new-instance v1, Lo0/d$i;

    invoke-direct {v1, p0}, Lo0/d$i;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->z:Lo0/d$i;

    .line 23
    new-instance v1, Lo0/d$j;

    invoke-direct {v1, p0}, Lo0/d$j;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->A:Lo0/d$j;

    .line 24
    new-instance v1, Lo0/d$a;

    invoke-direct {v1, p0}, Lo0/d$a;-><init>(Lo0/d;)V

    .line 25
    new-instance v1, Lo0/a;

    invoke-direct {v1, p0, v0}, Lo0/a;-><init>(Lo0/d;I)V

    iput-object v1, p0, Lo0/d;->B:Landroid/os/Handler$Callback;

    .line 26
    new-instance v1, Lo0/b;

    invoke-direct {v1, v0, p0}, Lo0/b;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lo0/d;->C:Landroid/os/Handler$Callback;

    .line 27
    invoke-virtual {p0}, Lo0/d;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo0/d;->a:Z

    .line 29
    new-instance v1, Lo0/d$k;

    invoke-direct {v1, p0}, Lo0/d$k;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->e:Lo0/d$k;

    .line 30
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 31
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 38
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo0/d;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    new-instance v1, Lo0/d$b;

    invoke-direct {v1, p0}, Lo0/d$b;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->s:Lo0/d$b;

    .line 43
    new-instance v1, Lo0/d$c;

    invoke-direct {v1, p0}, Lo0/d$c;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->t:Lo0/d$c;

    .line 44
    new-instance v1, Lo0/d$d;

    invoke-direct {v1, p0}, Lo0/d$d;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->u:Lo0/d$d;

    .line 45
    new-instance v1, Lo0/d$e;

    invoke-direct {v1, p0}, Lo0/d$e;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->v:Lo0/d$e;

    .line 46
    new-instance v1, Lo0/d$f;

    invoke-direct {v1, p0}, Lo0/d$f;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->w:Lo0/d$f;

    .line 47
    new-instance v1, Lo0/d$g;

    invoke-direct {v1, p0}, Lo0/d$g;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->x:Lo0/d$g;

    .line 48
    new-instance v1, Lo0/d$h;

    invoke-direct {v1, p0}, Lo0/d$h;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->y:Lo0/d$h;

    .line 49
    new-instance v1, Lo0/d$i;

    invoke-direct {v1, p0}, Lo0/d$i;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->z:Lo0/d$i;

    .line 50
    new-instance v1, Lo0/d$j;

    invoke-direct {v1, p0}, Lo0/d$j;-><init>(Lo0/d;)V

    iput-object v1, p0, Lo0/d;->A:Lo0/d$j;

    .line 51
    new-instance v1, Lo0/d$a;

    invoke-direct {v1, p0}, Lo0/d$a;-><init>(Lo0/d;)V

    .line 52
    new-instance v1, Lo0/c;

    invoke-direct {v1, v0, p0}, Lo0/c;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lo0/d;->B:Landroid/os/Handler$Callback;

    .line 53
    new-instance v0, Lo0/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo0/a;-><init>(Lo0/d;I)V

    iput-object v0, p0, Lo0/d;->C:Landroid/os/Handler$Callback;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo0/d;->b:Landroid/content/Context;

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " context :  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo0/d;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarLinkDeviceManager"

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lo0/d;->h()V

    return-void
.end method

.method public static a(Lo0/d;Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x601

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lo0/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lo0/d;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/d$t;

    invoke-interface {v1, p1}, Lo0/d$t;->c(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public static b(Lo0/d;Landroid/os/Message;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x603

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lp0/d;

    const-string v1, "notifyMediaChanged : "

    iget-object v2, p0, Lo0/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_0
    const-string v3, "CarLinkDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/d$u;

    invoke-interface {v1}, Lo0/d$u;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x606

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "notifyMediaStateChanged : "

    iget-object v2, p0, Lo0/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_1
    const-string v3, "CarLinkDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/d;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/d$u;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    monitor-exit v2

    goto :goto_5

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x604

    if-ne v0, v1, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "CarLinkDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyPinCodeChanged: platform=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",pinCode=="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/d;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lo0/d;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/d$o;

    invoke-interface {v2}, Lo0/d$o;->a()V

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_4
    monitor-exit v0

    goto :goto_8

    :goto_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_5
    :goto_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x605

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_productName"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_progress"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "CarLinkDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notifyProgressChanged: platform==2, deviceID=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", progress=="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", deviceName=="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", productName=="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo0/d;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, Lo0/d;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/d$p;

    invoke-interface {v0}, Lo0/d$p;->a()V

    goto :goto_9

    :catchall_3
    move-exception p0

    goto :goto_a

    :cond_6
    monitor-exit p1

    goto :goto_b

    :goto_a
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :cond_7
    :goto_b
    return-void
.end method

.method public static e()Lo0/d;
    .locals 2

    sget-object v0, Lo0/d;->D:Lo0/d;

    if-nez v0, :cond_1

    const-class v0, Lo0/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo0/d;->D:Lo0/d;

    if-nez v1, :cond_0

    new-instance v1, Lo0/d;

    invoke-direct {v1}, Lo0/d;-><init>()V

    sput-object v1, Lo0/d;->D:Lo0/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lo0/d;->D:Lo0/d;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lo0/d;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lo0/d;->D:Lo0/d;

    if-nez v0, :cond_1

    const-class v0, Lo0/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo0/d;->D:Lo0/d;

    if-nez v1, :cond_0

    new-instance v1, Lo0/d;

    invoke-direct {v1, p0}, Lo0/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo0/d;->D:Lo0/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lo0/d;->D:Lo0/d;

    return-object p0
.end method


# virtual methods
.method public final c()Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "mega.intent.action.carlink"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.mega.carlink"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo0/d;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "CarLinkDeviceManager"

    if-nez v1, :cond_0

    const-string p0, "bindCarlinkService() mContext is null"

    invoke-static {v3, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-boolean v1, p0, Lo0/d;->a:Z

    if-eqz v1, :cond_1

    const-string p0, "bindCarlinkService() service is binding"

    invoke-static {v3, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v1, p0, Lo0/d;->c:Lo0/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo0/d;->c:Lo0/h;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "bindCarlinkService() service already bind"

    invoke-static {v3, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lo0/d;->a:Z

    iget-object v4, p0, Lo0/d;->b:Landroid/content/Context;

    iget-object v5, p0, Lo0/d;->s:Lo0/d$b;

    invoke-virtual {v4, v0, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "bindCarlinkService() isBind: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lo0/d;->a:Z

    :cond_3
    return v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final g()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    if-eqz v0, :cond_0

    const-string p0, "CarLinkDeviceManager"

    const-string/jumbo v0, "service has inited"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo0/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lo0/d;->c()Z

    return-void
.end method

.method public final h()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lo0/d;->B:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo0/d;->f:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lo0/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo0/d;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lo0/d;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lo0/d;->C:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo0/d;->g:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public final i()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isBindSuccess: mService=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo0/d;->c:Lo0/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLinkDeviceManager"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo0/d;->c:Lo0/h;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isBindSuccess: mService is not available, isBinding=="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lo0/d;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
