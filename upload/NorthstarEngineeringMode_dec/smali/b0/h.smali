.class public final Lb0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/b;
.implements Lc0/b;
.implements Lb0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb0/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb0/b;",
        "Lc0/b;",
        "Lb0/g;"
    }
.end annotation


# static fields
.field public static final C:Z


# instance fields
.field public A:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public final B:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lg0/d$a;

.field public final c:Ljava/lang/Object;

.field public final d:Lb0/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/e<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/Context;

.field public final f:Lcom/bumptech/glide/d;

.field public final g:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final i:Lb0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final j:I

.field public final k:I

.field public final l:Lcom/bumptech/glide/e;

.field public final m:Lc0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/c<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb0/e<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final o:Ld0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld0/b<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/concurrent/Executor;

.field public q:Ll/x;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/x<",
            "TR;>;"
        }
    .end annotation
.end field

.field public r:Ll/m$d;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public s:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public volatile t:Ll/m;

.field public u:Lb0/h$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public v:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public w:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public x:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public y:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public z:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lb0/h;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/g;IILcom/bumptech/glide/e;Lcom/bumptech/glide/load/resource/gif/a$a;Ljava/util/ArrayList;Ll/m;Ld0/a$a;Lf0/d$a;)V
    .locals 4
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v2, Lb0/h;->C:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, v0, Lb0/h;->a:Ljava/lang/String;

    new-instance v2, Lg0/d$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lb0/h;->b:Lg0/d$a;

    move-object v2, p3

    iput-object v2, v0, Lb0/h;->c:Ljava/lang/Object;

    move-object v2, p1

    iput-object v2, v0, Lb0/h;->e:Landroid/content/Context;

    iput-object v1, v0, Lb0/h;->f:Lcom/bumptech/glide/d;

    move-object v2, p4

    iput-object v2, v0, Lb0/h;->g:Ljava/lang/Object;

    move-object v2, p5

    iput-object v2, v0, Lb0/h;->h:Ljava/lang/Class;

    move-object v2, p6

    iput-object v2, v0, Lb0/h;->i:Lb0/a;

    move v2, p7

    iput v2, v0, Lb0/h;->j:I

    move v2, p8

    iput v2, v0, Lb0/h;->k:I

    move-object v2, p9

    iput-object v2, v0, Lb0/h;->l:Lcom/bumptech/glide/e;

    move-object v2, p10

    iput-object v2, v0, Lb0/h;->m:Lc0/c;

    iput-object v3, v0, Lb0/h;->d:Lb0/e;

    move-object v2, p11

    iput-object v2, v0, Lb0/h;->n:Ljava/util/List;

    move-object/from16 v2, p12

    iput-object v2, v0, Lb0/h;->t:Ll/m;

    move-object/from16 v2, p13

    iput-object v2, v0, Lb0/h;->o:Ld0/b;

    move-object/from16 v2, p14

    iput-object v2, v0, Lb0/h;->p:Ljava/util/concurrent/Executor;

    sget-object v2, Lb0/h$a;->c:Lb0/h$a;

    iput-object v2, v0, Lb0/h;->u:Lb0/h$a;

    iget-object v2, v0, Lb0/h;->B:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/bumptech/glide/d;->g:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lb0/h;->B:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lb0/h;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lb0/h;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lb0/h;->u:Lb0/h$a;

    sget-object v1, Lb0/h$a;->b1:Lb0/h$a;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lb0/h;->u:Lb0/h$a;

    sget-object v1, Lb0/h$a;->y:Lb0/h$a;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clear()V
    .locals 4

    iget-object v0, p0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lb0/h;->A:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lb0/h;->b:Lg0/d$a;

    invoke-virtual {v1}, Lg0/d$a;->a()V

    iget-object v1, p0, Lb0/h;->u:Lb0/h$a;

    sget-object v2, Lb0/h$a;->b1:Lb0/h$a;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lb0/h;->e()V

    iget-object v1, p0, Lb0/h;->q:Ll/x;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-object v3, p0, Lb0/h;->q:Ll/x;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iget-object v3, p0, Lb0/h;->m:Lc0/c;

    invoke-virtual {p0}, Lb0/h;->f()Landroid/graphics/drawable/Drawable;

    invoke-interface {v3}, Lc0/c;->j()V

    iput-object v2, p0, Lb0/h;->u:Lb0/h$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object p0, p0, Lb0/h;->t:Ll/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ll/m;->f(Ll/x;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 6

    const-string v0, "finished run method in "

    iget-object v1, p0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lb0/h;->A:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lb0/h;->b:Lg0/d$a;

    invoke-virtual {v2}, Lg0/d$a;->a()V

    sget v2, Lf0/e;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, p0, Lb0/h;->s:J

    iget-object v2, p0, Lb0/h;->g:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget v0, p0, Lb0/h;->j:I

    iget v2, p0, Lb0/h;->k:I

    invoke-static {v0, v2}, Lf0/j;->g(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb0/h;->j:I

    iput v0, p0, Lb0/h;->y:I

    iget v0, p0, Lb0/h;->k:I

    iput v0, p0, Lb0/h;->z:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lb0/h;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb0/h;->i:Lb0/a;

    iget-object v2, v0, Lb0/a;->k1:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lb0/h;->x:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    iget v0, v0, Lb0/a;->l1:I

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lb0/h;->i(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb0/h;->x:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lb0/h;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    :goto_1
    new-instance v2, Ll/s;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Ll/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lb0/h;->k(Ll/s;I)V

    monitor-exit v1

    return-void

    :cond_3
    iget-object v2, p0, Lb0/h;->u:Lb0/h$a;

    sget-object v3, Lb0/h$a;->r:Lb0/h$a;

    if-eq v2, v3, :cond_9

    sget-object v4, Lb0/h$a;->y:Lb0/h$a;

    if-ne v2, v4, :cond_4

    iget-object v0, p0, Lb0/h;->q:Ll/x;

    sget-object v2, Li/a;->Z:Li/a;

    invoke-virtual {p0, v2, v0}, Lb0/h;->l(Li/a;Ll/x;)V

    monitor-exit v1

    return-void

    :cond_4
    sget-object v2, Lb0/h$a;->x:Lb0/h$a;

    iput-object v2, p0, Lb0/h;->u:Lb0/h$a;

    iget v4, p0, Lb0/h;->j:I

    iget v5, p0, Lb0/h;->k:I

    invoke-static {v4, v5}, Lf0/j;->g(II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lb0/h;->j:I

    iget v5, p0, Lb0/h;->k:I

    invoke-virtual {p0, v4, v5}, Lb0/h;->n(II)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lb0/h;->m:Lc0/c;

    invoke-interface {v4, p0}, Lc0/c;->i(Lc0/b;)V

    :goto_2
    iget-object v4, p0, Lb0/h;->u:Lb0/h$a;

    if-eq v4, v3, :cond_6

    if-ne v4, v2, :cond_7

    :cond_6
    iget-object v2, p0, Lb0/h;->m:Lc0/c;

    invoke-virtual {p0}, Lb0/h;->f()Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Lc0/c;->g()V

    :cond_7
    sget-boolean v2, Lb0/h;->C:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lb0/h;->s:J

    invoke-static {v3, v4}, Lf0/e;->a(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb0/h;->j(Ljava/lang/String;)V

    :cond_8
    monitor-exit v1

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot restart a running request"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-boolean v0, p0, Lb0/h;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb0/h;->b:Lg0/d$a;

    invoke-virtual {v0}, Lg0/d$a;->a()V

    iget-object v0, p0, Lb0/h;->m:Lc0/c;

    invoke-interface {v0}, Lc0/c;->b()V

    iget-object v0, p0, Lb0/h;->r:Ll/m$d;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ll/m$d;->c:Ll/m;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Ll/m$d;->a:Ll/n;

    iget-object v0, v0, Ll/m$d;->b:Lb0/g;

    invoke-virtual {v2, v0}, Ll/n;->h(Lb0/g;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb0/h;->r:Ll/m$d;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, Lb0/h;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb0/h;->i:Lb0/a;

    iget-object v1, v0, Lb0/a;->c1:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lb0/h;->w:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget v0, v0, Lb0/a;->d1:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lb0/h;->i(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb0/h;->w:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p0, p0, Lb0/h;->w:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final g(Lb0/b;)Z
    .locals 14

    instance-of v0, p1, Lb0/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lb0/h;->j:I

    iget v3, p0, Lb0/h;->k:I

    iget-object v4, p0, Lb0/h;->g:Ljava/lang/Object;

    iget-object v5, p0, Lb0/h;->h:Ljava/lang/Class;

    iget-object v6, p0, Lb0/h;->i:Lb0/a;

    iget-object v7, p0, Lb0/h;->l:Lcom/bumptech/glide/e;

    iget-object p0, p0, Lb0/h;->n:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    move p0, v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lb0/h;

    iget-object v8, p1, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget v0, p1, Lb0/h;->j:I

    iget v9, p1, Lb0/h;->k:I

    iget-object v10, p1, Lb0/h;->g:Ljava/lang/Object;

    iget-object v11, p1, Lb0/h;->h:Ljava/lang/Class;

    iget-object v12, p1, Lb0/h;->i:Lb0/a;

    iget-object v13, p1, Lb0/h;->l:Lcom/bumptech/glide/e;

    iget-object p1, p1, Lb0/h;->n:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    move p1, v1

    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v0, :cond_5

    if-ne v3, v9, :cond_5

    sget-object v0, Lf0/j;->a:[C

    if-nez v4, :cond_3

    if-nez v10, :cond_5

    goto :goto_3

    :cond_3
    instance-of v0, v4, Lp/n;

    if-eqz v0, :cond_4

    check-cast v4, Lp/n;

    invoke-interface {v4}, Lp/n;->a()Z

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, v12}, Lb0/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne v7, v13, :cond_5

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :goto_4
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final h()Z
    .locals 0
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final i(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, Lb0/h;->i:Lb0/a;

    iget-object v0, v0, Lb0/a;->q1:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb0/h;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lb0/h;->f:Lcom/bumptech/glide/d;

    invoke-static {p0, p0, p1, v0}, Lu/a;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final isRunning()Z
    .locals 2

    iget-object v0, p0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lb0/h;->u:Lb0/h$a;

    sget-object v1, Lb0/h$a;->r:Lb0/h$a;

    if-eq p0, v1, :cond_1

    sget-object v1, Lb0/h$a;->x:Lb0/h$a;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    const-string v0, " this: "

    invoke-static {p1, v0}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Request"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k(Ll/s;I)V
    .locals 5

    const-string v0, "Load failed for "

    iget-object v1, p0, Lb0/h;->b:Lg0/d$a;

    invoke-virtual {v1}, Lg0/d$a;->a()V

    iget-object v1, p0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lb0/h;->f:Lcom/bumptech/glide/d;

    iget v2, v2, Lcom/bumptech/glide/d;->h:I

    if-gt v2, p2, :cond_0

    const-string p2, "Glide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lb0/h;->g:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb0/h;->y:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb0/h;->z:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v2, p2, :cond_0

    invoke-virtual {p1}, Ll/s;->e()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lb0/h;->r:Ll/m$d;

    sget-object p2, Lb0/h$a;->Z:Lb0/h$a;

    iput-object p2, p0, Lb0/h;->u:Lb0/h$a;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb0/h;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lb0/h;->n:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb0/e;

    invoke-virtual {p0}, Lb0/h;->h()Z

    invoke-interface {v4}, Lb0/e;->a()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    move v3, v0

    :cond_2
    iget-object v2, p0, Lb0/h;->d:Lb0/e;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lb0/h;->h()Z

    invoke-interface {v2}, Lb0/e;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    or-int/2addr p2, v3

    if-nez p2, :cond_9

    iget-object p2, p0, Lb0/h;->g:Ljava/lang/Object;

    if-nez p2, :cond_5

    iget-object p1, p0, Lb0/h;->x:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lb0/h;->i:Lb0/a;

    iget-object p2, p1, Lb0/a;->k1:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lb0/h;->x:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_4

    iget p1, p1, Lb0/a;->l1:I

    if-lez p1, :cond_4

    invoke-virtual {p0, p1}, Lb0/h;->i(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lb0/h;->x:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object p1, p0, Lb0/h;->x:Landroid/graphics/drawable/Drawable;

    :cond_5
    if-nez p1, :cond_7

    iget-object p1, p0, Lb0/h;->v:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_6

    iget-object p1, p0, Lb0/h;->i:Lb0/a;

    iget-object p2, p1, Lb0/a;->Z:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lb0/h;->v:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_6

    iget p1, p1, Lb0/a;->b1:I

    if-lez p1, :cond_6

    invoke-virtual {p0, p1}, Lb0/h;->i(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lb0/h;->v:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object p1, p0, Lb0/h;->v:Landroid/graphics/drawable/Drawable;

    :cond_7
    if-nez p1, :cond_8

    invoke-virtual {p0}, Lb0/h;->f()Landroid/graphics/drawable/Drawable;

    :cond_8
    iget-object p1, p0, Lb0/h;->m:Lc0/c;

    invoke-interface {p1}, Lc0/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_9
    :try_start_2
    iput-boolean v0, p0, Lb0/h;->A:Z

    monitor-exit v1

    return-void

    :goto_3
    iput-boolean v0, p0, Lb0/h;->A:Z

    throw p1

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final l(Li/a;Ll/x;)V
    .locals 7

    const-string v0, "Expected to receive an object of "

    const-string v1, "Expected to receive a Resource<R> with an object of "

    iget-object v2, p0, Lb0/h;->b:Lg0/d$a;

    invoke-virtual {v2}, Lg0/d$a;->a()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iput-object v2, p0, Lb0/h;->r:Ll/m$d;

    const/4 v4, 0x5

    if-nez p2, :cond_0

    new-instance p1, Ll/s;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lb0/h;->h:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " inside, but instead got null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ll/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lb0/h;->k(Ll/s;I)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v2

    goto :goto_3

    :cond_0
    invoke-interface {p2}, Ll/x;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v5, p0, Lb0/h;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v1, p1}, Lb0/h;->m(Ll/x;Ljava/lang/Object;Li/a;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    iput-object v2, p0, Lb0/h;->q:Ll/x;

    new-instance p1, Ll/s;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lb0/h;->h:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but instead got "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "} inside Resource{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ll/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lb0/h;->k(Ll/s;I)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lb0/h;->t:Ll/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ll/m;->f(Ll/x;)V

    return-void

    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, p2

    goto :goto_4

    :catchall_3
    move-exception p1

    :goto_4
    if-eqz v2, :cond_5

    iget-object p0, p0, Lb0/h;->t:Ll/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ll/m;->f(Ll/x;)V

    :cond_5
    throw p1
.end method

.method public final m(Ll/x;Ljava/lang/Object;Li/a;)V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/x<",
            "TR;>;TR;",
            "Li/a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lb0/h;->h()Z

    sget-object v0, Lb0/h$a;->y:Lb0/h$a;

    iput-object v0, p0, Lb0/h;->u:Lb0/h$a;

    iput-object p1, p0, Lb0/h;->q:Ll/x;

    iget-object p1, p0, Lb0/h;->f:Lcom/bumptech/glide/d;

    iget p1, p1, Lcom/bumptech/glide/d;->h:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Finished loading "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lb0/h;->g:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with size ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lb0/h;->y:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lb0/h;->z:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lb0/h;->s:J

    invoke-static {v0, v1}, Lf0/e;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " ms"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Glide"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb0/h;->A:Z

    const/4 p3, 0x0

    :try_start_0
    iget-object v0, p0, Lb0/h;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/e;

    invoke-interface {v2}, Lb0/e;->b()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move v1, p3

    :cond_2
    iget-object v0, p0, Lb0/h;->d:Lb0/e;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lb0/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, p3

    :goto_1
    or-int/2addr p1, v1

    if-nez p1, :cond_4

    iget-object p1, p0, Lb0/h;->o:Ld0/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lb0/h;->m:Lc0/c;

    invoke-interface {p1, p2}, Lc0/c;->h(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iput-boolean p3, p0, Lb0/h;->A:Z

    return-void

    :goto_2
    iput-boolean p3, p0, Lb0/h;->A:Z

    throw p1
.end method

.method public final n(II)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v15, "finished onSizeReady in "

    const-string v3, "finished setup for calling load in "

    const-string v4, "Got onSizeReady in "

    iget-object v5, v0, Lb0/h;->b:Lg0/d$a;

    invoke-virtual {v5}, Lg0/d$a;->a()V

    iget-object v14, v0, Lb0/h;->c:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    sget-boolean v21, Lb0/h;->C:Z

    if-eqz v21, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lb0/h;->s:J

    invoke-static {v6, v7}, Lf0/e;->a(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lb0/h;->j(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v24, v14

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v4, v0, Lb0/h;->u:Lb0/h$a;

    sget-object v5, Lb0/h$a;->x:Lb0/h$a;

    if-eq v4, v5, :cond_1

    monitor-exit v14

    return-void

    :cond_1
    sget-object v13, Lb0/h$a;->r:Lb0/h$a;

    iput-object v13, v0, Lb0/h;->u:Lb0/h$a;

    iget-object v4, v0, Lb0/h;->i:Lb0/a;

    iget v4, v4, Lb0/a;->r:F

    const/high16 v5, -0x80000000

    if-ne v1, v5, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_1
    iput v1, v0, Lb0/h;->y:I

    if-ne v2, v5, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    int-to-float v1, v2

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_2
    iput v1, v0, Lb0/h;->z:I

    if-eqz v21, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lb0/h;->s:J

    invoke-static {v2, v3}, Lf0/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb0/h;->j(Ljava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lb0/h;->t:Ll/m;

    iget-object v2, v0, Lb0/h;->f:Lcom/bumptech/glide/d;

    iget-object v3, v0, Lb0/h;->g:Ljava/lang/Object;

    iget-object v4, v0, Lb0/h;->i:Lb0/a;

    iget-object v5, v4, Lb0/a;->h1:Li/f;

    iget v6, v0, Lb0/h;->y:I

    iget v7, v0, Lb0/h;->z:I

    iget-object v8, v4, Lb0/a;->o1:Ljava/lang/Class;

    iget-object v9, v0, Lb0/h;->h:Ljava/lang/Class;

    iget-object v10, v0, Lb0/h;->l:Lcom/bumptech/glide/e;

    iget-object v11, v4, Lb0/a;->x:Ll/l;

    iget-object v12, v4, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    move-object/from16 v16, v13

    iget-boolean v13, v4, Lb0/a;->i1:Z

    move-object/from16 v17, v15

    iget-boolean v15, v4, Lb0/a;->u1:Z

    move/from16 v18, v15

    iget-object v15, v4, Lb0/a;->m1:Li/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v14

    :try_start_1
    iget-boolean v14, v4, Lb0/a;->e1:Z

    move/from16 v20, v14

    iget-boolean v14, v4, Lb0/a;->s1:Z

    move/from16 p1, v14

    iget-boolean v14, v4, Lb0/a;->v1:Z

    iget-boolean v4, v4, Lb0/a;->t1:Z

    move/from16 p2, v14

    iget-object v14, v0, Lb0/h;->p:Ljava/util/concurrent/Executor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v22, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move-object/from16 v23, v16

    move/from16 v13, v18

    move/from16 v18, p1

    move-object/from16 v24, v19

    move/from16 v16, v20

    move/from16 v19, p2

    move-object/from16 v20, v14

    move-object v14, v15

    move-object/from16 v25, v17

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v22

    move-object/from16 v19, p0

    :try_start_2
    invoke-virtual/range {v1 .. v20}, Ll/m;->b(Lcom/bumptech/glide/d;Ljava/lang/Object;Li/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e;Ll/l;Lcom/bumptech/glide/util/CachedHashCodeArrayMap;ZZLi/h;ZZZZLb0/g;Ljava/util/concurrent/Executor;)Ll/m$d;

    move-result-object v1

    iput-object v1, v0, Lb0/h;->r:Ll/m$d;

    iget-object v1, v0, Lb0/h;->u:Lb0/h$a;

    move-object/from16 v2, v23

    if-eq v1, v2, :cond_5

    const/4 v1, 0x0

    iput-object v1, v0, Lb0/h;->r:Ll/m$d;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v21, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lb0/h;->s:J

    invoke-static {v2, v3}, Lf0/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb0/h;->j(Ljava/lang/String;)V

    :cond_6
    monitor-exit v24

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v24, v19

    :goto_4
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
