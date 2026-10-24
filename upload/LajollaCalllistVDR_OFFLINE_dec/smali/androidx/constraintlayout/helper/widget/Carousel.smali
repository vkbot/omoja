.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "SourceFile"


# instance fields
.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public p:I

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:F

.field public w:I

.field public x:I

.field public y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->m:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    .line 5
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Z

    .line 6
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    const p1, 0x3f666666    # 0.9f

    .line 10
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:F

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 13
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:F

    .line 14
    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1, p0}, Landroidx/activity/b;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:I

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    .line 19
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Z

    .line 20
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    .line 21
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    .line 22
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    .line 23
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    const v0, 0x3f666666    # 0.9f

    .line 24
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:F

    const/4 v0, 0x4

    .line 25
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    const/4 v1, 0x1

    .line 26
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:F

    .line 28
    new-instance v1, Landroidx/activity/b;

    invoke-direct {v1, v0, p0}, Landroidx/activity/b;-><init>(ILjava/lang/Object;)V

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->m:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 32
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:I

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    .line 34
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Z

    .line 35
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    .line 36
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    .line 37
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    .line 38
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    const p3, 0x3f666666    # 0.9f

    .line 39
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:F

    const/4 p3, 0x4

    .line 40
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 42
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:F

    .line 43
    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p3, p0}, Landroidx/activity/b;-><init>(ILjava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->t(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    if-ne p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    if-ne p1, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:I

    :cond_1
    :goto_0
    iget-boolean p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    throw p1

    :cond_2
    throw p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentIndex()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->n:I

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->b:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->a:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x(I)Lr/x;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    iget-object v0, v0, Lr/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v0, :cond_1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/d;->c:I

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x(I)Lr/x;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lr/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz p0, :cond_2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->c:I

    :cond_2
    return-void
.end method

.method public setAdapter(Lp/a;)V
    .locals 0

    return-void
.end method

.method public final t(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_b

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_firstView:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:I

    goto/16 :goto_1

    :cond_0
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_backwardTransition:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    goto/16 :goto_1

    :cond_1
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_forwardTransition:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:I

    goto :goto_1

    :cond_2
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_emptyViewsBehavior:I

    if-ne v1, v2, :cond_3

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    goto :goto_1

    :cond_3
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_previousState:I

    if-ne v1, v2, :cond_4

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    goto :goto_1

    :cond_4
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_nextState:I

    if-ne v1, v2, :cond_5

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:I

    goto :goto_1

    :cond_5
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_dampeningFactor:I

    if-ne v1, v2, :cond_6

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:F

    goto :goto_1

    :cond_6
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUpMode:I

    if-ne v1, v2, :cond_7

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    goto :goto_1

    :cond_7
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_velocityThreshold:I

    if-ne v1, v2, :cond_8

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:F

    goto :goto_1

    :cond_8
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_infinite:I

    if-ne v1, v2, :cond_9

    iget-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:Z

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    return-void
.end method
