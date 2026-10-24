.class public final Landroidx/appcompat/app/k;
.super Landroidx/appcompat/app/c0;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final c:Landroidx/appcompat/app/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Landroidx/appcompat/app/k;->f(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/c0;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroidx/appcompat/app/i;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/i;-><init>(Landroid/content/Context;Landroidx/appcompat/app/c0;Landroid/view/Window;)V

    iput-object p1, p0, Landroidx/appcompat/app/k;->c:Landroidx/appcompat/app/i;

    return-void
.end method

.method public static f(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroidx/appcompat/R$attr;->alertDialogTheme:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/c0;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/app/k;->c:Landroidx/appcompat/app/i;

    iget-object v1, v0, Landroidx/appcompat/app/i;->b:Landroidx/appcompat/app/c0;

    iget v2, v0, Landroidx/appcompat/app/i;->r:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/c0;->setContentView(I)V

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    iget-object v2, v0, Landroidx/appcompat/app/i;->c:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v3, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Landroidx/appcompat/R$id;->customPanel:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/high16 v6, 0x20000

    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    sget v7, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v8, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget v9, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v7, v3}, Landroidx/appcompat/app/i;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v8, v4}, Landroidx/appcompat/app/i;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v9, v5}, Landroidx/appcompat/app/i;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    sget v7, Landroidx/appcompat/R$id;->scrollView:I

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    iput-object v7, v0, Landroidx/appcompat/app/i;->i:Landroidx/core/widget/NestedScrollView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v7, v0, Landroidx/appcompat/app/i;->i:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7, v8}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v7, 0x102000b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Landroidx/appcompat/app/i;->n:Landroid/widget/TextView;

    const/4 v9, -0x1

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Landroidx/appcompat/app/i;->i:Landroidx/core/widget/NestedScrollView;

    iget-object v10, v0, Landroidx/appcompat/app/i;->n:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, v0, Landroidx/appcompat/app/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroidx/appcompat/app/i;->i:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v10, v0, Landroidx/appcompat/app/i;->i:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v11, v0, Landroidx/appcompat/app/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v11, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v7, 0x1020019

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v0, Landroidx/appcompat/app/i;->f:Landroid/widget/Button;

    iget-object v10, v0, Landroidx/appcompat/app/i;->x:Landroidx/appcompat/app/c;

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_2

    iget-object v11, v0, Landroidx/appcompat/app/i;->f:Landroid/widget/Button;

    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    move v11, v8

    goto :goto_1

    :cond_2
    iget-object v11, v0, Landroidx/appcompat/app/i;->f:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v0, Landroidx/appcompat/app/i;->f:Landroid/widget/Button;

    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    move v11, v12

    :goto_1
    const v13, 0x102001a

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    iput-object v13, v0, Landroidx/appcompat/app/i;->g:Landroid/widget/Button;

    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v0, Landroidx/appcompat/app/i;->g:Landroid/widget/Button;

    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v13, v0, Landroidx/appcompat/app/i;->g:Landroid/widget/Button;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v0, Landroidx/appcompat/app/i;->g:Landroid/widget/Button;

    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v11, v11, 0x2

    :goto_2
    const v13, 0x102001b

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    iput-object v13, v0, Landroidx/appcompat/app/i;->h:Landroid/widget/Button;

    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Landroidx/appcompat/app/i;->h:Landroid/widget/Button;

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v10, v0, Landroidx/appcompat/app/i;->h:Landroid/widget/Button;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Landroidx/appcompat/app/i;->h:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v11, v11, 0x4

    :goto_3
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    iget-object v13, v0, Landroidx/appcompat/app/i;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    sget v14, Landroidx/appcompat/R$attr;->alertDialogCenterButtons:I

    invoke-virtual {v13, v14, v10, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v10, Landroid/util/TypedValue;->data:I

    if-eqz v10, :cond_5

    move v10, v12

    goto :goto_4

    :cond_5
    move v10, v8

    :goto_4
    const/4 v13, 0x2

    if-eqz v10, :cond_8

    if-ne v11, v12, :cond_6

    iget-object v10, v0, Landroidx/appcompat/app/i;->f:Landroid/widget/Button;

    invoke-static {v10}, Landroidx/appcompat/app/i;->a(Landroid/widget/Button;)V

    goto :goto_5

    :cond_6
    if-ne v11, v13, :cond_7

    iget-object v10, v0, Landroidx/appcompat/app/i;->g:Landroid/widget/Button;

    invoke-static {v10}, Landroidx/appcompat/app/i;->a(Landroid/widget/Button;)V

    goto :goto_5

    :cond_7
    const/4 v10, 0x4

    if-ne v11, v10, :cond_8

    iget-object v10, v0, Landroidx/appcompat/app/i;->h:Landroid/widget/Button;

    invoke-static {v10}, Landroidx/appcompat/app/i;->a(Landroid/widget/Button;)V

    :cond_8
    :goto_5
    if-eqz v11, :cond_9

    move v10, v12

    goto :goto_6

    :cond_9
    move v10, v8

    :goto_6
    if-nez v10, :cond_a

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v10, v0, Landroidx/appcompat/app/i;->o:Landroid/view/View;

    if-eqz v10, :cond_b

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v11, v0, Landroidx/appcompat/app/i;->o:Landroid/view/View;

    invoke-virtual {v3, v11, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget v10, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_b
    const v10, 0x1020006

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v0, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    iget-object v10, v0, Landroidx/appcompat/app/i;->d:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v12

    if-eqz v10, :cond_e

    iget-boolean v10, v0, Landroidx/appcompat/app/i;->v:Z

    if-eqz v10, :cond_e

    sget v10, Landroidx/appcompat/R$id;->alertTitle:I

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v0, Landroidx/appcompat/app/i;->m:Landroid/widget/TextView;

    iget-object v11, v0, Landroidx/appcompat/app/i;->d:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v10, v0, Landroidx/appcompat/app/i;->j:I

    if-eqz v10, :cond_c

    iget-object v11, v0, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_c
    iget-object v10, v0, Landroidx/appcompat/app/i;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_d

    iget-object v11, v0, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_d
    iget-object v10, v0, Landroidx/appcompat/app/i;->m:Landroid/widget/TextView;

    iget-object v11, v0, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    iget-object v14, v0, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    iget-object v15, v0, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    iget-object v7, v0, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v10, v11, v14, v15, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v7, v0, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_e
    sget v7, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Landroidx/appcompat/app/i;->l:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_f

    move v1, v12

    goto :goto_8

    :cond_f
    move v1, v8

    :goto_8
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_10

    move v7, v12

    goto :goto_9

    :cond_10
    move v7, v8

    :goto_9
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_11

    move v5, v12

    goto :goto_a

    :cond_11
    move v5, v8

    :goto_a
    if-nez v5, :cond_12

    sget v6, Landroidx/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    if-eqz v7, :cond_15

    iget-object v6, v0, Landroidx/appcompat/app/i;->i:Landroidx/core/widget/NestedScrollView;

    if-eqz v6, :cond_13

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_13
    iget-object v6, v0, Landroidx/appcompat/app/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v6, :cond_14

    sget v6, Landroidx/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_16

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_15
    sget v3, Landroidx/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    :goto_c
    iget-object v3, v0, Landroidx/appcompat/app/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    instance-of v6, v3, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v6, :cond_1a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_17

    if-nez v7, :cond_1a

    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    if-eqz v7, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    goto :goto_d

    :cond_18
    iget v10, v3, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    :goto_d
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    if-eqz v5, :cond_19

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    goto :goto_e

    :cond_19
    iget v14, v3, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    :goto_e
    invoke-virtual {v3, v6, v10, v11, v14}, Landroid/view/View;->setPadding(IIII)V

    :cond_1a
    if-nez v1, :cond_1e

    iget-object v1, v0, Landroidx/appcompat/app/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_1b

    goto :goto_f

    :cond_1b
    iget-object v1, v0, Landroidx/appcompat/app/i;->i:Landroidx/core/widget/NestedScrollView;

    :goto_f
    if-eqz v1, :cond_1e

    if-eqz v5, :cond_1c

    move v8, v13

    :cond_1c
    or-int v3, v7, v8

    sget v5, Landroidx/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Landroidx/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v6, Lh0/q0;->a:Ljava/util/WeakHashMap;

    const/4 v6, 0x3

    invoke-static {v1, v3, v6}, Lh0/g0;->d(Landroid/view/View;II)V

    if-eqz v5, :cond_1d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    if-eqz v2, :cond_1e

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    iget-object v1, v0, Landroidx/appcompat/app/i;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_1f

    iget-object v2, v0, Landroidx/appcompat/app/i;->p:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Landroidx/appcompat/app/i;->q:I

    if-le v0, v9, :cond_1f

    invoke-virtual {v1, v0, v12}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1f
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->c:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->i:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->h(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->c:Landroidx/appcompat/app/i;

    iget-object v0, v0, Landroidx/appcompat/app/i;->i:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->h(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/c0;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/appcompat/app/k;->c:Landroidx/appcompat/app/i;

    iput-object p1, p0, Landroidx/appcompat/app/i;->d:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/appcompat/app/i;->m:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
