.class public final Lc5/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lc5/f;
.implements Lc5/g;


# instance fields
.field public final a:Lc5/b;

.field public final b:Landroid/content/Context;

.field public final c:Lk5/b;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lk5/b;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    new-instance v0, Lc5/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lc5/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lc5/d;->a:Lc5/b;

    .line 11
    .line 12
    iput-object p3, p0, Lc5/d;->d:Ljava/util/Set;

    .line 13
    .line 14
    iput-object p5, p0, Lc5/d;->e:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    iput-object p4, p0, Lc5/d;->c:Lk5/b;

    .line 17
    .line 18
    iput-object p1, p0, Lc5/d;->b:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lo7/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lc5/d;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lo7/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lo7/a;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lo7/a;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lc5/c;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Lc5/c;-><init>(Lc5/d;I)V

    .line 24
    .line 25
    .line 26
    const-string v1, "Executor must not be null"

    .line 27
    .line 28
    iget-object v2, p0, Lc5/d;->e:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    invoke-static {v2, v1}, Lr2/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lo7/a;

    .line 34
    .line 35
    invoke-direct {v1}, Lo7/a;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v3, La9/i;

    .line 39
    .line 40
    invoke-direct {v3, v1, v0}, La9/i;-><init>(Lo7/a;Ljava/util/concurrent/Callable;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc5/d;->d:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lo7/a;

    .line 11
    .line 12
    invoke-direct {v0}, Lo7/a;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lo7/a;->g(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lc5/d;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lo7/a;

    .line 28
    .line 29
    invoke-direct {v0}, Lo7/a;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lo7/a;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance v0, Lc5/c;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v0, p0, v1}, Lc5/c;-><init>(Lc5/d;I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "Executor must not be null"

    .line 43
    .line 44
    iget-object v2, p0, Lc5/d;->e:Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    invoke-static {v2, v1}, Lr2/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lo7/a;

    .line 50
    .line 51
    invoke-direct {v1}, Lo7/a;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v3, La9/i;

    .line 55
    .line 56
    invoke-direct {v3, v1, v0}, La9/i;-><init>(Lo7/a;Ljava/util/concurrent/Callable;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
