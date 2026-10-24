.class public abstract Landroidx/lifecycle/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lh/g;

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z

.field public final j:Landroidx/activity/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/t;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/t;->a:Ljava/lang/Object;

    new-instance v0, Lh/g;

    invoke-direct {v0}, Lh/g;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/t;->b:Lh/g;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/t;->c:I

    sget-object v0, Landroidx/lifecycle/t;->k:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/t;->f:Ljava/lang/Object;

    new-instance v1, Landroidx/activity/b;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, Landroidx/activity/b;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/t;->j:Landroidx/activity/b;

    iput-object v0, p0, Landroidx/lifecycle/t;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/t;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lg/b;->a()Lg/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, La/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/s;)V
    .locals 2

    iget-boolean v0, p1, Landroidx/lifecycle/s;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/s;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/s;->c(Z)V

    return-void

    :cond_1
    iget v0, p1, Landroidx/lifecycle/s;->c:I

    iget v1, p0, Landroidx/lifecycle/t;->g:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iput v1, p1, Landroidx/lifecycle/s;->c:I

    iget-object p1, p1, Landroidx/lifecycle/s;->a:Landroidx/lifecycle/x;

    iget-object p0, p0, Landroidx/lifecycle/t;->e:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroidx/lifecycle/x;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Landroidx/lifecycle/s;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/lifecycle/t;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/t;->i:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/t;->h:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/t;->i:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/s;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/t;->b:Lh/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lh/d;

    invoke-direct {v2, v1}, Lh/d;-><init>(Lh/g;)V

    iget-object v1, v1, Lh/g;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lh/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lh/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/s;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/s;)V

    iget-boolean v1, p0, Landroidx/lifecycle/t;->i:Z

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/t;->i:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroidx/lifecycle/t;->h:Z

    return-void
.end method

.method public final d(Landroidx/lifecycle/x;)V
    .locals 1

    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/t;->a(Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/r;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/x;)V

    iget-object p0, p0, Landroidx/lifecycle/t;->b:Lh/g;

    invoke-virtual {p0, p1, v0}, Lh/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/s;

    instance-of p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/lifecycle/s;->c(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/t;->f:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/t;->k:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/t;->f:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lg/b;->a()Lg/b;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/t;->j:Landroidx/activity/b;

    invoke-virtual {p1, p0}, Lg/b;->c(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/t;->a(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/t;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/t;->g:I

    iput-object p1, p0, Landroidx/lifecycle/t;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/t;->c(Landroidx/lifecycle/s;)V

    return-void
.end method
