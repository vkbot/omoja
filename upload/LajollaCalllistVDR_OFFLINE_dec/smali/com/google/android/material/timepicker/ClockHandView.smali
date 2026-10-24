.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:I

.field public final c:F

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/RectF;

.field public final f:I

.field public g:F

.field public h:Z

.field public i:D

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->materialClockStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->d:Landroid/graphics/Paint;

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:Landroid/graphics/RectF;

    .line 6
    sget-object v1, Lcom/google/android/material/R$styleable;->ClockHandView:[I

    sget v2, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker_Clock:I

    .line 7
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    sget p3, Lcom/google/android/material/R$styleable;->ClockHandView_materialCircleRadius:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:I

    .line 9
    sget p3, Lcom/google/android/material/R$styleable;->ClockHandView_selectorSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 11
    sget v2, Lcom/google/android/material/R$dimen;->material_clock_hand_stroke_width:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:I

    .line 12
    sget v2, Lcom/google/android/material/R$dimen;->material_clock_hand_center_dot_radius:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:F

    .line 13
    sget p3, Lcom/google/android/material/R$styleable;->ClockHandView_clockHandColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x0

    .line 16
    invoke-virtual {p0, p3}, Lcom/google/android/material/timepicker/ClockHandView;->a(F)V

    .line 17
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 18
    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x2

    .line 19
    invoke-static {p0, p1}, Lh0/z;->s(Landroid/view/View;I)V

    .line 20
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->b(F)V

    return-void
.end method

.method public final b(F)V
    .locals 5

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:F

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:D

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:I

    int-to-float v1, v1

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:I

    int-to-float v0, v0

    sub-float v3, v2, v0

    sub-float v4, v1, v0

    add-float/2addr v2, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/d;

    check-cast v1, Lcom/google/android/material/timepicker/ClockFaceView;

    iget v2, v1, Lcom/google/android/material/timepicker/ClockFaceView;->F:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iput p1, v1, Lcom/google/android/material/timepicker/ClockFaceView;->F:F

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->r()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v8

    int-to-float v9, v0

    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:I

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v9

    iget-object v10, p0, Lcom/google/android/material/timepicker/ClockHandView;->d:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:I

    int-to-float v5, v4

    invoke-virtual {p1, v2, v3, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-wide v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget-wide v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:I

    sub-int/2addr v7, v4

    int-to-float v4, v7

    float-to-double v11, v4

    mul-double/2addr v5, v11

    double-to-int v4, v5

    add-int/2addr v1, v4

    int-to-float v5, v1

    mul-double/2addr v11, v2

    double-to-int v1, v11

    add-int/2addr v0, v1

    int-to-float v6, v0

    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:I

    int-to-float v0, v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v2, p1

    move v3, v8

    move v4, v9

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget p0, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:F

    invoke-virtual {p1, v8, v9, p0, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:F

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(F)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    move v0, v4

    move v5, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:Z

    move v5, v4

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:Z

    move v5, v3

    move v0, v4

    :goto_0
    iget-boolean v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v2, v7

    sub-float/2addr v1, v2

    float-to-double v1, v1

    int-to-float v7, v8

    sub-float/2addr p1, v7

    float-to-double v7, p1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int p1, v1

    add-int/lit8 p1, p1, 0x5a

    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x168

    :cond_2
    iget v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:F

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(F)V

    :goto_2
    move v4, v3

    :cond_6
    or-int p1, v6, v4

    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:Z

    return v3
.end method
