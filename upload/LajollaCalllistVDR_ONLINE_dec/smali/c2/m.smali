.class public final Lc2/m;
.super Lc2/k;
.source "SourceFile"


# instance fields
.field public m:Lc2/l;

.field public n:Landroidx/appcompat/view/menu/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc2/d;Lc2/l;Landroidx/appcompat/view/menu/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc2/k;-><init>(Landroid/content/Context;Lc2/d;)V

    iput-object p3, p0, Lc2/m;->m:Lc2/l;

    iput-object p0, p3, Lc2/l;->b:Lc2/k;

    iput-object p4, p0, Lc2/m;->n:Landroidx/appcompat/view/menu/e;

    iput-object p0, p4, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lc2/m;->m:Lc2/l;

    invoke-virtual {p0}, Lc2/k;->b()F

    move-result v1

    iget-object v2, v0, Lc2/l;->a:Lc2/d;

    invoke-virtual {v2}, Lc2/d;->a()V

    invoke-virtual {v0, p1, v1}, Lc2/l;->a(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lc2/m;->m:Lc2/l;

    iget-object v7, p0, Lc2/k;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v7}, Lc2/l;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc2/m;->n:Landroidx/appcompat/view/menu/e;

    iget-object v2, v1, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast v2, [I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lc2/m;->m:Lc2/l;

    iget-object v1, v1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v1, [F

    mul-int/lit8 v4, v0, 0x2

    aget v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    aget v6, v1, v4

    aget v8, v2, v0

    move-object v1, v3

    move-object v2, p1

    move-object v3, v7

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lc2/l;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final f(ZZZ)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lc2/k;->f(ZZZ)Z

    move-result p2

    invoke-virtual {p0}, Lc2/k;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc2/m;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->c()V

    :cond_0
    iget-object v0, p0, Lc2/k;->d:Lc2/a;

    iget-object v1, p0, Lc2/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lc2/m;->n:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->s()V

    :cond_2
    :goto_0
    return p2
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lc2/m;->m:Lc2/l;

    invoke-virtual {v0}, Lc2/l;->d()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lc2/m;->m:Lc2/l;

    invoke-virtual {v0}, Lc2/l;->e()I

    move-result v0

    return v0
.end method
