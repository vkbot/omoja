.class public final Ll/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/h;
.implements Lj/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/h;",
        "Lj/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public Z:Li/f;

.field public b1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp/q<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ll/h$a;

.field public c1:I

.field public volatile d1:Lp/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/q$a<",
            "*>;"
        }
    .end annotation
.end field

.field public e1:Ljava/io/File;

.field public f1:Ll/z;

.field public final r:Ll/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/i<",
            "*>;"
        }
    .end annotation
.end field

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ll/i;Ll/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/i<",
            "*>;",
            "Ll/h$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ll/y;->y:I

    iput-object p1, p0, Ll/y;->r:Ll/i;

    iput-object p2, p0, Ll/y;->c:Ll/h$a;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Ll/y;->r:Ll/i;

    invoke-virtual {v1}, Ll/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v0, Ll/y;->r:Ll/i;

    iget-object v4, v2, Ll/i;->c:Lcom/bumptech/glide/d;

    iget-object v4, v4, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iget-object v5, v2, Ll/i;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v2, Ll/i;->g:Ljava/lang/Class;

    iget-object v2, v2, Ll/i;->k:Ljava/lang/Class;

    iget-object v7, v4, Lcom/bumptech/glide/f;->h:La0/d;

    iget-object v8, v7, La0/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf0/h;

    if-nez v8, :cond_1

    new-instance v8, Lf0/h;

    invoke-direct {v8, v5, v6, v2}, Lf0/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    iput-object v5, v8, Lf0/h;->a:Ljava/lang/Class;

    iput-object v6, v8, Lf0/h;->b:Ljava/lang/Class;

    iput-object v2, v8, Lf0/h;->c:Ljava/lang/Class;

    :goto_0
    iget-object v10, v7, La0/d;->b:Landroidx/collection/ArrayMap;

    monitor-enter v10

    :try_start_0
    iget-object v11, v7, La0/d;->b:Landroidx/collection/ArrayMap;

    invoke-virtual {v11, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v7, v7, La0/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v11, :cond_5

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v4, Lcom/bumptech/glide/f;->a:Lp/s;

    monitor-enter v7

    :try_start_1
    iget-object v8, v7, Lp/s;->a:Lp/u;

    invoke-virtual {v8, v5}, Lp/u;->d(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    iget-object v10, v4, Lcom/bumptech/glide/f;->c:La0/e;

    invoke-virtual {v10, v8, v6}, La0/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    iget-object v12, v4, Lcom/bumptech/glide/f;->f:Lx/f;

    invoke-virtual {v12, v10, v2}, Lx/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v4, v4, Lcom/bumptech/glide/f;->h:La0/d;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v4, La0/d;->b:Landroidx/collection/ArrayMap;

    monitor-enter v8

    :try_start_2
    iget-object v4, v4, La0/d;->b:Landroidx/collection/ArrayMap;

    new-instance v10, Lf0/h;

    invoke-direct {v10, v5, v6, v2}, Lf0/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v4, v10, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const-class v1, Ljava/io/File;

    iget-object v2, v0, Ll/y;->r:Ll/i;

    iget-object v2, v2, Ll/i;->k:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v3

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find any load path from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Ll/y;->r:Ll/i;

    iget-object v3, v3, Ll/i;->d:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ll/y;->r:Ll/i;

    iget-object v0, v0, Ll/i;->k:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    iget-object v2, v0, Ll/y;->b1:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    iget v5, v0, Ll/y;->c1:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_a

    iput-object v9, v0, Ll/y;->d1:Lp/q$a;

    :cond_8
    :goto_4
    if-nez v3, :cond_9

    iget v1, v0, Ll/y;->c1:I

    iget-object v2, v0, Ll/y;->b1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v1, v0, Ll/y;->b1:Ljava/util/List;

    iget v2, v0, Ll/y;->c1:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Ll/y;->c1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/q;

    iget-object v2, v0, Ll/y;->e1:Ljava/io/File;

    iget-object v5, v0, Ll/y;->r:Ll/i;

    iget v6, v5, Ll/i;->e:I

    iget v7, v5, Ll/i;->f:I

    iget-object v5, v5, Ll/i;->i:Li/h;

    invoke-interface {v1, v2, v6, v7, v5}, Lp/q;->b(Ljava/lang/Object;IILi/h;)Lp/q$a;

    move-result-object v1

    iput-object v1, v0, Ll/y;->d1:Lp/q$a;

    iget-object v1, v0, Ll/y;->d1:Lp/q$a;

    if-eqz v1, :cond_8

    iget-object v1, v0, Ll/y;->r:Ll/i;

    iget-object v2, v0, Ll/y;->d1:Lp/q$a;

    iget-object v2, v2, Lp/q$a;->c:Lj/d;

    invoke-interface {v2}, Lj/d;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll/i;->c(Ljava/lang/Class;)Ll/v;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Ll/y;->d1:Lp/q$a;

    iget-object v1, v1, Lp/q$a;->c:Lj/d;

    iget-object v2, v0, Ll/y;->r:Ll/i;

    iget-object v2, v2, Ll/i;->o:Lcom/bumptech/glide/e;

    invoke-interface {v1, v2, v0}, Lj/d;->f(Lcom/bumptech/glide/e;Lj/d$a;)V

    move v3, v4

    goto :goto_4

    :cond_9
    return v3

    :cond_a
    iget v2, v0, Ll/y;->y:I

    add-int/2addr v2, v4

    iput v2, v0, Ll/y;->y:I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_c

    iget v2, v0, Ll/y;->x:I

    add-int/2addr v2, v4

    iput v2, v0, Ll/y;->x:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_b

    return v3

    :cond_b
    iput v3, v0, Ll/y;->y:I

    :cond_c
    iget v2, v0, Ll/y;->x:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/f;

    iget v4, v0, Ll/y;->y:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iget-object v5, v0, Ll/y;->r:Ll/i;

    invoke-virtual {v5, v4}, Ll/i;->e(Ljava/lang/Class;)Li/l;

    move-result-object v18

    new-instance v5, Ll/z;

    iget-object v6, v0, Ll/y;->r:Ll/i;

    iget-object v7, v6, Ll/i;->c:Lcom/bumptech/glide/d;

    iget-object v13, v7, Lcom/bumptech/glide/d;->a:Lm/b;

    iget-object v15, v6, Ll/i;->n:Li/f;

    iget v7, v6, Ll/i;->e:I

    iget v8, v6, Ll/i;->f:I

    iget-object v10, v6, Ll/i;->i:Li/h;

    move-object v12, v5

    move-object v14, v2

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Ll/z;-><init>(Lm/b;Li/f;Li/f;IILi/l;Ljava/lang/Class;Li/h;)V

    iput-object v5, v0, Ll/y;->f1:Ll/z;

    iget-object v4, v6, Ll/i;->h:Ll/j$d;

    check-cast v4, Ll/m$c;

    invoke-virtual {v4}, Ll/m$c;->a()Ln/a;

    move-result-object v4

    iget-object v5, v0, Ll/y;->f1:Ll/z;

    invoke-interface {v4, v5}, Ln/a;->a(Li/f;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v0, Ll/y;->e1:Ljava/io/File;

    if-eqz v4, :cond_7

    iput-object v2, v0, Ll/y;->Z:Li/f;

    iget-object v2, v0, Ll/y;->r:Ll/i;

    iget-object v2, v2, Ll/i;->c:Lcom/bumptech/glide/d;

    iget-object v2, v2, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/f;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Ll/y;->b1:Ljava/util/List;

    iput v3, v0, Ll/y;->c1:I

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Ll/y;->d1:Lp/q$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lp/q$a;->c:Lj/d;

    invoke-interface {p0}, Lj/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ll/y;->c:Ll/h$a;

    iget-object v1, p0, Ll/y;->Z:Li/f;

    iget-object v2, p0, Ll/y;->d1:Lp/q$a;

    iget-object v3, v2, Lp/q$a;->c:Lj/d;

    sget-object v4, Li/a;->y:Li/a;

    iget-object v5, p0, Ll/y;->f1:Ll/z;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Ll/h$a;->a(Li/f;Ljava/lang/Object;Lj/d;Li/a;Li/f;)V

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ll/y;->c:Ll/h$a;

    iget-object v1, p0, Ll/y;->f1:Ll/z;

    iget-object p0, p0, Ll/y;->d1:Lp/q$a;

    iget-object p0, p0, Lp/q$a;->c:Lj/d;

    sget-object v2, Li/a;->y:Li/a;

    invoke-interface {v0, v1, p1, p0, v2}, Ll/h$a;->c(Li/f;Ljava/lang/Exception;Lj/d;Li/a;)V

    return-void
.end method
