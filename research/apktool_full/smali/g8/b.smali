.class public final Lg8/b;
.super Lb1/u;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf5/x;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg8/b;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lg8/b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lg8/d;Le0/g;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lg8/b;->b:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lg8/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final B(Lx7/a;)V
    .locals 4

    .line 1
    iget v0, p0, Lg8/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lc8/d;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Lc8/d;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lx7/a;->b(Lz7/a;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lg8/b;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lg8/d;

    .line 18
    .line 19
    new-instance v2, Landroid/support/v4/media/h;

    .line 20
    .line 21
    const/16 v3, 0xc

    .line 22
    .line 23
    invoke-direct {v2, p0, p1, v0, v3}, Landroid/support/v4/media/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lb1/u;->A(Lx7/a;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    new-instance v0, Lc8/d;

    .line 31
    .line 32
    sget-object v1, Ld8/b;->b:Lb4/e;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lc8/d;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lx7/a;->b(Lz7/a;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object v1, p0, Lg8/b;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lf5/x;

    .line 43
    .line 44
    invoke-virtual {v1}, Lf5/x;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lc8/d;->c()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    invoke-interface {p1}, Lx7/a;->a()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    invoke-static {v1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lc8/d;->c()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    invoke-interface {p1, v1}, Lx7/a;->onError(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
