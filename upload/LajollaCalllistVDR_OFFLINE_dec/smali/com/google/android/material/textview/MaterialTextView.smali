.class public Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, p3, v0}, Lb2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    sget v1, Lcom/google/android/material/R$attr;->textAppearanceLineHeightEnabled:I

    .line 6
    invoke-static {p1, v1}, Lv1/c;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 7
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 9
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 10
    invoke-virtual {v1, p2, v3, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 11
    sget v4, Lcom/google/android/material/R$styleable;->MaterialTextView_android_lineHeight:I

    sget v5, Lcom/google/android/material/R$styleable;->MaterialTextView_lineHeight:I

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/4 v5, -0x1

    move v6, v0

    move v7, v5

    :goto_2
    const/4 v8, 0x2

    if-ge v6, v8, :cond_2

    if-gez v7, :cond_2

    .line 12
    aget v7, v4, v6

    invoke-static {p1, v3, v7, v5}, Lv1/d;->c(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v7, v5, :cond_3

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-nez v2, :cond_4

    .line 14
    sget-object p1, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 15
    invoke-virtual {v1, p2, p1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 16
    sget p2, Lcom/google/android/material/R$styleable;->MaterialTextView_android_textAppearance:I

    .line 17
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p2, v5, :cond_4

    .line 19
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/textview/MaterialTextView;->d(ILandroid/content/res/Resources$Theme;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final d(ILandroid/content/res/Resources$Theme;)V
    .locals 5

    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_lineHeight:I

    sget v1, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_lineHeight:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    if-gez v3, :cond_0

    aget v3, v0, v2

    invoke-static {p2, p1, v3, v1}, Lv1/d;->c(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz v3, :cond_1

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setLineHeight(I)V

    :cond_1
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    sget v0, Lcom/google/android/material/R$attr;->textAppearanceLineHeightEnabled:I

    invoke-static {p1, v0}, Lv1/c;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/textview/MaterialTextView;->d(ILandroid/content/res/Resources$Theme;)V

    :cond_2
    return-void
.end method
