.class public final Lcom/bumptech/glide/load/resource/gif/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/a$a;,
        Lcom/bumptech/glide/load/resource/gif/a$c;,
        Lcom/bumptech/glide/load/resource/gif/a$b;
    }
.end annotation


# instance fields
.field public final a:Lh/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/bumptech/glide/h;

.field public final e:Lm/d;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/bumptech/glide/load/resource/gif/a$a;

.field public j:Z

.field public k:Lcom/bumptech/glide/load/resource/gif/a$a;

.field public l:Landroid/graphics/Bitmap;

.field public m:Li/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/bumptech/glide/load/resource/gif/a$a;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;Lh/e;IILr/a;Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p1, Lcom/bumptech/glide/b;->a:Lm/d;

    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/d;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v3

    iget-object v3, v3, Lcom/bumptech/glide/b;->f:Ly/j;

    invoke-virtual {v3, v1}, Ly/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v2

    iget-object v2, v2, Lcom/bumptech/glide/b;->f:Ly/j;

    invoke-virtual {v2, p1}, Ly/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/bumptech/glide/g;

    iget-object v3, p1, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/b;

    iget-object v4, p1, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v4}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/h;Landroid/content/Context;)V

    sget-object p1, Lcom/bumptech/glide/h;->l:Lb0/f;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/g;->n(Lb0/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    sget-object v2, Ll/l;->a:Ll/l$b;

    new-instance v3, Lb0/f;

    invoke-direct {v3}, Lb0/f;-><init>()V

    invoke-virtual {v3, v2}, Lb0/a;->d(Ll/l;)Lb0/a;

    move-result-object v2

    check-cast v2, Lb0/f;

    invoke-virtual {v2}, Lb0/a;->m()Lb0/a;

    move-result-object v2

    check-cast v2, Lb0/f;

    invoke-virtual {v2}, Lb0/a;->j()Lb0/a;

    move-result-object v2

    check-cast v2, Lb0/f;

    invoke-virtual {v2, p3, p4}, Lb0/a;->f(II)Lb0/a;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/g;->n(Lb0/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/a;->c:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/gif/a;->d:Lcom/bumptech/glide/h;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lcom/bumptech/glide/load/resource/gif/a$c;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/resource/gif/a$c;-><init>(Lcom/bumptech/glide/load/resource/gif/a;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->e:Lm/d;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/a;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->h:Lcom/bumptech/glide/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/a;->a:Lh/a;

    invoke-virtual {p0, p5, p6}, Lcom/bumptech/glide/load/resource/gif/a;->c(Li/l;Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/bumptech/glide/load/resource/gif/a;->f:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/bumptech/glide/load/resource/gif/a;->g:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/load/resource/gif/a;->n:Lcom/bumptech/glide/load/resource/gif/a$a;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/bumptech/glide/load/resource/gif/a;->n:Lcom/bumptech/glide/load/resource/gif/a$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/gif/a;->b(Lcom/bumptech/glide/load/resource/gif/a$a;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/load/resource/gif/a;->g:Z

    iget-object v2, v0, Lcom/bumptech/glide/load/resource/gif/a;->a:Lh/a;

    invoke-interface {v2}, Lh/a;->f()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iget-object v2, v0, Lcom/bumptech/glide/load/resource/gif/a;->a:Lh/a;

    invoke-interface {v2}, Lh/a;->d()V

    new-instance v2, Lcom/bumptech/glide/load/resource/gif/a$a;

    iget-object v5, v0, Lcom/bumptech/glide/load/resource/gif/a;->b:Landroid/os/Handler;

    iget-object v6, v0, Lcom/bumptech/glide/load/resource/gif/a;->a:Lh/a;

    invoke-interface {v6}, Lh/a;->a()I

    move-result v6

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/bumptech/glide/load/resource/gif/a$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v2, v0, Lcom/bumptech/glide/load/resource/gif/a;->k:Lcom/bumptech/glide/load/resource/gif/a$a;

    iget-object v2, v0, Lcom/bumptech/glide/load/resource/gif/a;->h:Lcom/bumptech/glide/g;

    new-instance v3, Le0/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Le0/b;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lb0/f;

    invoke-direct {v4}, Lb0/f;-><init>()V

    invoke-virtual {v4, v3}, Lb0/a;->i(Le0/b;)Lb0/a;

    move-result-object v3

    check-cast v3, Lb0/f;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/g;->n(Lb0/a;)Lcom/bumptech/glide/g;

    move-result-object v2

    iget-object v3, v0, Lcom/bumptech/glide/load/resource/gif/a;->a:Lh/a;

    iput-object v3, v2, Lcom/bumptech/glide/g;->B1:Ljava/lang/Object;

    iput-boolean v1, v2, Lcom/bumptech/glide/g;->D1:Z

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/a;->k:Lcom/bumptech/glide/load/resource/gif/a$a;

    sget-object v18, Lf0/d;->a:Lf0/d$a;

    invoke-static {v0}, Lf0/i;->b(Ljava/lang/Object;)V

    iget-boolean v1, v2, Lcom/bumptech/glide/g;->D1:Z

    if-eqz v1, :cond_7

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iget-object v1, v2, Lcom/bumptech/glide/g;->A1:Lcom/bumptech/glide/i;

    iget-object v13, v2, Lb0/a;->y:Lcom/bumptech/glide/e;

    iget v11, v2, Lb0/a;->g1:I

    iget v12, v2, Lb0/a;->f1:I

    iget-object v5, v2, Lcom/bumptech/glide/g;->w1:Landroid/content/Context;

    iget-object v8, v2, Lcom/bumptech/glide/g;->B1:Ljava/lang/Object;

    iget-object v9, v2, Lcom/bumptech/glide/g;->y1:Ljava/lang/Class;

    iget-object v15, v2, Lcom/bumptech/glide/g;->C1:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/bumptech/glide/g;->z1:Lcom/bumptech/glide/d;

    iget-object v3, v6, Lcom/bumptech/glide/d;->f:Ll/m;

    iget-object v1, v1, Lcom/bumptech/glide/i;->c:Ld0/a$a;

    new-instance v14, Lb0/h;

    move-object v4, v14

    move-object v10, v2

    move-object/from16 v19, v2

    move-object v2, v14

    move-object v14, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    invoke-direct/range {v4 .. v18}, Lb0/h;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/g;IILcom/bumptech/glide/e;Lcom/bumptech/glide/load/resource/gif/a$a;Ljava/util/ArrayList;Ll/m;Ld0/a$a;Lf0/d$a;)V

    iget-object v1, v0, Lc0/a;->c:Lb0/b;

    invoke-virtual {v2, v1}, Lb0/h;->g(Lb0/b;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v3, v19

    iget-boolean v4, v3, Lb0/a;->e1:Z

    if-nez v4, :cond_2

    invoke-interface {v1}, Lb0/b;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lf0/i;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lb0/b;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v1}, Lb0/b;->d()V

    goto :goto_2

    :cond_3
    move-object/from16 v3, v19

    :goto_0
    iget-object v1, v3, Lcom/bumptech/glide/g;->x1:Lcom/bumptech/glide/h;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h;->k(Lc0/c;)V

    iput-object v2, v0, Lc0/a;->c:Lb0/b;

    iget-object v1, v3, Lcom/bumptech/glide/g;->x1:Lcom/bumptech/glide/h;

    monitor-enter v1

    :try_start_0
    iget-object v3, v1, Lcom/bumptech/glide/h;->f:Ly/m;

    iget-object v3, v3, Ly/m;->a:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/bumptech/glide/h;->d:Ly/l;

    iget-object v3, v0, Ly/l;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Ly/l;->c:Z

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lb0/h;->d()V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lb0/h;->clear()V

    const-string v3, "RequestTracker"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Paused, delaying request"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v0, Ly/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    return-void
.end method

.method public final b(Lcom/bumptech/glide/load/resource/gif/a$a;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->g:Z

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->j:Z

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->f:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->n:Lcom/bumptech/glide/load/resource/gif/a$a;

    return-void

    :cond_1
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/a$a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/a;->e:Lm/d;

    invoke-interface {v3, v0}, Lm/d;->c(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->l:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->i:Lcom/bumptech/glide/load/resource/gif/a$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->i:Lcom/bumptech/glide/load/resource/gif/a$a;

    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/resource/gif/a$b;

    invoke-interface {v4}, Lcom/bumptech/glide/load/resource/gif/a$b;->a()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/a;->a()V

    return-void
.end method

.method public final c(Li/l;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->m:Li/l;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/a;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->h:Lcom/bumptech/glide/g;

    new-instance v1, Lb0/f;

    invoke-direct {v1}, Lb0/f;-><init>()V

    invoke-virtual {v1, p1}, Lb0/a;->k(Li/l;)Lb0/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->n(Lb0/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->h:Lcom/bumptech/glide/g;

    invoke-static {p2}, Lf0/j;->c(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->o:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->p:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/a;->q:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
