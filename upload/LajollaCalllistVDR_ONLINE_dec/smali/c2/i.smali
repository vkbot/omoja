.class public final Lc2/i;
.super Lc2/k;
.source "SourceFile"


# static fields
.field public static final r:Lc2/h;


# instance fields
.field public m:Lc2/l;

.field public final n:Ll0/j;

.field public final o:Ll0/i;

.field public p:F

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc2/h;

    invoke-direct {v0}, Lc2/h;-><init>()V

    sput-object v0, Lc2/i;->r:Lc2/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc2/d;Lc2/l;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lc2/k;-><init>(Landroid/content/Context;Lc2/d;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc2/i;->q:Z

    iput-object p3, p0, Lc2/i;->m:Lc2/l;

    iput-object p0, p3, Lc2/l;->b:Lc2/k;

    new-instance p2, Ll0/j;

    invoke-direct {p2}, Ll0/j;-><init>()V

    iput-object p2, p0, Lc2/i;->n:Ll0/j;

    const/high16 p3, 0x3f800000    # 1.0f

    float-to-double v0, p3

    iput-wide v0, p2, Ll0/j;->b:D

    iput-boolean p1, p2, Ll0/j;->c:Z

    const/high16 v0, 0x42480000    # 50.0f

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p2, Ll0/j;->a:D

    iput-boolean p1, p2, Ll0/j;->c:Z

    new-instance p1, Ll0/i;

    invoke-direct {p1, p0}, Ll0/i;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lc2/i;->o:Ll0/i;

    iput-object p2, p1, Ll0/i;->r:Ll0/j;

    iget p1, p0, Lc2/k;->i:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_0

    iput p3, p0, Lc2/k;->i:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lc2/i;->m:Lc2/l;

    invoke-virtual {p0}, Lc2/k;->b()F

    move-result v1

    iget-object v2, v0, Lc2/l;->a:Lc2/d;

    invoke-virtual {v2}, Lc2/d;->a()V

    invoke-virtual {v0, p1, v1}, Lc2/l;->a(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lc2/i;->m:Lc2/l;

    iget-object v3, p0, Lc2/k;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3}, Lc2/l;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lc2/k;->c:Lc2/d;

    iget-object v0, v0, Lc2/d;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lc2/k;->k:I

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->I(II)I

    move-result v6

    iget-object v1, p0, Lc2/i;->m:Lc2/l;

    const/4 v4, 0x0

    iget v5, p0, Lc2/i;->p:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lc2/l;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(ZZZ)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lc2/k;->f(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lc2/k;->d:Lc2/a;

    iget-object p3, p0, Lc2/k;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "animator_duration_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lc2/i;->q:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc2/i;->q:Z

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v1, p2

    iget-object p2, p0, Lc2/i;->n:Ll0/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpg-float p3, v1, p3

    if-lez p3, :cond_1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, p2, Ll0/j;->a:D

    iput-boolean v0, p2, Ll0/j;->c:Z

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Spring stiffness constant must be positive."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lc2/i;->m:Lc2/l;

    invoke-virtual {v0}, Lc2/l;->d()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lc2/i;->m:Lc2/l;

    invoke-virtual {v0}, Lc2/l;->e()I

    move-result v0

    return v0
.end method

.method public final jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lc2/i;->o:Ll0/i;

    invoke-virtual {v0}, Ll0/i;->b()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lc2/i;->p:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 8

    iget-boolean v0, p0, Lc2/i;->q:Z

    const v1, 0x461c4000    # 10000.0f

    iget-object v2, p0, Lc2/i;->o:Ll0/i;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ll0/i;->b()V

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lc2/i;->p:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lc2/i;->p:F

    mul-float/2addr v0, v1

    iput v0, v2, Ll0/h;->b:F

    iput-boolean v3, v2, Ll0/h;->c:Z

    int-to-float p1, p1

    iget-boolean v0, v2, Ll0/h;->f:Z

    if-eqz v0, :cond_1

    iput p1, v2, Ll0/i;->s:F

    goto/16 :goto_0

    :cond_1
    iget-object v0, v2, Ll0/i;->r:Ll0/j;

    if-nez v0, :cond_2

    new-instance v0, Ll0/j;

    invoke-direct {v0, p1}, Ll0/j;-><init>(F)V

    iput-object v0, v2, Ll0/i;->r:Ll0/j;

    :cond_2
    iget-object v0, v2, Ll0/i;->r:Ll0/j;

    float-to-double v4, p1

    iput-wide v4, v0, Ll0/j;->i:D

    double-to-float p1, v4

    float-to-double v4, p1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v6, p1

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_b

    iget v1, v2, Ll0/h;->g:F

    float-to-double v6, v1

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_a

    iget v4, v2, Ll0/h;->i:F

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iput-wide v4, v0, Ll0/j;->d:D

    const-wide v6, 0x404f400000000000L    # 62.5

    mul-double/2addr v4, v6

    iput-wide v4, v0, Ll0/j;->e:D

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_9

    iget-boolean v0, v2, Ll0/h;->f:Z

    if-nez v0, :cond_8

    if-nez v0, :cond_8

    iput-boolean v3, v2, Ll0/h;->f:Z

    iget-boolean v0, v2, Ll0/h;->c:Z

    if-nez v0, :cond_3

    iget-object v0, v2, Ll0/h;->e:Le0/g;

    iget-object v4, v2, Ll0/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Le0/g;->b(Ljava/lang/Object;)F

    move-result v0

    iput v0, v2, Ll0/h;->b:F

    :cond_3
    iget v0, v2, Ll0/h;->b:F

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_7

    cmpg-float p1, v0, v1

    if-ltz p1, :cond_7

    sget-object p1, Ll0/d;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ll0/d;

    invoke-direct {v0}, Ll0/d;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll0/d;

    iget-object v0, p1, Ll0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Ll0/d;->d:Ll0/c;

    if-nez v1, :cond_5

    new-instance v1, Ll0/c;

    iget-object v4, p1, Ll0/d;->c:Landroidx/appcompat/view/menu/i;

    invoke-direct {v1, v4}, Ll0/c;-><init>(Landroidx/appcompat/view/menu/i;)V

    iput-object v1, p1, Ll0/d;->d:Ll0/c;

    :cond_5
    iget-object p1, p1, Ll0/d;->d:Ll0/c;

    invoke-virtual {p1}, Ll0/c;->e()V

    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_0
    return v3

    :cond_9
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
