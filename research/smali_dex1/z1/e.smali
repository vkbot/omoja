.class public final Lz1/e;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:F

.field public final synthetic d:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/github/clans/fab/FloatingActionButton;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lz1/e;->d:Lcom/github/clans/fab/FloatingActionButton;

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
    iput-object v0, p0, Lz1/e;->a:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance v2, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lz1/e;->b:Landroid/graphics/Paint;

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
    iget v1, p1, Lcom/github/clans/fab/FloatingActionButton;->h:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/github/clans/fab/FloatingActionButton;->W:Landroid/graphics/PorterDuffXfermode;

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
    if-nez v1, :cond_3b

    .line 45
    .line 46
    iget v1, p1, Lcom/github/clans/fab/FloatingActionButton;->e:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    iget v2, p1, Lcom/github/clans/fab/FloatingActionButton;->f:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    iget v3, p1, Lcom/github/clans/fab/FloatingActionButton;->g:I

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    iget v4, p1, Lcom/github/clans/fab/FloatingActionButton;->d:I

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 58
    .line 59
    .line 60
    :cond_3b
    invoke-static {p1}, Lcom/github/clans/fab/FloatingActionButton;->a(Lcom/github/clans/fab/FloatingActionButton;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    div-int/lit8 v0, v0, 0x2

    .line 65
    .line 66
    int-to-float v0, v0

    .line 67
    iput v0, p0, Lz1/e;->c:F

    .line 68
    .line 69
    iget-boolean v1, p1, Lcom/github/clans/fab/FloatingActionButton;->u:Z

    .line 70
    .line 71
    if-eqz v1, :cond_52

    .line 72
    .line 73
    iget-boolean v1, p1, Lcom/github/clans/fab/FloatingActionButton;->U:Z

    .line 74
    .line 75
    if-eqz v1, :cond_52

    .line 76
    .line 77
    iget p1, p1, Lcom/github/clans/fab/FloatingActionButton;->v:I

    .line 78
    .line 79
    int-to-float p1, p1

    .line 80
    add-float/2addr v0, p1

    .line 81
    iput v0, p0, Lz1/e;->c:F

    .line 82
    .line 83
    :cond_52
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/github/clans/fab/FloatingActionButton;->W:Landroid/graphics/PorterDuffXfermode;

    .line 2
    .line 3
    iget-object v0, p0, Lz1/e;->d:Lcom/github/clans/fab/FloatingActionButton;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    div-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    div-int/lit8 v2, v2, 0x2

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    iget-object v3, p0, Lz1/e;->a:Landroid/graphics/Paint;

    .line 20
    .line 21
    iget v4, p0, Lz1/e;->c:F

    .line 22
    .line 23
    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    div-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    int-to-float v1, v1

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    div-int/lit8 v0, v0, 0x2

    .line 38
    .line 39
    int-to-float v0, v0

    .line 40
    iget-object v2, p0, Lz1/e;->b:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final getOpacity()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final setAlpha(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 1
    return-void
.end method
