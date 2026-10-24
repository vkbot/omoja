.class public final Lw0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/preference/Preference;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/view/View;

.field public final d:Ljava/lang/String;

.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/widget/TextView;

.field public final g:Ljava/lang/String;

.field public final h:F

.field public final i:Z

.field public j:[I

.field public k:[I

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/f;->a:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lu0/a;->d:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw0/f;->d:Ljava/lang/String;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw0/f;->g:Ljava/lang/String;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lw0/f;->b:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x5

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lw0/f;->h:F

    const/16 p2, 0x25

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lw0/f;->i:Z

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw0/f;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/PreferenceViewHolder;)V
    .locals 12

    iget-object v0, p0, Lw0/f;->a:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lw0/f;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget v2, p0, Lw0/f;->h:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_1
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Lw0/f;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v2, p0, Lw0/f;->c:Landroid/view/View;

    iget-object v4, p0, Lw0/f;->j:[I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    aget v9, v4, v3

    aget v10, v4, v7

    aget v11, v4, v6

    aget v4, v4, v5

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v9, v10, v11, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lw0/f;->c:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v8, p0, Lw0/f;->j:[I

    goto :goto_0

    :cond_3
    filled-new-array {v9, v10, v11, v4}, [I

    move-result-object v2

    iput-object v2, p0, Lw0/f;->j:[I

    :cond_4
    :goto_0
    iget-object v2, p0, Lw0/f;->k:[I

    if-eqz v2, :cond_6

    aget v4, v2, v3

    aget v9, v2, v7

    aget v6, v2, v6

    aget v2, v2, v5

    iget-object v5, p0, Lw0/f;->c:Landroid/view/View;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v4, v9, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    iput-object v8, p0, Lw0/f;->k:[I

    goto :goto_1

    :cond_5
    filled-new-array {v4, v9, v6, v2}, [I

    move-result-object v2

    iput-object v2, p0, Lw0/f;->k:[I

    :cond_6
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lw0/f;->c:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lw0/f;->c:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_7
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lw0/f;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw0/f;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lw0/f;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw0/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lw0/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lw0/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw0/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_9
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lw0/f;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lw0/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw0/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_a
    iget-object v0, p0, Lw0/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lw0/f;->e:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_c

    iget-object p0, p0, Lw0/f;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method
