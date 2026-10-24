.class public Landroidx/constraintlayout/widget/Constraints;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public a:Lt/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "Constraints"

    const-string p2, " ################# init"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "Constraints"

    const-string p2, " ################# init"

    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lt/o;

    invoke-direct {p0}, Lt/o;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lt/o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lt/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lt/e;

    invoke-direct {p0, p1}, Lt/e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getConstraintSet()Lt/n;
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Lt/n;

    if-nez v0, :cond_0

    new-instance v0, Lt/n;

    invoke-direct {v0}, Lt/n;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Lt/n;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Lt/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, v0, Lt/n;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lt/o;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    iget-boolean v7, v0, Lt/n;->e:Z

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lt/i;

    invoke-direct {v8}, Lt/i;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt/i;

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    instance-of v8, v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v8, :cond_5

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v7, v6, v5}, Lt/i;->d(ILt/o;)V

    instance-of v8, v4, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_5

    iget-object v8, v7, Lt/i;->e:Lt/j;

    const/4 v9, 0x1

    iput v9, v8, Lt/j;->i0:I

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v9

    iput v9, v8, Lt/j;->g0:I

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object v9

    iput-object v9, v8, Lt/j;->j0:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v4

    iput v4, v8, Lt/j;->h0:I

    :cond_5
    invoke-virtual {v7, v6, v5}, Lt/i;->d(ILt/o;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Lt/n;

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    return-void
.end method
