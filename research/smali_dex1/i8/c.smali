.class public final Li8/c;
.super Lx7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lf5/f;


# direct methods
.method public constructor <init>(Lf5/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/c;->b:Lf5/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Lx7/f;)V
    .registers 7

    .line 1
    new-instance v0, Li8/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Li8/b;-><init>(Lx7/f;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lx7/f;->b(Lz7/a;)V

    .line 7
    .line 8
    .line 9
    :try_start_8
    iget-object p1, p0, Li8/c;->b:Lf5/f;

    .line 10
    .line 11
    iget-object v1, p1, Lf5/f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lo7/a;

    .line 14
    .line 15
    iget-object p1, p1, Lf5/f;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance v2, Lf5/r;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lf5/r;-><init>(Li8/b;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v3, v1, Lo7/a;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lcom/bumptech/glide/manager/t;

    .line 30
    .line 31
    new-instance v4, Lz2/e;

    .line 32
    .line 33
    invoke-direct {v4, p1, v2}, Lz2/e;-><init>(Ljava/util/concurrent/Executor;Lz2/b;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/manager/t;->m(Lz2/f;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lo7/a;->i()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lf5/r;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lf5/r;-><init>(Li8/b;)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Lz2/e;

    .line 48
    .line 49
    invoke-direct {v4, p1, v2}, Lz2/e;-><init>(Ljava/util/concurrent/Executor;Lz2/a;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/manager/t;->m(Lz2/f;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lo7/a;->i()V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3a

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Li8/b;->onError(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
