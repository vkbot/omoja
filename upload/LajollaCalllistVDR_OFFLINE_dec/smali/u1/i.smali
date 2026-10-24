.class public final Lu1/i;
.super Lu1/k;
.source "SourceFile"


# static fields
.field public static final q:Lu1/h;


# instance fields
.field public l:Lu1/l;

.field public final m:Lm0/j;

.field public final n:Lm0/i;

.field public o:F

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/h;

    invoke-direct {v0}, Lu1/h;-><init>()V

    sput-object v0, Lu1/i;->q:Lu1/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lu1/d;Lu1/l;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lu1/k;-><init>(Landroid/content/Context;Lu1/d;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu1/i;->p:Z

    iput-object p3, p0, Lu1/i;->l:Lu1/l;

    iput-object p0, p3, Lu1/l;->b:Lu1/k;

    new-instance p2, Lm0/j;

    invoke-direct {p2}, Lm0/j;-><init>()V

    iput-object p2, p0, Lu1/i;->m:Lm0/j;

    const/high16 p3, 0x3f800000    # 1.0f

    float-to-double v0, p3

    iput-wide v0, p2, Lm0/j;->b:D

    iput-boolean p1, p2, Lm0/j;->c:Z

    const/high16 v0, 0x42480000    # 50.0f

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p2, Lm0/j;->a:D

    iput-boolean p1, p2, Lm0/j;->c:Z

    new-instance p1, Lm0/i;

    invoke-direct {p1, p0}, Lm0/i;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lu1/i;->n:Lm0/i;

    iput-object p2, p1, Lm0/i;->r:Lm0/j;

    iget p1, p0, Lu1/k;->h:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_0

    iput p3, p0, Lu1/k;->h:F

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

    iget-object v0, p0, Lu1/i;->l:Lu1/l;

    invoke-virtual {p0}, Lu1/k;->b()F

    move-result v1

    iget-object v2, v0, Lu1/l;->a:Lu1/d;

    invoke-virtual {v2}, Lu1/d;->a()V

    invoke-virtual {v0, p1, v1}, Lu1/l;->a(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lu1/i;->l:Lu1/l;

    iget-object v3, p0, Lu1/k;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3}, Lu1/l;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lu1/k;->b:Lu1/d;

    iget-object v0, v0, Lu1/d;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lu1/k;->j:I

    invoke-static {v0, v1}, Ly1/l;->I(II)I

    move-result v6

    iget-object v1, p0, Lu1/i;->l:Lu1/l;

    const/4 v4, 0x0

    iget v5, p0, Lu1/i;->o:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lu1/l;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(ZZZ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lu1/k;->f(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lu1/k;->c:Lu1/a;

    iget-object p3, p0, Lu1/k;->a:Landroid/content/Context;

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

    iput-boolean p2, p0, Lu1/i;->p:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu1/i;->p:Z

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v1, p2

    iget-object p0, p0, Lu1/i;->m:Lm0/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpg-float p2, v1, p3

    if-lez p2, :cond_1

    float-to-double p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    iput-wide p2, p0, Lm0/j;->a:D

    iput-boolean v0, p0, Lm0/j;->c:Z

    :goto_0
    return p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lu1/i;->l:Lu1/l;

    invoke-virtual {p0}, Lu1/l;->d()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lu1/i;->l:Lu1/l;

    invoke-virtual {p0}, Lu1/l;->e()I

    move-result p0

    return p0
.end method

.method public final jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lu1/i;->n:Lm0/i;

    invoke-virtual {v0}, Lm0/i;->b()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lu1/i;->o:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 7

    iget-boolean v0, p0, Lu1/i;->p:Z

    const v1, 0x461c4000    # 10000.0f

    iget-object v2, p0, Lu1/i;->n:Lm0/i;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lm0/i;->b()V

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lu1/i;->o:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto/16 :goto_0

    :cond_0
    iget p0, p0, Lu1/i;->o:F

    mul-float/2addr p0, v1

    iput p0, v2, Lm0/h;->b:F

    iput-boolean v3, v2, Lm0/h;->c:Z

    int-to-float p0, p1

    iget-boolean p1, v2, Lm0/h;->f:Z

    if-eqz p1, :cond_1

    iput p0, v2, Lm0/i;->s:F

    goto/16 :goto_0

    :cond_1
    iget-object p1, v2, Lm0/i;->r:Lm0/j;

    if-nez p1, :cond_2

    new-instance p1, Lm0/j;

    invoke-direct {p1, p0}, Lm0/j;-><init>(F)V

    iput-object p1, v2, Lm0/i;->r:Lm0/j;

    :cond_2
    iget-object p1, v2, Lm0/i;->r:Lm0/j;

    float-to-double v0, p0

    iput-wide v0, p1, Lm0/j;->i:D

    double-to-float p0, v0

    float-to-double v0, p0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v4, p0

    cmpl-double v4, v0, v4

    if-gtz v4, :cond_b

    iget v4, v2, Lm0/h;->g:F

    float-to-double v5, v4

    cmpg-double v0, v0, v5

    if-ltz v0, :cond_a

    iget v0, v2, Lm0/h;->i:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p1, Lm0/j;->d:D

    const-wide v5, 0x404f400000000000L    # 62.5

    mul-double/2addr v0, v5

    iput-wide v0, p1, Lm0/j;->e:D

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_9

    iget-boolean p1, v2, Lm0/h;->f:Z

    if-nez p1, :cond_8

    if-nez p1, :cond_8

    iput-boolean v3, v2, Lm0/h;->f:Z

    iget-boolean p1, v2, Lm0/h;->c:Z

    if-nez p1, :cond_3

    iget-object p1, v2, Lm0/h;->e:Lf0/g;

    iget-object v0, v2, Lm0/h;->d:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lf0/g;->b(Ljava/lang/Object;)F

    move-result p1

    iput p1, v2, Lm0/h;->b:F

    :cond_3
    iget p1, v2, Lm0/h;->b:F

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_7

    cmpg-float p0, p1, v4

    if-ltz p0, :cond_7

    sget-object p0, Lm0/d;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Lm0/d;

    invoke-direct {p1}, Lm0/d;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/d;

    iget-object p1, p0, Lm0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lm0/d;->d:Lm0/c;

    if-nez v0, :cond_5

    new-instance v0, Lm0/c;

    iget-object v1, p0, Lm0/d;->c:Landroidx/appcompat/view/menu/i;

    invoke-direct {v0, v1}, Lm0/c;-><init>(Landroidx/appcompat/view/menu/i;)V

    iput-object v0, p0, Lm0/d;->d:Lm0/c;

    :cond_5
    iget-object p0, p0, Lm0/d;->d:Lm0/c;

    invoke-virtual {p0}, Lm0/c;->e()V

    :cond_6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Starting value need to be in between min value and max value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_0
    return v3

    :cond_9
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animations may only be started on the main thread"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
