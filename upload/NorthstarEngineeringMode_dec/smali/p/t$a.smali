.class public final Lp/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/d;
.implements Lj/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj/d<",
        "TData;>;",
        "Lj/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public Z:Lj/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field public b1:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field public c1:Z

.field public final r:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public x:I

.field public y:Lcom/bumptech/glide/e;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/core/util/Pools$Pool;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp/t$a;->r:Landroidx/core/util/Pools$Pool;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lp/t$a;->c:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lp/t$a;->x:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object p0, p0, Lp/t$a;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj/d;

    invoke-interface {p0}, Lj/d;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lp/t$a;->b1:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lp/t$a;->r:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp/t$a;->b1:Ljava/util/List;

    iget-object p0, p0, Lp/t$a;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    invoke-interface {v0}, Lj/d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()Li/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lp/t$a;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj/d;

    invoke-interface {p0}, Lj/d;->c()Li/a;

    move-result-object p0

    return-object p0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp/t$a;->c1:Z

    iget-object p0, p0, Lp/t$a;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/d;

    invoke-interface {v0}, Lj/d;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lp/t$a;->Z:Lj/d$a;

    invoke-interface {p0, p1}, Lj/d$a;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp/t$a;->g()V

    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lp/t$a;->b1:Ljava/util/List;

    invoke-static {v0}, Lf0/i;->b(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lp/t$a;->g()V

    return-void
.end method

.method public final f(Lcom/bumptech/glide/e;Lj/d$a;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Lj/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lp/t$a;->y:Lcom/bumptech/glide/e;

    iput-object p2, p0, Lp/t$a;->Z:Lj/d$a;

    iget-object p2, p0, Lp/t$a;->r:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lp/t$a;->b1:Ljava/util/List;

    iget-object p2, p0, Lp/t$a;->c:Ljava/util/List;

    iget v0, p0, Lp/t$a;->x:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj/d;

    invoke-interface {p2, p1, p0}, Lj/d;->f(Lcom/bumptech/glide/e;Lj/d$a;)V

    iget-boolean p1, p0, Lp/t$a;->c1:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lp/t$a;->cancel()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    iget-boolean v0, p0, Lp/t$a;->c1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lp/t$a;->x:I

    iget-object v1, p0, Lp/t$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lp/t$a;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp/t$a;->x:I

    iget-object v0, p0, Lp/t$a;->y:Lcom/bumptech/glide/e;

    iget-object v1, p0, Lp/t$a;->Z:Lj/d$a;

    invoke-virtual {p0, v0, v1}, Lp/t$a;->f(Lcom/bumptech/glide/e;Lj/d$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lp/t$a;->b1:Ljava/util/List;

    invoke-static {v0}, Lf0/i;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lp/t$a;->Z:Lj/d$a;

    new-instance v1, Ll/s;

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lp/t$a;->b1:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "Fetch failed"

    invoke-direct {v1, p0, v2}, Ll/s;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lj/d$a;->e(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
