.class public final Lb1/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lb1/f;


# direct methods
.method public constructor <init>(Lb1/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb1/d;->a:Lb1/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lb1/d;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lb1/d;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lb1/d;->a:Lb1/f;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lb1/f;->m:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lb1/f;->l:Z

    .line 8
    .line 9
    iput-object p2, p1, Lb1/f;->g:Landroid/os/IBinder;

    .line 10
    .line 11
    iget-object p1, p0, Lb1/d;->a:Lb1/f;

    .line 12
    .line 13
    iget-object p2, p1, Lb1/f;->b:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object p1, p1, Lb1/f;->o:Lb1/b;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lb1/d;->a:Lb1/f;

    .line 21
    .line 22
    invoke-virtual {p1}, Lb1/f;->a()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lb1/d;->a:Lb1/f;

    .line 26
    .line 27
    iget-object p2, p1, Lb1/f;->b:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v0, p1, Lb1/f;->p:Lb1/b;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p1, Lb1/f;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_34

    .line 41
    .line 42
    iget-object p2, p1, Lb1/f;->g:Landroid/os/IBinder;

    .line 43
    .line 44
    if-eqz p2, :cond_34

    .line 45
    .line 46
    iget-object p2, p1, Lb1/f;->b:Landroid/os/Handler;

    .line 47
    .line 48
    iget-object p1, p1, Lb1/f;->p:Lb1/b;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    :cond_34
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lb1/d;->a:Lb1/f;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lb1/f;->g:Landroid/os/IBinder;

    .line 5
    .line 6
    iget-object p1, p0, Lb1/d;->a:Lb1/f;

    .line 7
    .line 8
    iget-object v0, p1, Lb1/f;->b:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object p1, p1, Lb1/f;->p:Lb1/b;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lb1/d;->a:Lb1/f;

    .line 16
    .line 17
    invoke-virtual {p1}, Lb1/f;->c()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lb1/d;->a:Lb1/f;

    .line 21
    .line 22
    invoke-virtual {p1}, Lb1/f;->d()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
