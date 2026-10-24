.class public final Lb5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/b;


# static fields
.field public static final h:Ljava/lang/String; = "b5.a"

.field public static final i:Lf5/d;


# instance fields
.field public b:Le5/g;

.field public c:La5/a;

.field public d:Ljava/lang/Throwable;

.field public volatile e:Z

.field public final f:J

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    sput-object v0, Lb5/a;->i:Lf5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0}, Lb5/a;-><init>(Le5/g;La5/a;)V

    return-void
.end method

.method public constructor <init>(Le5/g;La5/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb5/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lb5/a;->g:Ljava/lang/String;

    iput-object p1, p0, Lb5/a;->b:Le5/g;

    iput-object p2, p0, Lb5/a;->c:La5/a;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lb5/a;->f:J

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lb5/a;->e:Z

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Lg5/a0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lg5/a0<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lb5/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, p2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lg5/a0;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lc5/e;

    if-eqz v4, :cond_1

    check-cast v3, Lc5/e;

    invoke-interface {v3}, Lc5/e;->B0()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_1
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lb5/a;->d:Ljava/lang/Throwable;

    if-eqz p2, :cond_3

    array-length p2, v1

    add-int/lit8 p2, p2, 0x1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v0, v1

    iget-object v2, p0, Lb5/a;->d:Ljava/lang/Throwable;

    aput-object v2, p2, v0

    :cond_3
    iget-object p2, p0, Lb5/a;->b:Le5/g;

    iget-object v0, p0, Lb5/a;->c:La5/a;

    invoke-interface {p2, v0}, Le5/g;->p(La5/a;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lb5/a;->b:Le5/g;

    invoke-interface {p2}, La5/d;->c()Lc5/f;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/a;->j(Lc5/e;)V

    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)La5/b;
    .locals 0

    iput-object p1, p0, Lb5/a;->d:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lb5/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/a;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->w(La5/a;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->u(La5/a;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    invoke-interface {v0}, La5/d;->c()Lc5/f;

    move-result-object v0

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/a;->j(Lc5/e;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lb5/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/a;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->u(La5/a;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->t(La5/a;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    invoke-interface {v0}, La5/d;->c()Lc5/f;

    move-result-object v0

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/a;->j(Lc5/e;)V

    :cond_1
    return-void
.end method

.method public final e(Lg5/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/a0<",
            "Lc5/e;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lb5/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lg5/a0;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc5/e;

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->v(La5/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lb5/a;->j(Lc5/e;)V

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lb5/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->k(La5/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    invoke-interface {v0}, La5/d;->c()Lc5/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lc5/g;->d(Ljava/lang/String;)Lc5/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/a;->j(Lc5/e;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/io/Serializable;)V
    .locals 2

    invoke-virtual {p0}, Lb5/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/a;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->j(La5/a;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->w(La5/a;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    invoke-interface {v0}, La5/d;->c()Lc5/f;

    move-result-object v0

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/a;->j(Lc5/e;)V

    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lb5/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/a;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->t(La5/a;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb5/a;->b:Le5/g;

    iget-object v1, p0, Lb5/a;->c:La5/a;

    invoke-interface {v0, v1}, Le5/g;->r(La5/a;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/a;->b:Le5/g;

    invoke-interface {v0}, La5/d;->c()Lc5/f;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/a;->j(Lc5/e;)V

    :cond_1
    return-void
.end method

.method public final i()Z
    .locals 7

    iget-boolean v0, p0, Lb5/a;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    sget-object p0, Lb5/a;->i:Lf5/d;

    invoke-static {v2}, Lg5/v;->a(I)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Attempt to reuse LogBuilder was ignored. {}"

    invoke-virtual {p0, v0, v2}, Le5/a;->d(Ljava/io/Serializable;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-wide v3, p0, Lb5/a;->f:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-eqz p0, :cond_1

    sget-object p0, Lb5/a;->i:Lf5/d;

    invoke-static {v2}, Lg5/v;->a(I)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "LogBuilder can only be used on the owning thread. {}"

    invoke-virtual {p0, v0, v2}, Le5/a;->d(Ljava/io/Serializable;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lc5/e;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lb5/a;->b:Le5/g;

    iget-object v2, p0, Lb5/a;->c:La5/a;

    iget-object v3, p0, Lb5/a;->g:Ljava/lang/String;

    iget-object v4, p0, Lb5/a;->d:Ljava/lang/Throwable;

    invoke-interface {v1, v3, v4, v2, p1}, La5/d;->b(Ljava/lang/String;Ljava/lang/Throwable;La5/a;Lc5/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lb5/a;->e:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lb5/a;->e:Z

    throw p1
.end method
