.class public final Landroidx/appcompat/widget/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/z0;


# instance fields
.field public final a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public c:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/view/Window$Callback;

.field public m:Z

.field public n:Landroidx/appcompat/widget/o;

.field public o:I

.field public p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 7

    sget v0, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/widget/a3;->o:I

    iput-object p1, p0, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/a3;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/a3;->j:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/appcompat/widget/a3;->i:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroidx/appcompat/widget/a3;->h:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/a3;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v5, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v5}, Landroidx/appcompat/widget/u2;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/u2;

    move-result-object v2

    sget v4, Landroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/u2;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/a3;->p:Landroid/graphics/drawable/Drawable;

    sget v4, Landroidx/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iput-boolean v3, p0, Landroidx/appcompat/widget/a3;->h:Z

    iput-object v4, p0, Landroidx/appcompat/widget/a3;->i:Ljava/lang/CharSequence;

    iget v3, p0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Landroidx/appcompat/widget/a3;->h:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lh0/q0;->k(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/u2;->k(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v3, p0, Landroidx/appcompat/widget/a3;->j:Ljava/lang/CharSequence;

    iget v4, p0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_2
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/u2;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    iput-object v3, p0, Landroidx/appcompat/widget/a3;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/a3;->b()V

    :cond_3
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/u2;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    iput-object v3, p0, Landroidx/appcompat/widget/a3;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/a3;->b()V

    :cond_4
    iget-object v3, p0, Landroidx/appcompat/widget/a3;->g:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/appcompat/widget/a3;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    iput-object v3, p0, Landroidx/appcompat/widget/a3;->g:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v6}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/widget/u2;->h(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/a3;->a(I)V

    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/a3;->d:Landroid/view/View;

    if-eqz v4, :cond_7

    iget v5, p0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iput-object v3, p0, Landroidx/appcompat/widget/a3;->d:Landroid/view/View;

    if-eqz v3, :cond_8

    iget v4, p0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_8

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    iget v3, p0, Landroidx/appcompat/widget/a3;->b:I

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/a3;->a(I)V

    :cond_9
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    iget-object v4, v2, Landroidx/appcompat/widget/u2;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/u2;->c(II)I

    move-result v3

    sget v5, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v2, v5, v4}, Landroidx/appcompat/widget/u2;->c(II)I

    move-result v4

    if-gez v3, :cond_b

    if-ltz v4, :cond_d

    :cond_b
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p1, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/widget/t1;

    if-nez v5, :cond_c

    new-instance v5, Landroidx/appcompat/widget/t1;

    invoke-direct {v5}, Landroidx/appcompat/widget/t1;-><init>()V

    iput-object v5, p1, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/widget/t1;

    :cond_c
    iget-object v5, p1, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/widget/t1;

    invoke-virtual {v5, v3, v4}, Landroidx/appcompat/widget/t1;->a(II)V

    :cond_d
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iput v3, p1, Landroidx/appcompat/widget/Toolbar;->l:I

    iget-object v5, p1, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_e

    invoke-virtual {v5, v4, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_e
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iput v3, p1, Landroidx/appcompat/widget/Toolbar;->m:I

    iget-object v5, p1, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_f

    invoke-virtual {v5, v4, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_f
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/widget/u2;->i(II)I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    :cond_10
    invoke-virtual {v2}, Landroidx/appcompat/widget/u2;->n()V

    iget v1, p0, Landroidx/appcompat/widget/a3;->o:I

    if-ne v0, v1, :cond_11

    goto :goto_3

    :cond_11
    iput v0, p0, Landroidx/appcompat/widget/a3;->o:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Landroidx/appcompat/widget/a3;->o:I

    if-nez v0, :cond_12

    goto :goto_2

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, p0, Landroidx/appcompat/widget/a3;->k:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Landroidx/appcompat/widget/a3;->o:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_3

    :cond_13
    iget-object v0, p0, Landroidx/appcompat/widget/a3;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_3
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/a3;->k:Ljava/lang/CharSequence;

    new-instance v0, Landroidx/appcompat/widget/d;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/d;-><init>(Landroidx/appcompat/widget/a3;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget v0, p0, Landroidx/appcompat/widget/a3;->b:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroidx/appcompat/widget/a3;->b:I

    if-eqz v0, :cond_9

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/a3;->k:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/a3;->o:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/a3;->k:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget v1, p0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/a3;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/a3;->p:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/widget/a3;->b()V

    :cond_5
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/appcompat/widget/a3;->i:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/appcompat/widget/a3;->j:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroidx/appcompat/widget/a3;->d:Landroid/view/View;

    if-eqz p0, :cond_9

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_8

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/a3;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/a3;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/a3;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/a3;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/a3;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
