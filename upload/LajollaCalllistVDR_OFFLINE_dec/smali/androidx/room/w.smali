.class public final Landroidx/room/w;
.super Landroidx/lifecycle/t;
.source "SourceFile"


# instance fields
.field public final l:Landroidx/room/q;

.field public final m:Z

.field public final n:Ljava/util/concurrent/Callable;

.field public final o:Landroidx/appcompat/widget/d0;

.field public final p:Landroidx/room/k;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final t:Landroidx/room/v;

.field public final u:Landroidx/room/v;


# direct methods
.method public constructor <init>(Landroidx/room/q;Landroidx/appcompat/widget/d0;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroidx/lifecycle/t;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/w;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/w;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/w;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/room/v;

    invoke-direct {v0, v2, p0}, Landroidx/room/v;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/room/w;->t:Landroidx/room/v;

    new-instance v0, Landroidx/room/v;

    invoke-direct {v0, v1, p0}, Landroidx/room/v;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/room/w;->u:Landroidx/room/v;

    iput-object p1, p0, Landroidx/room/w;->l:Landroidx/room/q;

    iput-boolean p3, p0, Landroidx/room/w;->m:Z

    iput-object p4, p0, Landroidx/room/w;->n:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Landroidx/room/w;->o:Landroidx/appcompat/widget/d0;

    new-instance p1, Landroidx/room/k;

    invoke-direct {p1, p0, p5, v1}, Landroidx/room/k;-><init>(Ljava/lang/Object;[Ljava/lang/String;I)V

    iput-object p1, p0, Landroidx/room/w;->p:Landroidx/room/k;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    iget-object v0, p0, Landroidx/room/w;->o:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroidx/room/w;->m:Z

    iget-object v1, p0, Landroidx/room/w;->l:Landroidx/room/q;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/room/q;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/room/q;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Landroidx/room/w;->t:Landroidx/room/v;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/room/w;->o:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
