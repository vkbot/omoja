.class public final Landroidx/fragment/app/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/b;


# instance fields
.field public final b:Ljava/lang/Cloneable;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/k0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/k;Landroid/animation/Animator;)V
    .locals 0

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->a(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v1, v0, Landroidx/fragment/app/k0;->p:Landroidx/fragment/app/w;

    iget-object v1, v1, Landroidx/fragment/app/w;->y:Landroid/content/Context;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->c(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->d(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->e(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->f(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final g(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->g(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final h(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v1, v0, Landroidx/fragment/app/k0;->p:Landroidx/fragment/app/w;

    iget-object v1, v1, Landroidx/fragment/app/w;->y:Landroid/content/Context;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->h(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final i(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->i(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final j(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->j(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final k(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->k(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final l(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->l(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final m(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->m(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final n(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->n(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public final o(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/k0;

    iget-object v0, v0, Landroidx/fragment/app/k0;->r:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/k0;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/k0;->m:Landroidx/fragment/app/d0;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d0;->o(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    return-void
.end method
