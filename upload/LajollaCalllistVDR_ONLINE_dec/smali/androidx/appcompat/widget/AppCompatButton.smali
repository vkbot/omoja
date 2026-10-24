.class public Landroidx/appcompat/widget/AppCompatButton;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/b;


# instance fields
.field public final b:Landroidx/appcompat/widget/y;

.field public final c:Landroidx/appcompat/widget/t0;

.field public d:Landroidx/appcompat/widget/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    sget v0, Landroidx/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/u2;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/t2;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 5
    new-instance p1, Landroidx/appcompat/widget/y;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/y;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/y;

    .line 6
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/y;->e(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroidx/appcompat/widget/t0;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/t0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    .line 8
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/t0;->d(Landroid/util/AttributeSet;I)V

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/t0;->b()V

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e0;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->d:Landroidx/appcompat/widget/e0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/e0;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/e0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->d:Landroidx/appcompat/widget/e0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->d:Landroidx/appcompat/widget/e0;

    return-object v0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/t0;->b()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    iget v0, v0, Landroidx/appcompat/widget/y0;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    iget v0, v0, Landroidx/appcompat/widget/y0;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    iget v0, v0, Landroidx/appcompat/widget/y0;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    iget-object v0, v0, Landroidx/appcompat/widget/y0;->f:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    iget v0, v0, Landroidx/appcompat/widget/y0;->a:I

    return v0

    :cond_2
    return v1
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/l;->d(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    iget-object v0, v0, Landroidx/appcompat/widget/t0;->h:Landroidx/appcompat/widget/v2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/v2;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    iget-object v0, v0, Landroidx/appcompat/widget/t0;->h:Landroidx/appcompat/widget/v2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/v2;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz p1, :cond_0

    sget-boolean p2, Landroidx/core/widget/b;->a:Z

    if-nez p2, :cond_0

    iget-object p1, p1, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {p1}, Landroidx/appcompat/widget/y0;->a()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz p1, :cond_1

    sget-boolean p2, Landroidx/core/widget/b;->a:Z

    if-nez p2, :cond_1

    iget-object p1, p1, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {p1}, Landroidx/appcompat/widget/y0;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p1, Landroidx/appcompat/widget/y0;->a:I

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/widget/y0;->a()V

    :cond_1
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->c(Z)V

    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/t0;->g(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/t0;->h([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t0;->i(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/y;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/y;->f()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->g(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1    # Landroid/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p0}, Landroidx/core/widget/l;->e(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->d(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1    # [Landroid/text/InputFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e0;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/t0;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->b:Landroidx/appcompat/widget/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    iget-object v1, v0, Landroidx/appcompat/widget/t0;->h:Landroidx/appcompat/widget/v2;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/v2;

    invoke-direct {v1}, Landroidx/appcompat/widget/v2;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->h:Landroidx/appcompat/widget/v2;

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/t0;->h:Landroidx/appcompat/widget/v2;

    iput-object p1, v1, Landroidx/appcompat/widget/v2;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Landroidx/appcompat/widget/v2;->d:Z

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->b:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->c:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->d:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->e:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->f:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->g:Landroidx/appcompat/widget/v2;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t0;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    iget-object v1, v0, Landroidx/appcompat/widget/t0;->h:Landroidx/appcompat/widget/v2;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/v2;

    invoke-direct {v1}, Landroidx/appcompat/widget/v2;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->h:Landroidx/appcompat/widget/v2;

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/t0;->h:Landroidx/appcompat/widget/v2;

    iput-object p1, v1, Landroidx/appcompat/widget/v2;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Landroidx/appcompat/widget/v2;->c:Z

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->b:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->c:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->d:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->e:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->f:Landroidx/appcompat/widget/v2;

    iput-object v1, v0, Landroidx/appcompat/widget/t0;->g:Landroidx/appcompat/widget/v2;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t0;->b()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/t0;->e(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 2

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatButton;->c:Landroidx/appcompat/widget/t0;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, v1, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/y0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroidx/appcompat/widget/y0;->a:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/y0;->f(IF)V

    :cond_2
    :goto_1
    return-void
.end method
