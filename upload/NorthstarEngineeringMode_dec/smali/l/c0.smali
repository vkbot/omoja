.class public final Ll/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/h;
.implements Ll/h$a;


# instance fields
.field public Z:Ljava/lang/Object;

.field public volatile b1:Lp/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/q$a<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ll/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/i<",
            "*>;"
        }
    .end annotation
.end field

.field public c1:Ll/f;

.field public final r:Ll/h$a;

.field public x:I

.field public y:Ll/e;


# direct methods
.method public constructor <init>(Ll/i;Ll/h$a;)V
    .locals 0
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

    iput-object p1, p0, Ll/c0;->c:Ll/i;

    iput-object p2, p0, Ll/c0;->r:Ll/h$a;

    return-void
.end method


# virtual methods
.method public final a(Li/f;Ljava/lang/Object;Lj/d;Li/a;Li/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/f;",
            "Ljava/lang/Object;",
            "Lj/d<",
            "*>;",
            "Li/a;",
            "Li/f;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ll/c0;->r:Ll/h$a;

    iget-object p0, p0, Ll/c0;->b1:Lp/q$a;

    iget-object p0, p0, Lp/q$a;->c:Lj/d;

    invoke-interface {p0}, Lj/d;->c()Li/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Ll/h$a;->a(Li/f;Ljava/lang/Object;Lj/d;Li/a;Li/f;)V

    return-void
.end method

.method public final b()Z
    .locals 12

    iget-object v0, p0, Ll/c0;->Z:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Ll/c0;->Z:Ljava/lang/Object;

    const-string v2, "SourceGenerator"

    const-string v3, "Finished encoding source to cache, key: "

    sget v4, Lf0/e;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Ll/c0;->c:Ll/i;

    invoke-virtual {v6, v0}, Ll/i;->d(Ljava/lang/Object;)Li/d;

    move-result-object v6

    new-instance v7, Ll/g;

    iget-object v8, p0, Ll/c0;->c:Ll/i;

    iget-object v8, v8, Ll/i;->i:Li/h;

    invoke-direct {v7, v6, v0, v8}, Ll/g;-><init>(Li/d;Ljava/lang/Object;Li/h;)V

    new-instance v8, Ll/f;

    iget-object v9, p0, Ll/c0;->b1:Lp/q$a;

    iget-object v9, v9, Lp/q$a;->a:Li/f;

    iget-object v10, p0, Ll/c0;->c:Ll/i;

    iget-object v11, v10, Ll/i;->n:Li/f;

    invoke-direct {v8, v9, v11}, Ll/f;-><init>(Li/f;Li/f;)V

    iput-object v8, p0, Ll/c0;->c1:Ll/f;

    iget-object v8, v10, Ll/i;->h:Ll/j$d;

    check-cast v8, Ll/m$c;

    invoke-virtual {v8}, Ll/m$c;->a()Ln/a;

    move-result-object v8

    iget-object v9, p0, Ll/c0;->c1:Ll/f;

    invoke-interface {v8, v9, v7}, Ln/a;->b(Li/f;Ll/g;)V

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ll/c0;->c1:Ll/f;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lf0/e;->a(J)D

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ll/c0;->b1:Lp/q$a;

    iget-object v0, v0, Lp/q$a;->c:Lj/d;

    invoke-interface {v0}, Lj/d;->b()V

    new-instance v0, Ll/e;

    iget-object v2, p0, Ll/c0;->b1:Lp/q$a;

    iget-object v2, v2, Lp/q$a;->a:Li/f;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ll/c0;->c:Ll/i;

    invoke-direct {v0, v2, v3, p0}, Ll/e;-><init>(Ljava/util/List;Ll/i;Ll/h$a;)V

    iput-object v0, p0, Ll/c0;->y:Ll/e;

    goto :goto_2

    :goto_1
    iget-object p0, p0, Ll/c0;->b1:Lp/q$a;

    iget-object p0, p0, Lp/q$a;->c:Lj/d;

    invoke-interface {p0}, Lj/d;->b()V

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Ll/c0;->y:Ll/e;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ll/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iput-object v1, p0, Ll/c0;->y:Ll/e;

    iput-object v1, p0, Ll/c0;->b1:Lp/q$a;

    const/4 v0, 0x0

    :cond_3
    :goto_3
    if-nez v0, :cond_5

    iget v1, p0, Ll/c0;->x:I

    iget-object v3, p0, Ll/c0;->c:Ll/i;

    invoke-virtual {v3}, Ll/i;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Ll/c0;->c:Ll/i;

    invoke-virtual {v1}, Ll/i;->b()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Ll/c0;->x:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ll/c0;->x:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/q$a;

    iput-object v1, p0, Ll/c0;->b1:Lp/q$a;

    iget-object v1, p0, Ll/c0;->b1:Lp/q$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ll/c0;->c:Ll/i;

    iget-object v1, v1, Ll/i;->p:Ll/l;

    iget-object v3, p0, Ll/c0;->b1:Lp/q$a;

    iget-object v3, v3, Lp/q$a;->c:Lj/d;

    invoke-interface {v3}, Lj/d;->c()Li/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll/l;->c(Li/a;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Ll/c0;->c:Ll/i;

    iget-object v3, p0, Ll/c0;->b1:Lp/q$a;

    iget-object v3, v3, Lp/q$a;->c:Lj/d;

    invoke-interface {v3}, Lj/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll/i;->c(Ljava/lang/Class;)Ll/v;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_4
    iget-object v0, p0, Ll/c0;->b1:Lp/q$a;

    iget-object v1, p0, Ll/c0;->b1:Lp/q$a;

    iget-object v1, v1, Lp/q$a;->c:Lj/d;

    iget-object v3, p0, Ll/c0;->c:Ll/i;

    iget-object v3, v3, Ll/i;->o:Lcom/bumptech/glide/e;

    new-instance v4, Ll/b0;

    invoke-direct {v4, p0, v0}, Ll/b0;-><init>(Ll/c0;Lp/q$a;)V

    invoke-interface {v1, v3, v4}, Lj/d;->f(Lcom/bumptech/glide/e;Lj/d$a;)V

    move v0, v2

    goto :goto_3

    :cond_5
    return v0
.end method

.method public final c(Li/f;Ljava/lang/Exception;Lj/d;Li/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/f;",
            "Ljava/lang/Exception;",
            "Lj/d<",
            "*>;",
            "Li/a;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Ll/c0;->r:Ll/h$a;

    iget-object p0, p0, Ll/c0;->b1:Lp/q$a;

    iget-object p0, p0, Lp/q$a;->c:Lj/d;

    invoke-interface {p0}, Lj/d;->c()Li/a;

    move-result-object p0

    invoke-interface {p4, p1, p2, p3, p0}, Ll/h$a;->c(Li/f;Ljava/lang/Exception;Lj/d;Li/a;)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Ll/c0;->b1:Lp/q$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lp/q$a;->c:Lj/d;

    invoke-interface {p0}, Lj/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
