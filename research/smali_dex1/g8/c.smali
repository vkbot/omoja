.class public final Lg8/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/a;
.implements Lz7/a;
.implements Lx7/f;


# instance fields
.field public final synthetic b:I

.field public c:Lz7/a;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg8/d;Lx7/a;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg8/c;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lg8/c;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lx7/f;Ljava/lang/Object;I)V
    .registers 4

    .line 12
    iput p3, p0, Lg8/c;->b:I

    iput-object p1, p0, Lg8/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg8/c;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget v0, p0, Lg8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg8/c;->c:Lz7/a;

    .line 7
    .line 8
    sget-object v1, Lc8/a;->b:Lc8/a;

    .line 9
    .line 10
    if-ne v0, v1, :cond_c

    .line 11
    .line 12
    goto :goto_15

    .line 13
    :cond_c
    iput-object v1, p0, Lg8/c;->c:Lz7/a;

    .line 14
    .line 15
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lx7/f;

    .line 18
    .line 19
    invoke-interface {v0}, Lx7/f;->a()V

    .line 20
    .line 21
    .line 22
    :goto_15
    return-void

    .line 23
    :pswitch_16
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lx7/f;

    .line 26
    .line 27
    invoke-interface {v0}, Lx7/f;->a()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1e
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lx7/a;

    .line 34
    .line 35
    iget-object v1, p0, Lg8/c;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lg8/d;

    .line 38
    .line 39
    iget-object v2, p0, Lg8/c;->c:Lz7/a;

    .line 40
    .line 41
    sget-object v3, Lc8/a;->b:Lc8/a;

    .line 42
    .line 43
    if-ne v2, v3, :cond_2d

    .line 44
    .line 45
    goto :goto_3d

    .line 46
    :cond_2d
    :try_start_2d
    iget-object v1, v1, Lg8/d;->d:Lb8/a;

    .line 47
    .line 48
    invoke-interface {v1}, Lb8/a;->run()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_36

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Lx7/a;->a()V

    .line 52
    .line 53
    .line 54
    goto :goto_3d

    .line 55
    :catchall_36
    move-exception v1

    .line 56
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Lx7/a;->onError(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_3d
    return-void

    .line 63
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_16
    .end packed-switch
.end method

.method public final b(Lz7/a;)V
    .registers 4

    .line 1
    iget v0, p0, Lg8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx7/f;

    .line 9
    .line 10
    iget-object v1, p0, Lg8/c;->c:Lz7/a;

    .line 11
    .line 12
    invoke-static {v1, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_16

    .line 17
    .line 18
    iput-object p1, p0, Lg8/c;->c:Lz7/a;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lx7/f;->b(Lz7/a;)V

    .line 21
    .line 22
    .line 23
    :cond_16
    return-void

    .line 24
    :pswitch_17
    iget-object v0, p0, Lg8/c;->c:Lz7/a;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_28

    .line 31
    .line 32
    iput-object p1, p0, Lg8/c;->c:Lz7/a;

    .line 33
    .line 34
    iget-object p1, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lx7/f;

    .line 37
    .line 38
    invoke-interface {p1, p0}, Lx7/f;->b(Lz7/a;)V

    .line 39
    .line 40
    .line 41
    :cond_28
    return-void

    .line 42
    :pswitch_29
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lx7/a;

    .line 45
    .line 46
    iget-object v1, p0, Lg8/c;->c:Lz7/a;

    .line 47
    .line 48
    invoke-static {v1, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3a

    .line 53
    .line 54
    iput-object p1, p0, Lg8/c;->c:Lz7/a;

    .line 55
    .line 56
    invoke-interface {v0, p0}, Lx7/a;->b(Lz7/a;)V

    .line 57
    .line 58
    .line 59
    :cond_3a
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_17
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Lg8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_44

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg8/c;->c:Lz7/a;

    .line 7
    .line 8
    sget-object v1, Lc8/a;->b:Lc8/a;

    .line 9
    .line 10
    if-ne v0, v1, :cond_c

    .line 11
    .line 12
    goto :goto_26

    .line 13
    :cond_c
    :try_start_c
    iget-object v0, p0, Lg8/c;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Li8/r;

    .line 16
    .line 17
    iget-object v0, v0, Li8/r;->c:Lb8/b;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lb8/b;->accept(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1f

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lg8/c;->c:Lz7/a;

    .line 23
    .line 24
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lx7/f;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_26

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lg8/c;->d(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_26
    return-void

    .line 40
    :pswitch_27
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lx7/f;

    .line 43
    .line 44
    :try_start_2b
    iget-object v1, p0, Lg8/c;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lb8/c;

    .line 47
    .line 48
    invoke-interface {v1, p1}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "The mapper returned a null item"

    .line 53
    .line 54
    invoke-static {p1, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3c

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, p1}, Lx7/f;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_43

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method

.method public d(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lg8/c;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Li8/r;

    .line 4
    .line 5
    iget-object v0, v0, Li8/r;->d:Lb8/b;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lb8/b;->accept(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 8
    .line 9
    .line 10
    goto :goto_18

    .line 11
    :catchall_a
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, La8/c;

    .line 16
    .line 17
    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1}, La8/c;-><init>([Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v1

    .line 25
    :goto_18
    sget-object v0, Lc8/a;->b:Lc8/a;

    .line 26
    .line 27
    iput-object v0, p0, Lg8/c;->c:Lz7/a;

    .line 28
    .line 29
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lx7/f;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final dispose()V
    .registers 3

    .line 1
    iget v0, p0, Lg8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg8/c;->c:Lz7/a;

    .line 7
    .line 8
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lc8/a;->b:Lc8/a;

    .line 12
    .line 13
    iput-object v0, p0, Lg8/c;->c:Lz7/a;

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget-object v0, p0, Lg8/c;->c:Lz7/a;

    .line 17
    .line 18
    sget-object v1, Lc8/a;->b:Lc8/a;

    .line 19
    .line 20
    iput-object v1, p0, Lg8/c;->c:Lz7/a;

    .line 21
    .line 22
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_19
    iget-object v0, p0, Lg8/c;->c:Lz7/a;

    .line 27
    .line 28
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_f
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    iget v0, p0, Lg8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_46

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg8/c;->c:Lz7/a;

    .line 7
    .line 8
    sget-object v1, Lc8/a;->b:Lc8/a;

    .line 9
    .line 10
    if-ne v0, v1, :cond_f

    .line 11
    .line 12
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-virtual {p0, p1}, Lg8/c;->d(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_12
    return-void

    .line 20
    :pswitch_13
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lx7/f;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lx7/f;->onError(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1b
    iget-object v0, p0, Lg8/c;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lg8/d;

    .line 31
    .line 32
    iget-object v1, p0, Lg8/c;->c:Lz7/a;

    .line 33
    .line 34
    sget-object v2, Lc8/a;->b:Lc8/a;

    .line 35
    .line 36
    if-ne v1, v2, :cond_29

    .line 37
    .line 38
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_44

    .line 42
    :cond_29
    :try_start_29
    iget-object v0, v0, Lg8/d;->c:Lb8/b;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Lb8/b;->accept(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2f

    .line 45
    .line 46
    .line 47
    goto :goto_3d

    .line 48
    :catchall_2f
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, La8/c;

    .line 53
    .line 54
    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, La8/c;-><init>([Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    move-object p1, v1

    .line 62
    :goto_3d
    iget-object v0, p0, Lg8/c;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lx7/a;

    .line 65
    .line 66
    invoke-interface {v0, p1}, Lx7/a;->onError(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_44
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method
