.class public final Lh8/q0;
.super Lx7/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Lb8/c;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lb8/c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh8/q0;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lh8/q0;->d:Lb8/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(Lx7/d;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lh8/q0;->d:Lb8/c;

    .line 2
    .line 3
    iget-object v1, p0, Lh8/q0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lb8/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "The mapper returned a null Publisher"

    .line 10
    .line 11
    invoke-static {v0, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Ln9/a;
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_34

    .line 15
    .line 16
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    .line 17
    .line 18
    if-eqz v1, :cond_30

    .line 19
    .line 20
    :try_start_13
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_28

    .line 26
    if-nez v0, :cond_1f

    .line 27
    .line 28
    invoke-static {p1}, Lo8/d;->a(Lx7/d;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    new-instance v1, Lo8/e;

    .line 33
    .line 34
    invoke-direct {v1, v0, p1}, Lo8/e;-><init>(Ljava/lang/Object;Lx7/d;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1}, Lx7/d;->f(Ln9/b;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p1}, Lo8/d;->b(Ljava/lang/Throwable;Lx7/d;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    invoke-interface {v0, p1}, Ln9/a;->a(Lx7/d;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_34
    move-exception v0

    .line 54
    invoke-static {v0, p1}, Lo8/d;->b(Ljava/lang/Throwable;Lx7/d;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
