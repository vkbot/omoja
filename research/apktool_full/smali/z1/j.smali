.class public final Lz1/j;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final synthetic c:Lz1/k;


# direct methods
.method public constructor <init>(Lz1/k;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lz1/j;->c:Lz1/k;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lz1/j;->a:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance v2, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lz1/j;->b:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lz1/k;->j:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lz1/k;->t:Landroid/graphics/PorterDuffXfermode;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    iget v1, p1, Lz1/k;->b:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    iget v2, p1, Lz1/k;->c:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    iget v3, p1, Lz1/k;->d:I

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    iget p1, p1, Lz1/k;->e:I

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lz1/j;->c:Lz1/k;

    .line 4
    .line 5
    iget v2, v1, Lz1/k;->b:I

    .line 6
    .line 7
    iget v3, v1, Lz1/k;->c:I

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    add-int/2addr v3, v2

    .line 14
    int-to-float v2, v3

    .line 15
    iget v3, v1, Lz1/k;->b:I

    .line 16
    .line 17
    iget v4, v1, Lz1/k;->d:I

    .line 18
    .line 19
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int/2addr v4, v3

    .line 24
    int-to-float v3, v4

    .line 25
    iget v4, v1, Lz1/k;->h:I

    .line 26
    .line 27
    int-to-float v4, v4

    .line 28
    iget v5, v1, Lz1/k;->i:I

    .line 29
    .line 30
    int-to-float v5, v5

    .line 31
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 32
    .line 33
    .line 34
    iget v2, v1, Lz1/k;->m:I

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    iget-object v3, p0, Lz1/j;->a:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    iget v1, v1, Lz1/k;->m:I

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    iget-object v2, p0, Lz1/j;->b:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method
