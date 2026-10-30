.class public final Lz1/k;
.super Landroid/widget/TextView;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final t:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lcom/github/clans/fab/FloatingActionButton;

.field public o:Landroid/view/animation/Animation;

.field public p:Landroid/view/animation/Animation;

.field public q:Z

.field public r:Z

.field public s:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 2
    .line 3
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lz1/k;->t:Landroid/graphics/PorterDuffXfermode;

    .line 9
    .line 10
    return-void
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setShadow(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lz1/k;->e:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lz1/k;->b:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lz1/k;->c:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lz1/k;->d:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->f()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-boolean p1, p0, Lz1/k;->g:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/RippleDrawable;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x10100a7

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lz1/k;->k:I

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lz1/k;->b(I)Landroid/graphics/drawable/ShapeDrawable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [I

    .line 24
    .line 25
    iget v3, p0, Lz1/k;->j:I

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Lz1/k;->b(I)Landroid/graphics/drawable/ShapeDrawable;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    .line 35
    .line 36
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    new-array v1, v1, [I

    .line 39
    .line 40
    filled-new-array {v1}, [[I

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget v4, p0, Lz1/k;->l:I

    .line 45
    .line 46
    filled-new-array {v4}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v3, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-direct {v2, v3, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lz1/a;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-direct {v0, v1}, Lz1/a;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lz1/k;->f:Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    return-object v2
.end method

.method public final b(I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 2
    .line 3
    iget v1, p0, Lz1/k;->m:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    new-array v2, v2, [F

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput v1, v2, v3

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput v1, v2, v3

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    aput v1, v2, v3

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    aput v1, v2, v3

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    aput v1, v2, v3

    .line 24
    .line 25
    const/4 v3, 0x5

    .line 26
    aput v1, v2, v3

    .line 27
    .line 28
    const/4 v3, 0x6

    .line 29
    aput v1, v2, v3

    .line 30
    .line 31
    const/4 v3, 0x7

    .line 32
    aput v1, v2, v3

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v2, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    return-object v1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lz1/k;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lz1/k;->f:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lz1/k;->f:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 14
    .line 15
    const v2, 0x10100a7

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 21
    .line 22
    filled-new-array {v2}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 35
    .line 36
    const v1, 0x101009e

    .line 37
    .line 38
    .line 39
    filled-new-array {v1, v2}, [I

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    div-int/lit8 v1, v1, 0x2

    .line 51
    .line 52
    int-to-float v1, v1

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    div-int/lit8 v2, v2, 0x2

    .line 58
    .line 59
    int-to-float v2, v2

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lz1/k;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lz1/k;->f:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lz1/k;->f:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 19
    .line 20
    new-array v1, v2, [I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 31
    .line 32
    new-array v1, v2, [I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    div-int/lit8 v1, v1, 0x2

    .line 42
    .line 43
    int-to-float v1, v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    div-int/lit8 v2, v2, 0x2

    .line 49
    .line 50
    int-to-float v2, v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lz1/k;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 8
    .line 9
    new-instance v0, Lz1/j;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lz1/j;-><init>(Lz1/k;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lz1/k;->a()Landroid/graphics/drawable/RippleDrawable;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x2

    .line 19
    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    aput-object v0, v5, v2

    .line 22
    .line 23
    aput-object v4, v5, v1

    .line 24
    .line 25
    invoke-direct {v3, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lz1/k;->b:I

    .line 29
    .line 30
    iget v1, p0, Lz1/k;->c:I

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int v5, v1, v0

    .line 37
    .line 38
    iget v0, p0, Lz1/k;->b:I

    .line 39
    .line 40
    iget v1, p0, Lz1/k;->d:I

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int v6, v1, v0

    .line 47
    .line 48
    iget v0, p0, Lz1/k;->b:I

    .line 49
    .line 50
    iget v1, p0, Lz1/k;->c:I

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int v7, v1, v0

    .line 57
    .line 58
    iget v0, p0, Lz1/k;->b:I

    .line 59
    .line 60
    iget v1, p0, Lz1/k;->d:I

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int v8, v1, v0

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 74
    .line 75
    invoke-virtual {p0}, Lz1/k;->a()Landroid/graphics/drawable/RippleDrawable;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    aput-object v0, v1, v2

    .line 82
    .line 83
    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-direct {p0, v3}, Lz1/k;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lz1/k;->h:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lz1/k;->h:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-boolean p2, p0, Lz1/k;->g:Z

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget p2, p0, Lz1/k;->b:I

    .line 24
    .line 25
    iget v1, p0, Lz1/k;->c:I

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, v0

    .line 34
    :goto_0
    add-int/2addr v1, p1

    .line 35
    iget p1, p0, Lz1/k;->i:I

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lz1/k;->i:I

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-boolean p2, p0, Lz1/k;->g:Z

    .line 50
    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    iget p2, p0, Lz1/k;->b:I

    .line 54
    .line 55
    iget v0, p0, Lz1/k;->d:I

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v0, p2

    .line 62
    :cond_3
    add-int/2addr p1, v0

    .line 63
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz1/k;->n:Lcom/github/clans/fab/FloatingActionButton;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lz1/k;->n:Lcom/github/clans/fab/FloatingActionButton;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lz1/k;->d()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lz1/k;->n:Lcom/github/clans/fab/FloatingActionButton;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->i()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Lz1/k;->d()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lz1/k;->n:Lcom/github/clans/fab/FloatingActionButton;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->i()V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v0, p0, Lz1/k;->s:Landroid/view/GestureDetector;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    .line 52
    .line 53
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    return p1
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lz1/k;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public setFab(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz1/k;->n:Lcom/github/clans/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lz1/k;->setShadow(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHandleVisibilityChanges(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lz1/k;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz1/k;->p:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz1/k;->o:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-void
.end method

.method public setShowShadow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lz1/k;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUsingStyle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lz1/k;->q:Z

    .line 2
    .line 3
    return-void
.end method
