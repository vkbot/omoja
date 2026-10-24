.class public final Lcom/google/android/material/textfield/e;
.super Lcom/google/android/material/textfield/m;
.source "SourceFile"


# instance fields
.field public final e:Landroidx/appcompat/widget/b2;

.field public final f:Landroidx/appcompat/widget/d2;

.field public final g:Lcom/google/android/material/textfield/a;

.field public final h:Lcom/google/android/material/textfield/b;

.field public i:Landroid/animation/AnimatorSet;

.field public j:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/m;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    new-instance p1, Landroidx/appcompat/widget/b2;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Landroidx/appcompat/widget/b2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/e;->e:Landroidx/appcompat/widget/b2;

    new-instance p1, Landroidx/appcompat/widget/d2;

    invoke-direct {p1, p2, p0}, Landroidx/appcompat/widget/d2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/e;->f:Landroidx/appcompat/widget/d2;

    new-instance p1, Lcom/google/android/material/textfield/a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/a;-><init>(Lcom/google/android/material/textfield/m;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/e;->g:Lcom/google/android/material/textfield/a;

    new-instance p1, Lcom/google/android/material/textfield/b;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/m;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/e;->h:Lcom/google/android/material/textfield/b;

    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/e;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget v0, p0, Lcom/google/android/material/textfield/m;->d:I

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/material/R$drawable;->mtrl_ic_cancel:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$string;->clear_text_end_icon_content_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroidx/appcompat/widget/y1;

    const/4 v2, 0x5

    invoke-direct {v0, v2, p0}, Landroidx/appcompat/widget/y1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->g0:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/google/android/material/textfield/e;->g:Lcom/google/android/material/textfield/a;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/a;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_1
    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->k0:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/google/android/material/textfield/e;->h:Lcom/google/android/material/textfield/b;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lm1/a;->d:Lo0/c;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/textfield/d;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/google/android/material/textfield/d;-><init>(Lcom/google/android/material/textfield/e;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v4, Lm1/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/google/android/material/textfield/d;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/google/android/material/textfield/d;-><init>(Lcom/google/android/material/textfield/e;I)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/google/android/material/textfield/e;->i:Landroid/animation/AnimatorSet;

    new-array v9, v0, [Landroid/animation/Animator;

    aput-object v1, v9, v8

    aput-object v2, v9, v3

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/e;->i:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/google/android/material/textfield/c;

    invoke-direct {v2, p0, v8}, Lcom/google/android/material/textfield/c;-><init>(Lcom/google/android/material/textfield/e;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/d;

    invoke-direct {v1, p0, v8}, Lcom/google/android/material/textfield/d;-><init>(Lcom/google/android/material/textfield/e;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/e;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/c;

    invoke-direct {v1, p0, v3}, Lcom/google/android/material/textfield/c;-><init>(Lcom/google/android/material/textfield/e;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/e;->e(Z)V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/e;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/google/android/material/textfield/e;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/e;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/e;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lcom/google/android/material/textfield/e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/e;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    :goto_1
    return-void
.end method
