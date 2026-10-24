.class public final Lw3/c;
.super Lw3/d;
.source "SourceFile"


# instance fields
.field public final Z:Z

.field private volatile _immediate:Lw3/c;

.field public final b1:Lw3/c;

.field public final x:Landroid/os/Handler;

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lw3/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw3/d;-><init>()V

    iput-object p1, p0, Lw3/c;->x:Landroid/os/Handler;

    iput-object p2, p0, Lw3/c;->y:Ljava/lang/String;

    iput-boolean p3, p0, Lw3/c;->Z:Z

    if-eqz p3, :cond_0

    move-object p3, p0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lw3/c;->_immediate:Lw3/c;

    iget-object p3, p0, Lw3/c;->_immediate:Lw3/c;

    if-nez p3, :cond_1

    .line 2
    new-instance p3, Lw3/c;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lw3/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lw3/c;->_immediate:Lw3/c;

    :cond_1
    iput-object p3, p0, Lw3/c;->b1:Lw3/c;

    return-void
.end method


# virtual methods
.method public final B()Lv3/e1;
    .locals 0

    iget-object p0, p0, Lw3/c;->b1:Lw3/c;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lw3/c;

    if-eqz v0, :cond_0

    check-cast p1, Lw3/c;

    iget-object p1, p1, Lw3/c;->x:Landroid/os/Handler;

    iget-object p0, p0, Lw3/c;->x:Landroid/os/Handler;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lw3/c;->x:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final l(Lh3/f;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lw3/c;->x:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object p0, Lv3/x0$b;->c:Lv3/x0$b;

    invoke-interface {p1, p0}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object p0

    check-cast p0, Lv3/x0;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lv3/x0;->y(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object p0, Lv3/k0;->b:Ly3/b;

    invoke-virtual {p0, p1, p2}, Ly3/b;->l(Lh3/f;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lw3/c;->Z:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lw3/c;->x:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {v0, p0}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lv3/k0;->a:Ly3/c;

    sget-object v0, Lx3/o;->a:Lv3/e1;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lv3/e1;->B()Lv3/e1;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lw3/c;->y:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lw3/c;->x:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean p0, p0, Lw3/c;->Z:Z

    if-eqz p0, :cond_3

    const-string p0, ".immediate"

    invoke-static {v0, p0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_3
    return-object v0
.end method
