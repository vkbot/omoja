.class public abstract Lb0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lb0/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public Z:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b1:I

.field public c:I

.field public c1:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d1:I

.field public e1:Z

.field public f1:I

.field public g1:I

.field public h1:Li/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public i1:Z

.field public j1:Z

.field public k1:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l1:I

.field public m1:Li/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public o1:Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public p1:Z

.field public q1:Landroid/content/res/Resources$Theme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:F

.field public r1:Z

.field public s1:Z

.field public t1:Z

.field public u1:Z

.field public v1:Z

.field public x:Ll/l;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public y:Lcom/bumptech/glide/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lb0/a;->r:F

    sget-object v0, Ll/l;->c:Ll/l$e;

    iput-object v0, p0, Lb0/a;->x:Ll/l;

    sget-object v0, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/e;

    iput-object v0, p0, Lb0/a;->y:Lcom/bumptech/glide/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb0/a;->e1:Z

    const/4 v1, -0x1

    iput v1, p0, Lb0/a;->f1:I

    iput v1, p0, Lb0/a;->g1:I

    sget-object v1, Le0/a;->b:Le0/a;

    iput-object v1, p0, Lb0/a;->h1:Li/f;

    iput-boolean v0, p0, Lb0/a;->j1:Z

    new-instance v1, Li/h;

    invoke-direct {v1}, Li/h;-><init>()V

    iput-object v1, p0, Lb0/a;->m1:Li/h;

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lb0/a;->o1:Ljava/lang/Class;

    iput-boolean v0, p0, Lb0/a;->u1:Z

    return-void
.end method

.method public static e(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lb0/a;)Lb0/a;
    .locals 4
    .param p1    # Lb0/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/a<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb0/a;->r1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb0/a;->a(Lb0/a;)Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p1, Lb0/a;->c:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lb0/a;->r:F

    iput v0, p0, Lb0/a;->r:F

    :cond_1
    iget v0, p1, Lb0/a;->c:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lb0/a;->s1:Z

    iput-boolean v0, p0, Lb0/a;->s1:Z

    :cond_2
    iget v0, p1, Lb0/a;->c:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lb0/a;->v1:Z

    iput-boolean v0, p0, Lb0/a;->v1:Z

    :cond_3
    iget v0, p1, Lb0/a;->c:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lb0/a;->x:Ll/l;

    iput-object v0, p0, Lb0/a;->x:Ll/l;

    :cond_4
    iget v0, p1, Lb0/a;->c:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lb0/a;->y:Lcom/bumptech/glide/e;

    iput-object v0, p0, Lb0/a;->y:Lcom/bumptech/glide/e;

    :cond_5
    iget v0, p1, Lb0/a;->c:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lb0/a;->e(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lb0/a;->Z:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lb0/a;->Z:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lb0/a;->b1:I

    iget v0, p0, Lb0/a;->c:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lb0/a;->c:I

    :cond_6
    iget v0, p1, Lb0/a;->c:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lb0/a;->e(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget v0, p1, Lb0/a;->b1:I

    iput v0, p0, Lb0/a;->b1:I

    iput-object v2, p0, Lb0/a;->Z:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lb0/a;->c:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lb0/a;->c:I

    :cond_7
    iget v0, p1, Lb0/a;->c:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lb0/a;->c1:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lb0/a;->c1:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lb0/a;->d1:I

    iget v0, p0, Lb0/a;->c:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lb0/a;->c:I

    :cond_8
    iget v0, p1, Lb0/a;->c:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lb0/a;->d1:I

    iput v0, p0, Lb0/a;->d1:I

    iput-object v2, p0, Lb0/a;->c1:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lb0/a;->c:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lb0/a;->c:I

    :cond_9
    iget v0, p1, Lb0/a;->c:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lb0/a;->e1:Z

    iput-boolean v0, p0, Lb0/a;->e1:Z

    :cond_a
    iget v0, p1, Lb0/a;->c:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lb0/a;->g1:I

    iput v0, p0, Lb0/a;->g1:I

    iget v0, p1, Lb0/a;->f1:I

    iput v0, p0, Lb0/a;->f1:I

    :cond_b
    iget v0, p1, Lb0/a;->c:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lb0/a;->h1:Li/f;

    iput-object v0, p0, Lb0/a;->h1:Li/f;

    :cond_c
    iget v0, p1, Lb0/a;->c:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lb0/a;->o1:Ljava/lang/Class;

    iput-object v0, p0, Lb0/a;->o1:Ljava/lang/Class;

    :cond_d
    iget v0, p1, Lb0/a;->c:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lb0/a;->k1:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lb0/a;->k1:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lb0/a;->l1:I

    iget v0, p0, Lb0/a;->c:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lb0/a;->c:I

    :cond_e
    iget v0, p1, Lb0/a;->c:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p1, Lb0/a;->l1:I

    iput v0, p0, Lb0/a;->l1:I

    iput-object v2, p0, Lb0/a;->k1:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lb0/a;->c:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lb0/a;->c:I

    :cond_f
    iget v0, p1, Lb0/a;->c:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lb0/a;->q1:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lb0/a;->q1:Landroid/content/res/Resources$Theme;

    :cond_10
    iget v0, p1, Lb0/a;->c:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lb0/a;->j1:Z

    iput-boolean v0, p0, Lb0/a;->j1:Z

    :cond_11
    iget v0, p1, Lb0/a;->c:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lb0/a;->i1:Z

    iput-boolean v0, p0, Lb0/a;->i1:Z

    :cond_12
    iget v0, p1, Lb0/a;->c:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    iget-object v2, p1, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lb0/a;->u1:Z

    iput-boolean v0, p0, Lb0/a;->u1:Z

    :cond_13
    iget v0, p1, Lb0/a;->c:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lb0/a;->e(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lb0/a;->t1:Z

    iput-boolean v0, p0, Lb0/a;->t1:Z

    :cond_14
    iget-boolean v0, p0, Lb0/a;->j1:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->clear()V

    iget v0, p0, Lb0/a;->c:I

    iput-boolean v1, p0, Lb0/a;->i1:Z

    const v1, -0x20801

    and-int/2addr v0, v1

    iput v0, p0, Lb0/a;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb0/a;->u1:Z

    :cond_15
    iget v0, p0, Lb0/a;->c:I

    iget v1, p1, Lb0/a;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lb0/a;->c:I

    iget-object v0, p0, Lb0/a;->m1:Li/h;

    iget-object p1, p1, Lb0/a;->m1:Li/h;

    iget-object v0, v0, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    iget-object p1, p1, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0
.end method

.method public b()Lb0/a;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/a;

    new-instance v1, Li/h;

    invoke-direct {v1}, Li/h;-><init>()V

    iput-object v1, v0, Lb0/a;->m1:Li/h;

    iget-object v2, p0, Lb0/a;->m1:Li/h;

    iget-object v1, v1, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    iget-object v2, v2, Li/h;->b:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    iget-object p0, p0, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lb0/a;->p1:Z

    iput-boolean p0, v0, Lb0/a;->r1:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(Ljava/lang/Class;)Lb0/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb0/a;->r1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb0/a;->c(Ljava/lang/Class;)Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lb0/a;->o1:Ljava/lang/Class;

    iget p1, p0, Lb0/a;->c:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lb0/a;->c:I

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ll/l;)Lb0/a;
    .locals 1
    .param p1    # Ll/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/l;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb0/a;->r1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb0/a;->d(Ll/l;)Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lb0/a;->x:Ll/l;

    iget p1, p0, Lb0/a;->c:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lb0/a;->c:I

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Argument must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lb0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lb0/a;

    iget v0, p1, Lb0/a;->r:F

    iget v2, p0, Lb0/a;->r:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lb0/a;->b1:I

    iget v2, p1, Lb0/a;->b1:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb0/a;->Z:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lb0/a;->Z:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lf0/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb0/a;->d1:I

    iget v2, p1, Lb0/a;->d1:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb0/a;->c1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lb0/a;->c1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lf0/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb0/a;->l1:I

    iget v2, p1, Lb0/a;->l1:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb0/a;->k1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lb0/a;->k1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lf0/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb0/a;->e1:Z

    iget-boolean v2, p1, Lb0/a;->e1:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lb0/a;->f1:I

    iget v2, p1, Lb0/a;->f1:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lb0/a;->g1:I

    iget v2, p1, Lb0/a;->g1:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lb0/a;->i1:Z

    iget-boolean v2, p1, Lb0/a;->i1:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lb0/a;->j1:Z

    iget-boolean v2, p1, Lb0/a;->j1:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lb0/a;->s1:Z

    iget-boolean v2, p1, Lb0/a;->s1:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lb0/a;->t1:Z

    iget-boolean v2, p1, Lb0/a;->t1:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb0/a;->x:Ll/l;

    iget-object v2, p1, Lb0/a;->x:Ll/l;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb0/a;->y:Lcom/bumptech/glide/e;

    iget-object v2, p1, Lb0/a;->y:Lcom/bumptech/glide/e;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lb0/a;->m1:Li/h;

    iget-object v2, p1, Lb0/a;->m1:Li/h;

    invoke-virtual {v0, v2}, Li/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    iget-object v2, p1, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb0/a;->o1:Ljava/lang/Class;

    iget-object v2, p1, Lb0/a;->o1:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb0/a;->h1:Li/f;

    iget-object v2, p1, Lb0/a;->h1:Li/f;

    invoke-static {v0, v2}, Lf0/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb0/a;->q1:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lb0/a;->q1:Landroid/content/res/Resources$Theme;

    invoke-static {p0, p1}, Lf0/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f(II)Lb0/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lb0/a;->r1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lb0/a;->f(II)Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lb0/a;->g1:I

    iput p2, p0, Lb0/a;->f1:I

    iget p1, p0, Lb0/a;->c:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lb0/a;->c:I

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0
.end method

.method public final g()Lb0/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/e;->r:Lcom/bumptech/glide/e;

    iget-boolean v1, p0, Lb0/a;->r1:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0}, Lb0/a;->g()Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object v0, p0, Lb0/a;->y:Lcom/bumptech/glide/e;

    iget v0, p0, Lb0/a;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lb0/a;->c:I

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0
.end method

.method public final h()V
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean p0, p0, Lb0/a;->p1:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lb0/a;->r:F

    sget-object v1, Lf0/j;->a:[C

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lf0/j;->e(II)I

    move-result v0

    iget v1, p0, Lb0/a;->b1:I

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget-object v1, p0, Lb0/a;->Z:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lb0/a;->d1:I

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget-object v1, p0, Lb0/a;->c1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lb0/a;->l1:I

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget-object v1, p0, Lb0/a;->k1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lb0/a;->e1:Z

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget v1, p0, Lb0/a;->f1:I

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget v1, p0, Lb0/a;->g1:I

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget-boolean v1, p0, Lb0/a;->i1:Z

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget-boolean v1, p0, Lb0/a;->j1:Z

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget-boolean v1, p0, Lb0/a;->s1:Z

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget-boolean v1, p0, Lb0/a;->t1:Z

    invoke-static {v1, v0}, Lf0/j;->e(II)I

    move-result v0

    iget-object v1, p0, Lb0/a;->x:Ll/l;

    invoke-static {v0, v1}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb0/a;->y:Lcom/bumptech/glide/e;

    invoke-static {v0, v1}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb0/a;->m1:Li/h;

    invoke-static {v0, v1}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-static {v0, v1}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb0/a;->o1:Ljava/lang/Class;

    invoke-static {v0, v1}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb0/a;->h1:Li/f;

    invoke-static {v0, v1}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lb0/a;->q1:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p0}, Lf0/j;->f(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Le0/b;)Lb0/a;
    .locals 1
    .param p1    # Le0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lb0/a;->r1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb0/a;->i(Le0/b;)Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lb0/a;->h1:Li/f;

    iget p1, p0, Lb0/a;->c:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lb0/a;->c:I

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0
.end method

.method public final j()Lb0/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lb0/a;->r1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0}, Lb0/a;->j()Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb0/a;->e1:Z

    iget v0, p0, Lb0/a;->c:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lb0/a;->c:I

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0
.end method

.method public final k(Li/l;)Lb0/a;
    .locals 2
    .param p1    # Li/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lb0/a;->r1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb0/a;->k(Li/l;)Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ls/j;

    invoke-direct {v0, p1}, Ls/j;-><init>(Li/l;)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1}, Lb0/a;->l(Ljava/lang/Class;Li/l;)Lb0/a;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0}, Lb0/a;->l(Ljava/lang/Class;Li/l;)Lb0/a;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0}, Lb0/a;->l(Ljava/lang/Class;Li/l;)Lb0/a;

    new-instance v0, Lw/e;

    invoke-direct {v0, p1}, Lw/e;-><init>(Li/l;)V

    const-class p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0, p1, v0}, Lb0/a;->l(Ljava/lang/Class;Li/l;)Lb0/a;

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0
.end method

.method public final l(Ljava/lang/Class;Li/l;)Lb0/a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lb0/a;->r1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lb0/a;->l(Ljava/lang/Class;Li/l;)Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lf0/i;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lb0/a;->n1:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lb0/a;->c:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb0/a;->j1:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb0/a;->u1:Z

    const v0, 0x30800

    or-int/2addr p1, v0

    iput p1, p0, Lb0/a;->c:I

    iput-boolean p2, p0, Lb0/a;->i1:Z

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0
.end method

.method public final m()Lb0/a;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lb0/a;->r1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/a;->b()Lb0/a;

    move-result-object p0

    invoke-virtual {p0}, Lb0/a;->m()Lb0/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb0/a;->v1:Z

    iget v0, p0, Lb0/a;->c:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lb0/a;->c:I

    invoke-virtual {p0}, Lb0/a;->h()V

    return-object p0
.end method
