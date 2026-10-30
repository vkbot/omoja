.class public final Lj8/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx7/h;
.implements Lz7/a;


# instance fields
.field public final synthetic b:I

.field public final c:La9/w;

.field public d:Lz7/a;

.field public e:Z

.field public final f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;La9/w;I)V
    .locals 0

    .line 1
    iput p3, p0, Lj8/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lj8/b;->c:La9/w;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lj8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lj8/b;->e:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lj8/b;->e:Z

    .line 12
    .line 13
    iget-object v0, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lx7/m;

    .line 16
    .line 17
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lx7/m;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lx7/h;

    .line 26
    .line 27
    iget-boolean v1, p0, Lj8/b;->e:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lj8/b;->e:Z

    .line 33
    .line 34
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Lx7/h;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lx7/h;->a()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lz7/a;)V
    .locals 1

    .line 1
    iget v0, p0, Lj8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/b;->d:Lz7/a;

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
    iput-object p1, p0, Lj8/b;->d:Lz7/a;

    .line 15
    .line 16
    iget-object p1, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lx7/m;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Lx7/m;->b(Lz7/a;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lj8/b;->d:Lz7/a;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lc8/a;->e(Lz7/a;Lz7/a;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iput-object p1, p0, Lj8/b;->d:Lz7/a;

    .line 33
    .line 34
    iget-object p1, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lx7/h;

    .line 37
    .line 38
    invoke-interface {p1, p0}, Lx7/h;->b(Lz7/a;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget v0, p0, Lj8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/b;->d:Lz7/a;

    .line 7
    .line 8
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lj8/b;->d:Lz7/a;

    .line 13
    .line 14
    invoke-interface {v0}, Lz7/a;->dispose()V

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

.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lj8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lj8/b;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lj8/b;->c:La9/w;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, La9/w;->test(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lj8/b;->e:Z

    .line 21
    .line 22
    iget-object p1, p0, Lj8/b;->d:Lz7/a;

    .line 23
    .line 24
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lx7/m;

    .line 30
    .line 31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lx7/m;->c(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lj8/b;->d:Lz7/a;

    .line 42
    .line 43
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lj8/b;->onError(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lx7/h;

    .line 53
    .line 54
    iget-boolean v1, p0, Lj8/b;->e:Z

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :try_start_1
    iget-object v1, p0, Lj8/b;->c:La9/w;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, La9/w;->test(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lj8/b;->e:Z

    .line 69
    .line 70
    iget-object p1, p0, Lj8/b;->d:Lz7/a;

    .line 71
    .line 72
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 73
    .line 74
    .line 75
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-interface {v0, p1}, Lx7/h;->e(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Lx7/h;->a()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lj8/b;->d:Lz7/a;

    .line 89
    .line 90
    invoke-interface {v0}, Lz7/a;->dispose()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lj8/b;->onError(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget v0, p0, Lj8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lj8/b;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lj8/b;->e:Z

    .line 16
    .line 17
    iget-object v0, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lx7/m;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lx7/m;->onError(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-boolean v0, p0, Lj8/b;->e:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, La/a;->s(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lj8/b;->e:Z

    .line 35
    .line 36
    iget-object v0, p0, Lj8/b;->f:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lx7/h;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lx7/h;->onError(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
