.class public abstract Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroidx/appcompat/view/menu/i;

.field public e:Lm1/f;

.field public f:Lm1/f;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly1/a;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Ly1/a;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ly1/a;->a:Landroid/content/Context;

    iput-object p2, p0, Ly1/a;->d:Landroidx/appcompat/view/menu/i;

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/AnimatorSet;
    .locals 2

    iget-object v0, p0, Ly1/a;->f:Lm1/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly1/a;->e:Lm1/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Ly1/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ly1/a;->c()I

    move-result v1

    invoke-static {v0, v1}, Lm1/f;->b(Landroid/content/Context;I)Lm1/f;

    move-result-object v0

    iput-object v0, p0, Ly1/a;->e:Lm1/f;

    :cond_1
    iget-object v0, p0, Ly1/a;->e:Lm1/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0, v0}, Ly1/a;->b(Lm1/f;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lm1/f;)Landroid/animation/AnimatorSet;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Ly1/a;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v1, v3, v2}, Lm1/f;->d(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p1, v1, v3, v2}, Lm1/f;->d(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p1, v1, v3, v2}, Lm1/f;->d(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->I:Landroidx/appcompat/widget/r2;

    invoke-virtual {p1, v1, v3, v2}, Lm1/f;->d(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->J:Landroidx/appcompat/widget/r2;

    invoke-virtual {p1, v1, v3, v2}, Lm1/f;->d(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "paddingStart"

    invoke-virtual {p1, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->K:Landroidx/appcompat/widget/r2;

    invoke-virtual {p1, v1, v3, v2}, Lm1/f;->d(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "paddingEnd"

    invoke-virtual {p1, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->L:Landroidx/appcompat/widget/r2;

    invoke-virtual {p1, v1, v3, v2}, Lm1/f;->d(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "labelOpacity"

    invoke-virtual {p1, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lw0/b;

    invoke-direct {v2, p0}, Lw0/b;-><init>(Ly1/a;)V

    invoke-virtual {p1, v1, v3, v2}, Lm1/f;->d(Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lm1/b;->a(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public abstract c()I
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ly1/a;->d:Landroidx/appcompat/view/menu/i;

    iput-object v0, v1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f(Landroid/animation/Animator;)V
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()Z
.end method
