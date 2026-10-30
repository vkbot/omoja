.class public final Li8/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/f;
.implements Lz7/a;
.implements Lx7/m;


# instance fields
.field public final synthetic b:I

.field public final c:Lx7/f;

.field public final d:Lb8/d;

.field public e:Lz7/a;


# direct methods
.method public synthetic constructor <init>(Lx7/f;Lb8/d;I)V
    .locals 0

    .line 1
    iput p3, p0, Li8/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Li8/e;->c:Lx7/f;

    .line 4
    .line 5
    iput-object p2, p0, Li8/e;->d:Lb8/d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Li8/e;->c:Lx7/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lx7/f;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lz7/a;)V
    .locals 1

    .line 1
    iget v0, p0, Li8/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/e;->e:Lz7/a;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Li8/e;->e:Lz7/a;

    .line 15
    .line 16
    iget-object p1, p0, Li8/e;->c:Lx7/f;

    .line 17
    .line 18
    invoke-interface {p1, p0}, Lx7/f;->b(Lz7/a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Li8/e;->e:Lz7/a;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iput-object p1, p0, Li8/e;->e:Lz7/a;

    .line 31
    .line 32
    iget-object p1, p0, Li8/e;->c:Lx7/f;

    .line 33
    .line 34
    invoke-interface {p1, p0}, Lx7/f;->b(Lz7/a;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Li8/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/e;->c:Lx7/f;

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Li8/e;->d:Lb8/d;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Lb8/d;->test(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v0}, Lx7/f;->a()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Li8/e;->c:Lx7/f;

    .line 33
    .line 34
    :try_start_1
    iget-object v1, p0, Li8/e;->d:Lb8/d;

    .line 35
    .line 36
    invoke-interface {v1, p1}, Lb8/d;->test(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v0}, Lx7/f;->a()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dispose()V
    .locals 2

    .line 1
    iget v0, p0, Li8/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/e;->e:Lz7/a;

    .line 7
    .line 8
    sget-object v1, Lc8/a;->b:Lc8/a;

    .line 9
    .line 10
    iput-object v1, p0, Li8/e;->e:Lz7/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Li8/e;->e:Lz7/a;

    .line 17
    .line 18
    sget-object v1, Lc8/a;->b:Lc8/a;

    .line 19
    .line 20
    iput-object v1, p0, Li8/e;->e:Lz7/a;

    .line 21
    .line 22
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget v0, p0, Li8/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li8/e;->c:Lx7/f;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Li8/e;->c:Lx7/f;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
