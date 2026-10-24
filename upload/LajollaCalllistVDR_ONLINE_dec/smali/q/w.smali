.class public final Lq/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final b:Lq/x;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq/x;Landroid/content/res/XmlResourceParser;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lq/w;->c:I

    const/16 v0, 0x11

    iput v0, p0, Lq/w;->d:I

    iput-object p2, p0, Lq/w;->b:Lq/x;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Landroidx/constraintlayout/widget/R$styleable;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->OnClick_targetId:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lq/w;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lq/w;->c:I

    goto :goto_1

    :cond_0
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->OnClick_clickAction:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Lq/w;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lq/w;->d:I

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILq/x;)V
    .locals 7

    iget v0, p0, Lq/w;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OnClick could not find id "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p3, Lq/x;->d:I

    iget p3, p3, Lq/x;->c:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget v1, p0, Lq/w;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    if-ne p2, v0, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    and-int/lit16 v6, v1, 0x100

    if-eqz v6, :cond_4

    if-ne p2, v0, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    or-int/2addr v5, v6

    if-eqz v2, :cond_5

    if-ne p2, v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    or-int/2addr v0, v5

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_6

    if-ne p2, p3, :cond_6

    move v2, v3

    goto :goto_4

    :cond_6
    move v2, v4

    :goto_4
    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    if-ne p2, p3, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    or-int p2, v0, v3

    if-eqz p2, :cond_8

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method public final b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lq/w;->c:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " (*)  could not find id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget-object p1, p0, Lq/w;->b:Lq/x;

    iget-object v0, p1, Lq/x;->j:Landroidx/constraintlayout/motion/widget/c;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-boolean v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p1, Lq/x;->d:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v2, v4, :cond_4

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget p1, p1, Lq/x;->c:I

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    :cond_1
    iget-object v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/b;->d:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G(II)V

    :goto_0
    return-void

    :cond_3
    new-instance v2, Lq/x;

    iget-object v4, p1, Lq/x;->j:Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v2, v4, p1}, Lq/x;-><init>(Landroidx/constraintlayout/motion/widget/c;Lq/x;)V

    iput v0, v2, Lq/x;->d:I

    iget p1, p1, Lq/x;->c:I

    iput p1, v2, Lq/x;->c:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    iput-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    return-void

    :cond_4
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget v2, p0, Lq/w;->d:I

    and-int/lit8 v6, v2, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_6

    and-int/lit16 v9, v2, 0x100

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    move v9, v8

    goto :goto_2

    :cond_6
    :goto_1
    move v9, v7

    :goto_2
    and-int/lit8 v10, v2, 0x10

    if-nez v10, :cond_8

    and-int/lit16 v11, v2, 0x1000

    if-eqz v11, :cond_7

    goto :goto_3

    :cond_7
    move v11, v8

    goto :goto_4

    :cond_8
    :goto_3
    move v11, v7

    :goto_4
    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    move v12, v7

    goto :goto_5

    :cond_9
    move v12, v8

    :goto_5
    if-eqz v12, :cond_d

    if-eq v0, p1, :cond_a

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    :cond_a
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v12

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v13

    if-eq v12, v13, :cond_c

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    goto :goto_6

    :cond_b
    move v11, v8

    goto :goto_7

    :cond_c
    :goto_6
    move v9, v8

    :cond_d
    :goto_7
    if-ne p1, v0, :cond_e

    goto :goto_8

    :cond_e
    iget v0, p1, Lq/x;->c:I

    iget v12, p1, Lq/x;->d:I

    if-ne v12, v4, :cond_f

    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-eq v4, v0, :cond_10

    goto :goto_8

    :cond_f
    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-eq v4, v12, :cond_11

    if-ne v4, v0, :cond_10

    goto :goto_8

    :cond_10
    move v7, v8

    :cond_11
    :goto_8
    if-eqz v7, :cond_15

    if-eqz v9, :cond_12

    if-eqz v6, :cond_12

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    iput-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    if-eqz v11, :cond_13

    if-eqz v10, :cond_13

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    goto :goto_9

    :cond_13
    if-eqz v9, :cond_14

    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_14

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_9

    :cond_14
    if-eqz v11, :cond_15

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_15

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_15
    :goto_9
    return-void
.end method
