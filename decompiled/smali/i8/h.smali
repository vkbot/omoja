.class public final Li8/h;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/f;
.implements Lx7/a;
.implements Lz7/a;
.implements Lx7/m;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Li8/h;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Li8/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Li8/h;->d:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget v0, p0, Li8/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lz7/a;

    .line 11
    .line 12
    sget-object v1, Lc8/a;->b:Lc8/a;

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Li8/h;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lx7/e;

    .line 26
    .line 27
    new-instance v1, Landroid/support/v4/media/h;

    .line 28
    .line 29
    iget-object v2, p0, Li8/h;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lx7/f;

    .line 32
    .line 33
    const/16 v3, 0x11

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v1, v2, p0, v4, v3}, Landroid/support/v4/media/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lx7/e;->c(Lx7/f;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Li8/h;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lx7/a;

    .line 46
    .line 47
    invoke-interface {v0}, Lx7/a;->a()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lz7/a;)V
    .locals 1

    .line 1
    iget v0, p0, Li8/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lc8/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Li8/h;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lx7/m;

    .line 15
    .line 16
    invoke-interface {p1, p0}, Lx7/m;->b(Lz7/a;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    invoke-static {p0, p1}, Lc8/a;->d(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Li8/h;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lx7/f;

    .line 29
    .line 30
    invoke-interface {p1, p0}, Lx7/f;->b(Lz7/a;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :pswitch_1
    invoke-static {p0, p1}, Lc8/a;->c(Ljava/util/concurrent/atomic/AtomicReference;Lz7/a;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Li8/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx7/m;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lx7/m;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Li8/h;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lx7/f;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Li8/h;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lf5/f;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lf5/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lb1/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lz7/a;

    .line 37
    .line 38
    invoke-static {v0}, Lc8/a;->b(Lz7/a;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lb1/u;->A(Lx7/a;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Li8/h;->onError(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    :goto_0
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget v0, p0, Li8/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-static {p0}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    invoke-static {p0}, Lc8/a;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget v0, p0, Li8/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx7/m;

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Li8/h;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ld8/a;

    .line 13
    .line 14
    iget-object v1, v1, Ld8/a;->c:Ljava/lang/Object;

    .line 15
    .line 16
    const-string v2, "The nextFunction returned a null SingleSource."

    .line 17
    .line 18
    invoke-static {v1, v2}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast v1, Lx7/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    new-instance p1, Landroid/support/v4/media/h;

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {p1, p0, v0, v3, v2}, Landroid/support/v4/media/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lx7/l;->a(Lx7/m;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, La8/c;

    .line 40
    .line 41
    filled-new-array {p1, v1}, [Ljava/lang/Throwable;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v2, p1}, La8/c;-><init>([Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v2}, Lx7/m;->onError(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Li8/h;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lx7/f;

    .line 55
    .line 56
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_1
    iget-object v0, p0, Li8/h;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lx7/a;

    .line 63
    .line 64
    invoke-interface {v0, p1}, Lx7/a;->onError(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
