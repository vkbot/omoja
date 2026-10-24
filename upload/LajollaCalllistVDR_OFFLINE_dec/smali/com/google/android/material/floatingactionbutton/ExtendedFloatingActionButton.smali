.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "SourceFile"

# interfaces
.implements Lu/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;
    }
.end annotation


# static fields
.field public static final G:I

.field public static final H:Landroidx/appcompat/widget/o2;

.field public static final I:Landroidx/appcompat/widget/o2;

.field public static final J:Landroidx/appcompat/widget/o2;

.field public static final K:Landroidx/appcompat/widget/o2;


# instance fields
.field public A:I

.field public final B:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Landroid/content/res/ColorStateList;

.field public t:I

.field public final u:Lq1/e;

.field public final v:Lq1/e;

.field public final w:Lq1/g;

.field public final x:Lq1/f;

.field public final y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    sput v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:I

    new-instance v0, Landroidx/appcompat/widget/o2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "width"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->H:Landroidx/appcompat/widget/o2;

    new-instance v0, Landroidx/appcompat/widget/o2;

    const-string v2, "height"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->I:Landroidx/appcompat/widget/o2;

    new-instance v0, Landroidx/appcompat/widget/o2;

    const-string v2, "paddingStart"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->J:Landroidx/appcompat/widget/o2;

    new-instance v0, Landroidx/appcompat/widget/o2;

    const-string v2, "paddingEnd"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->K:Landroidx/appcompat/widget/o2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->extendedFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 3
    sget v9, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lb2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v10, 0x0

    .line 4
    iput v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    .line 5
    new-instance v1, Landroidx/appcompat/view/menu/i;

    const/16 v11, 0x1b

    invoke-direct {v1, v11}, Landroidx/appcompat/view/menu/i;-><init>(I)V

    .line 6
    new-instance v12, Lq1/g;

    invoke-direct {v12, v0, v1}, Lq1/g;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;)V

    iput-object v12, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lq1/g;

    .line 7
    new-instance v13, Lq1/f;

    invoke-direct {v13, v0, v1}, Lq1/f;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;)V

    iput-object v13, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lq1/f;

    const/4 v14, 0x1

    .line 8
    iput-boolean v14, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    .line 9
    iput-boolean v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Z

    .line 10
    iput-boolean v10, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 12
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v1, v15, v7}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    .line 13
    sget-object v3, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton:[I

    new-array v6, v10, [I

    move-object v1, v15

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/x;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 15
    sget v2, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_showMotionSpec:I

    .line 16
    invoke-static {v15, v1, v2}, Le1/f;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le1/f;

    move-result-object v2

    .line 17
    sget v3, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_hideMotionSpec:I

    .line 18
    invoke-static {v15, v1, v3}, Le1/f;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le1/f;

    move-result-object v3

    .line 19
    sget v4, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_extendMotionSpec:I

    .line 20
    invoke-static {v15, v1, v4}, Le1/f;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le1/f;

    move-result-object v4

    .line 21
    sget v5, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_shrinkMotionSpec:I

    .line 22
    invoke-static {v15, v1, v5}, Le1/f;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le1/f;

    move-result-object v5

    .line 23
    sget v6, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_collapsedSize:I

    const/4 v14, -0x1

    .line 24
    invoke-virtual {v1, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:I

    .line 25
    sget-object v6, Lh0/q0;->a:Ljava/util/WeakHashMap;

    .line 26
    invoke-static/range {p0 .. p0}, Lh0/a0;->f(Landroid/view/View;)I

    move-result v6

    .line 27
    iput v6, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:I

    .line 28
    invoke-static/range {p0 .. p0}, Lh0/a0;->e(Landroid/view/View;)I

    move-result v6

    .line 29
    iput v6, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:I

    .line 30
    new-instance v6, Landroidx/appcompat/view/menu/i;

    invoke-direct {v6, v11}, Landroidx/appcompat/view/menu/i;-><init>(I)V

    .line 31
    new-instance v11, Lq1/e;

    new-instance v14, Lq1/c;

    invoke-direct {v14, v0, v10}, Lq1/c;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)V

    const/4 v10, 0x1

    invoke-direct {v11, v0, v6, v14, v10}, Lq1/e;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;Lq1/c;Z)V

    iput-object v11, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lq1/e;

    .line 32
    new-instance v14, Lq1/e;

    new-instance v7, Lq1/c;

    invoke-direct {v7, v0, v10}, Lq1/c;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)V

    const/4 v10, 0x0

    invoke-direct {v14, v0, v6, v7, v10}, Lq1/e;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;Lq1/c;Z)V

    iput-object v14, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lq1/e;

    .line 33
    iput-object v2, v12, Lq1/a;->f:Le1/f;

    .line 34
    iput-object v3, v13, Lq1/a;->f:Le1/f;

    .line 35
    iput-object v4, v11, Lq1/a;->f:Le1/f;

    .line 36
    iput-object v5, v14, Lq1/a;->f:Le1/f;

    .line 37
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    sget-object v1, Ly1/n;->m:Ly1/j;

    move-object/from16 v2, p2

    .line 39
    invoke-static {v15, v2, v8, v9, v1}, Ly1/n;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILy1/c;)Ly1/m;

    move-result-object v1

    .line 40
    new-instance v2, Ly1/n;

    invoke-direct {v2, v1}, Ly1/n;-><init>(Ly1/m;)V

    .line 41
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Ly1/n;)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->F:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public static e(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lq1/a;)V
    .locals 4

    invoke-virtual {p1}, Lq1/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/c0;->c(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :goto_1
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {p1}, Lq1/a;->h()V

    invoke-virtual {p1}, Lq1/a;->g()V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Lq1/a;->a()Landroid/animation/AnimatorSet;

    move-result-object p0

    new-instance v0, Lq1/d;

    invoke-direct {v0, p1}, Lq1/d;-><init>(Lq1/a;)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p1, Lq1/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_4
    return-void
.end method


# virtual methods
.method public final f(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public getBehavior()Lu/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu/b;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    return-object p0
.end method

.method public getCollapsedPadding()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getCollapsedSize()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:I

    if-gez v0, :cond_0

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/a0;->f(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lh0/a0;->e(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getExtendMotionSpec()Le1/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lq1/e;

    iget-object p0, p0, Lq1/a;->f:Le1/f;

    return-object p0
.end method

.method public getHideMotionSpec()Le1/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lq1/f;

    iget-object p0, p0, Lq1/a;->f:Le1/f;

    return-object p0
.end method

.method public getShowMotionSpec()Le1/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lq1/g;

    iget-object p0, p0, Lq1/a;->f:Le1/f;

    return-object p0
.end method

.method public getShrinkMotionSpec()Le1/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lq1/e;

    iget-object p0, p0, Lq1/a;->f:Le1/f;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lq1/e;

    invoke-virtual {p0}, Lq1/e;->h()V

    :cond_0
    return-void
.end method

.method public setAnimateShowBeforeLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    return-void
.end method

.method public setExtendMotionSpec(Le1/f;)V
    .locals 0
    .param p1    # Le1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lq1/e;

    iput-object p1, p0, Lq1/a;->f:Le1/f;

    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le1/f;->b(Landroid/content/Context;I)Le1/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Le1/f;)V

    return-void
.end method

.method public setExtended(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lq1/e;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lq1/e;

    :goto_0
    invoke-virtual {p0}, Lq1/e;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lq1/e;->h()V

    return-void
.end method

.method public setHideMotionSpec(Le1/f;)V
    .locals 0
    .param p1    # Le1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lq1/f;

    iput-object p1, p0, Lq1/a;->f:Le1/f;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le1/f;->b(Landroid/content/Context;I)Le1/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Le1/f;)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Z

    if-nez p1, :cond_0

    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lh0/a0;->f(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:I

    invoke-static {p0}, Lh0/a0;->e(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:I

    :cond_0
    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->C:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Z

    if-nez p2, :cond_0

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:I

    iput p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:I

    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Le1/f;)V
    .locals 0
    .param p1    # Le1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lq1/g;

    iput-object p1, p0, Lq1/a;->f:Le1/f;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le1/f;->b(Landroid/content/Context;I)Le1/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Le1/f;)V

    return-void
.end method

.method public setShrinkMotionSpec(Le1/f;)V
    .locals 0
    .param p1    # Le1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lq1/e;

    iput-object p1, p0, Lq1/a;->f:Le1/f;

    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le1/f;->b(Landroid/content/Context;I)Le1/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Le1/f;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->F:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->F:Landroid/content/res/ColorStateList;

    return-void
.end method
