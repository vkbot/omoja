.class public final Ld4/l;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic m:I


# instance fields
.field public b:Ld4/i;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/view/View;

.field public f:Ld3/a;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:I

.field public final synthetic l:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .registers 6

    .line 1
    iput-object p1, p0, Ld4/l;->l:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Ld4/l;->k:I

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ld4/l;->f(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->f:I

    .line 13
    .line 14
    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->g:I

    .line 15
    .line 16
    iget v1, p1, Lcom/google/android/material/tabs/TabLayout;->h:I

    .line 17
    .line 18
    iget v2, p1, Lcom/google/android/material/tabs/TabLayout;->i:I

    .line 19
    .line 20
    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 21
    .line 22
    .line 23
    const/16 p2, 0x11

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p1, Lcom/google/android/material/tabs/TabLayout;->F:Z

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    xor-int/2addr p1, p2

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/16 p2, 0x3ea

    .line 43
    .line 44
    invoke-static {p1, p2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private getBadge()Ld3/a;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private getOrCreateBadge()Ld3/a;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ld3/a;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ld3/a;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Ld4/l;->f:Ld3/a;

    .line 15
    .line 16
    :cond_f
    invoke-virtual {p0}, Ld4/l;->c()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 20
    .line 21
    if-eqz v0, :cond_17

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_17
    const-string v0, "Unable to create badge"

    .line 25
    .line 26
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 2
    .line 3
    if-eqz v0, :cond_43

    .line 4
    .line 5
    if-eqz p1, :cond_43

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-eqz v1, :cond_1b

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 29
    .line 30
    new-instance v1, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, p1, v1}, Ld3/a;->i(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ld3/a;->d()Landroid/widget/FrameLayout;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_3a

    .line 50
    .line 51
    invoke-virtual {v0}, Ld3/a;->d()Landroid/widget/FrameLayout;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_41

    .line 59
    :cond_3a
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    :goto_41
    iput-object p1, p0, Ld4/l;->e:Landroid/view/View;

    .line 67
    .line 68
    :cond_43
    return-void
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 2
    .line 3
    if-eqz v0, :cond_3a

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v1, :cond_19

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 24
    .line 25
    .line 26
    :cond_19
    iget-object v0, p0, Ld4/l;->e:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v0, :cond_3a

    .line 29
    .line 30
    iget-object v1, p0, Ld4/l;->f:Ld3/a;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-nez v1, :cond_23

    .line 34
    .line 35
    goto :goto_38

    .line 36
    :cond_23
    invoke-virtual {v1}, Ld3/a;->d()Landroid/widget/FrameLayout;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_31

    .line 41
    .line 42
    invoke-virtual {v1}, Ld3/a;->d()Landroid/widget/FrameLayout;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_38

    .line 50
    :cond_31
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    :goto_38
    iput-object v2, p0, Ld4/l;->e:Landroid/view/View;

    .line 58
    .line 59
    :cond_3a
    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 2
    .line 3
    if-eqz v0, :cond_45

    .line 4
    .line 5
    iget-object v0, p0, Ld4/l;->g:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    invoke-virtual {p0}, Ld4/l;->b()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 14
    .line 15
    if-eqz v0, :cond_29

    .line 16
    .line 17
    iget-object v1, p0, Ld4/l;->b:Ld4/i;

    .line 18
    .line 19
    if-eqz v1, :cond_29

    .line 20
    .line 21
    iget-object v1, v1, Ld4/i;->b:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    if-eqz v1, :cond_29

    .line 24
    .line 25
    iget-object v1, p0, Ld4/l;->e:Landroid/view/View;

    .line 26
    .line 27
    if-eq v1, v0, :cond_25

    .line 28
    .line 29
    invoke-virtual {p0}, Ld4/l;->b()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ld4/l;->a(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    invoke-virtual {p0, v0}, Ld4/l;->d(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    iget-object v0, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 43
    .line 44
    if-eqz v0, :cond_42

    .line 45
    .line 46
    iget-object v1, p0, Ld4/l;->b:Ld4/i;

    .line 47
    .line 48
    if-eqz v1, :cond_42

    .line 49
    .line 50
    iget-object v1, p0, Ld4/l;->e:Landroid/view/View;

    .line 51
    .line 52
    if-eq v1, v0, :cond_3e

    .line 53
    .line 54
    invoke-virtual {p0}, Ld4/l;->b()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ld4/l;->a(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3e
    invoke-virtual {p0, v0}, Ld4/l;->d(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_42
    invoke-virtual {p0}, Ld4/l;->b()V

    .line 68
    .line 69
    .line 70
    :cond_45
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 2
    .line 3
    if-eqz v0, :cond_17

    .line 4
    .line 5
    iget-object v1, p0, Ld4/l;->e:Landroid/view/View;

    .line 6
    .line 7
    if-ne p1, v1, :cond_17

    .line 8
    .line 9
    new-instance v1, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p1, v1}, Ld3/a;->i(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method public final drawableStateChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Ld4/l;->j:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v1, :cond_18

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_18

    .line 17
    .line 18
    iget-object v1, p0, Ld4/l;->j:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    if-eqz v0, :cond_23

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Ld4/l;->l:Lcom/google/android/material/tabs/TabLayout;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 34
    .line 35
    .line 36
    :cond_23
    return-void
.end method

.method public final e()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ld4/l;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld4/l;->b:Ld4/i;

    .line 5
    .line 6
    if-eqz v0, :cond_1e

    .line 7
    .line 8
    iget-object v1, v0, Ld4/i;->g:Lcom/google/android/material/tabs/TabLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_18

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v1, v2, :cond_1e

    .line 18
    .line 19
    iget v0, v0, Ld4/i;->e:I

    .line 20
    .line 21
    if-ne v1, v0, :cond_1e

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_1f

    .line 25
    :cond_18
    const-string v0, "Tab not attached to a TabLayout"

    .line 26
    .line 27
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    :goto_1f
    invoke-virtual {p0, v0}, Ld4/l;->setSelected(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .registers 11

    .line 1
    iget-object v0, p0, Ld4/l;->l:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->v:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1f

    .line 7
    .line 8
    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Ld4/l;->j:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-eqz p1, :cond_21

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_21

    .line 21
    .line 22
    iget-object p1, p0, Ld4/l;->j:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    iput-object v2, p0, Ld4/l;->j:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    :cond_21
    :goto_21
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->o:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    if-eqz v1, :cond_71

    .line 46
    .line 47
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 50
    .line 51
    .line 52
    const v3, 0x3727c5ac    # 1.0E-5f

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 56
    .line 57
    .line 58
    const/4 v3, -0x1

    .line 59
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout;->o:Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    sget-object v4, Lx3/a;->d:[I

    .line 65
    .line 66
    sget-object v5, Lx3/a;->c:[I

    .line 67
    .line 68
    invoke-static {v3, v5}, Lx3/a;->a(Landroid/content/res/ColorStateList;[I)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    sget-object v6, Lx3/a;->b:[I

    .line 73
    .line 74
    invoke-static {v3, v6}, Lx3/a;->a(Landroid/content/res/ColorStateList;[I)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    .line 79
    .line 80
    filled-new-array {v4, v6, v8}, [[I

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    sget-object v6, Lx3/a;->a:[I

    .line 85
    .line 86
    invoke-static {v3, v6}, Lx3/a;->a(Landroid/content/res/ColorStateList;[I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    filled-new-array {v5, v7, v3}, [I

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-instance v5, Landroid/content/res/ColorStateList;

    .line 95
    .line 96
    invoke-direct {v5, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    .line 100
    .line 101
    iget-boolean v4, v0, Lcom/google/android/material/tabs/TabLayout;->J:Z

    .line 102
    .line 103
    if-eqz v4, :cond_69

    .line 104
    .line 105
    move-object p1, v2

    .line 106
    :cond_69
    if-eqz v4, :cond_6c

    .line 107
    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    move-object v2, v1

    .line 110
    :goto_6d
    invoke-direct {v3, v5, p1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    .line 112
    .line 113
    move-object p1, v3

    .line 114
    :cond_71
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final g()V
    .registers 6

    .line 1
    iget-object v0, p0, Ld4/l;->b:Ld4/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    iget-object v2, v0, Ld4/i;->f:Landroid/view/View;

    .line 7
    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move-object v2, v1

    .line 10
    :goto_9
    if-eqz v2, :cond_62

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v3, p0, :cond_2c

    .line 17
    .line 18
    if-eqz v3, :cond_18

    .line 19
    .line 20
    check-cast v3, Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_18
    iget-object v3, p0, Ld4/l;->g:Landroid/view/View;

    .line 26
    .line 27
    if-eqz v3, :cond_29

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_29

    .line 34
    .line 35
    check-cast v3, Landroid/view/ViewGroup;

    .line 36
    .line 37
    iget-object v4, p0, Ld4/l;->g:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_29
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :cond_2c
    iput-object v2, p0, Ld4/l;->g:Landroid/view/View;

    .line 46
    .line 47
    iget-object v3, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 48
    .line 49
    const/16 v4, 0x8

    .line 50
    .line 51
    if-eqz v3, :cond_37

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :cond_37
    iget-object v3, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 57
    .line 58
    if-eqz v3, :cond_43

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    :cond_43
    const v1, 0x1020014

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v1, p0, Ld4/l;->h:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v1, :cond_56

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput v1, p0, Ld4/l;->k:I

    .line 86
    .line 87
    :cond_56
    const v1, 0x1020006

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/widget/ImageView;

    .line 95
    .line 96
    iput-object v1, p0, Ld4/l;->i:Landroid/widget/ImageView;

    .line 97
    .line 98
    goto :goto_6f

    .line 99
    :cond_62
    iget-object v2, p0, Ld4/l;->g:Landroid/view/View;

    .line 100
    .line 101
    if-eqz v2, :cond_6b

    .line 102
    .line 103
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Ld4/l;->g:Landroid/view/View;

    .line 107
    .line 108
    :cond_6b
    iput-object v1, p0, Ld4/l;->h:Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v1, p0, Ld4/l;->i:Landroid/widget/ImageView;

    .line 111
    .line 112
    :goto_6f
    iget-object v1, p0, Ld4/l;->g:Landroid/view/View;

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    if-nez v1, :cond_100

    .line 116
    .line 117
    iget-object v1, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 118
    .line 119
    if-nez v1, :cond_8e

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const v3, 0x7f0c003c

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Landroid/widget/ImageView;

    .line 137
    .line 138
    iput-object v1, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 139
    .line 140
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 141
    .line 142
    .line 143
    :cond_8e
    iget-object v1, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 144
    .line 145
    if-nez v1, :cond_b0

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const v3, 0x7f0c003d

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object v1, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    iput v1, p0, Ld4/l;->k:I

    .line 176
    .line 177
    :cond_b0
    iget-object v1, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 178
    .line 179
    iget-object v2, p0, Ld4/l;->l:Lcom/google/android/material/tabs/TabLayout;

    .line 180
    .line 181
    iget v3, v2, Lcom/google/android/material/tabs/TabLayout;->j:I

    .line 182
    .line 183
    invoke-static {v1, v3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_ca

    .line 191
    .line 192
    iget v1, v2, Lcom/google/android/material/tabs/TabLayout;->l:I

    .line 193
    .line 194
    const/4 v3, -0x1

    .line 195
    if-eq v1, v3, :cond_ca

    .line 196
    .line 197
    iget-object v3, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 198
    .line 199
    invoke-static {v3, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 200
    .line 201
    .line 202
    goto :goto_d1

    .line 203
    :cond_ca
    iget-object v1, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 204
    .line 205
    iget v3, v2, Lcom/google/android/material/tabs/TabLayout;->k:I

    .line 206
    .line 207
    invoke-static {v1, v3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 208
    .line 209
    .line 210
    :goto_d1
    iget-object v1, v2, Lcom/google/android/material/tabs/TabLayout;->m:Landroid/content/res/ColorStateList;

    .line 211
    .line 212
    if-eqz v1, :cond_da

    .line 213
    .line 214
    iget-object v2, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 217
    .line 218
    .line 219
    :cond_da
    iget-object v1, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 220
    .line 221
    iget-object v2, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 222
    .line 223
    const/4 v3, 0x1

    .line 224
    invoke-virtual {p0, v1, v2, v3}, Ld4/l;->h(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Ld4/l;->c()V

    .line 228
    .line 229
    .line 230
    iget-object v1, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 231
    .line 232
    if-nez v1, :cond_ea

    .line 233
    .line 234
    goto :goto_f2

    .line 235
    :cond_ea
    new-instance v2, Ld4/k;

    .line 236
    .line 237
    invoke-direct {v2, p0, v1}, Ld4/k;-><init>(Ld4/l;Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 241
    .line 242
    .line 243
    :goto_f2
    iget-object v1, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 244
    .line 245
    if-nez v1, :cond_f7

    .line 246
    .line 247
    goto :goto_10d

    .line 248
    :cond_f7
    new-instance v2, Ld4/k;

    .line 249
    .line 250
    invoke-direct {v2, p0, v1}, Ld4/k;-><init>(Ld4/l;Landroid/view/View;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 254
    .line 255
    .line 256
    goto :goto_10d

    .line 257
    :cond_100
    iget-object v1, p0, Ld4/l;->h:Landroid/widget/TextView;

    .line 258
    .line 259
    if-nez v1, :cond_108

    .line 260
    .line 261
    iget-object v3, p0, Ld4/l;->i:Landroid/widget/ImageView;

    .line 262
    .line 263
    if-eqz v3, :cond_10d

    .line 264
    .line 265
    :cond_108
    iget-object v3, p0, Ld4/l;->i:Landroid/widget/ImageView;

    .line 266
    .line 267
    invoke-virtual {p0, v1, v3, v2}, Ld4/l;->h(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 268
    .line 269
    .line 270
    :cond_10d
    :goto_10d
    if-eqz v0, :cond_11c

    .line 271
    .line 272
    iget-object v1, v0, Ld4/i;->d:Ljava/lang/CharSequence;

    .line 273
    .line 274
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-nez v1, :cond_11c

    .line 279
    .line 280
    iget-object v0, v0, Ld4/i;->d:Ljava/lang/CharSequence;

    .line 281
    .line 282
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    :cond_11c
    return-void
.end method

.method public getContentHeight()I
    .registers 10

    .line 1
    iget-object v0, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v2, p0, Ld4/l;->g:Landroid/view/View;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v4, v3, [Landroid/view/View;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v0, v4, v5

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v1, v4, v0

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    aput-object v2, v4, v1

    .line 18
    .line 19
    move v1, v5

    .line 20
    move v2, v1

    .line 21
    move v6, v2

    .line 22
    :goto_15
    if-ge v5, v3, :cond_43

    .line 23
    .line 24
    aget-object v7, v4, v5

    .line 25
    .line 26
    if-eqz v7, :cond_40

    .line 27
    .line 28
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-nez v8, :cond_40

    .line 33
    .line 34
    if-eqz v6, :cond_2c

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_30
    if-eqz v6, :cond_3b

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_3f

    .line 60
    :cond_3b
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :goto_3f
    move v6, v0

    .line 65
    :cond_40
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_15

    .line 68
    :cond_43
    sub-int/2addr v1, v2

    .line 69
    return v1
.end method

.method public getContentWidth()I
    .registers 10

    .line 1
    iget-object v0, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v2, p0, Ld4/l;->g:Landroid/view/View;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v4, v3, [Landroid/view/View;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v0, v4, v5

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v1, v4, v0

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    aput-object v2, v4, v1

    .line 18
    .line 19
    move v1, v5

    .line 20
    move v2, v1

    .line 21
    move v6, v2

    .line 22
    :goto_15
    if-ge v5, v3, :cond_43

    .line 23
    .line 24
    aget-object v7, v4, v5

    .line 25
    .line 26
    if-eqz v7, :cond_40

    .line 27
    .line 28
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-nez v8, :cond_40

    .line 33
    .line 34
    if-eqz v6, :cond_2c

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_30

    .line 45
    :cond_2c
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_30
    if-eqz v6, :cond_3b

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_3f

    .line 60
    :cond_3b
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :goto_3f
    move v6, v0

    .line 65
    :cond_40
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_15

    .line 68
    :cond_43
    sub-int/2addr v1, v2

    .line 69
    return v1
.end method

.method public getTab()Ld4/i;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ld4/l;->b:Ld4/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .registers 12

    .line 1
    iget-object v0, p0, Ld4/l;->b:Ld4/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_12

    .line 5
    .line 6
    iget-object v0, v0, Ld4/i;->b:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v0, :cond_12

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move-object v0, v1

    .line 20
    :goto_13
    iget-object v2, p0, Ld4/l;->l:Lcom/google/android/material/tabs/TabLayout;

    .line 21
    .line 22
    if-eqz v0, :cond_23

    .line 23
    .line 24
    iget-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->n:Landroid/content/res/ColorStateList;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->r:Landroid/graphics/PorterDuff$Mode;

    .line 30
    .line 31
    if-eqz v3, :cond_23

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    :cond_23
    iget-object v3, p0, Ld4/l;->b:Ld4/i;

    .line 37
    .line 38
    if-eqz v3, :cond_2a

    .line 39
    .line 40
    iget-object v3, v3, Ld4/i;->c:Ljava/lang/CharSequence;

    .line 41
    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move-object v3, v1

    .line 44
    :goto_2b
    const/16 v4, 0x8

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    if-eqz p2, :cond_42

    .line 48
    .line 49
    if-eqz v0, :cond_3c

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_42

    .line 61
    :cond_3c
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    :cond_42
    :goto_42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz p1, :cond_68

    .line 72
    .line 73
    if-nez v0, :cond_51

    .line 74
    .line 75
    iget-object v6, p0, Ld4/l;->b:Ld4/i;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const/4 v6, 0x1

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v6, v5

    .line 83
    :goto_52
    if-nez v0, :cond_56

    .line 84
    .line 85
    move-object v7, v3

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move-object v7, v1

    .line 88
    :goto_57
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    if-eqz v6, :cond_5e

    .line 92
    .line 93
    move v7, v5

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move v7, v4

    .line 96
    :goto_5f
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    if-nez v0, :cond_69

    .line 100
    .line 101
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move v6, v5

    .line 106
    :cond_69
    :goto_69
    if-eqz p3, :cond_ab

    .line 107
    .line 108
    if-eqz p2, :cond_ab

    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 115
    .line 116
    if-eqz v6, :cond_85

    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    if-nez p3, :cond_85

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-static {v4, p3}, Ls3/q;->a(ILandroid/content/Context;)F

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    float-to-int p3, p3

    .line 133
    goto :goto_86

    .line 134
    :cond_85
    move p3, v5

    .line 135
    :goto_86
    iget-boolean v2, v2, Lcom/google/android/material/tabs/TabLayout;->F:Z

    .line 136
    .line 137
    if-eqz v2, :cond_9c

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eq p3, v2, :cond_ab

    .line 144
    .line 145
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 146
    .line 147
    .line 148
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 154
    .line 155
    .line 156
    goto :goto_ab

    .line 157
    :cond_9c
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 158
    .line 159
    if-eq p3, v2, :cond_ab

    .line 160
    .line 161
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 162
    .line 163
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 170
    .line 171
    .line 172
    :cond_ab
    :goto_ab
    iget-object p1, p0, Ld4/l;->b:Ld4/i;

    .line 173
    .line 174
    if-eqz p1, :cond_b1

    .line 175
    .line 176
    iget-object v1, p1, Ld4/i;->d:Ljava/lang/CharSequence;

    .line 177
    .line 178
    :cond_b1
    if-nez v0, :cond_b4

    .line 179
    .line 180
    goto :goto_b5

    .line 181
    :cond_b4
    move-object v3, v1

    .line 182
    :goto_b5
    invoke-static {p0, v3}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_88

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_88

    .line 18
    .line 19
    iget-object v0, p0, Ld4/l;->f:Ld3/a;

    .line 20
    .line 21
    iget-object v2, v0, Ld3/a;->f:Ld3/c;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-nez v3, :cond_1f

    .line 29
    .line 30
    goto/16 :goto_85

    .line 31
    .line 32
    :cond_1f
    iget-object v2, v2, Ld3/c;->b:Ld3/b;

    .line 33
    .line 34
    iget-object v3, v2, Ld3/b;->k:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v3, :cond_27

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v3, v1

    .line 41
    :goto_28
    if-eqz v3, :cond_36

    .line 42
    .line 43
    iget-object v4, v2, Ld3/b;->p:Ljava/lang/CharSequence;

    .line 44
    .line 45
    if-eqz v4, :cond_2f

    .line 46
    .line 47
    goto :goto_85

    .line 48
    :cond_2f
    iget-object v0, v0, Ld3/a;->f:Ld3/c;

    .line 49
    .line 50
    iget-object v0, v0, Ld3/c;->b:Ld3/b;

    .line 51
    .line 52
    iget-object v4, v0, Ld3/b;->k:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_85

    .line 55
    :cond_36
    invoke-virtual {v0}, Ld3/a;->g()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_83

    .line 60
    .line 61
    iget v3, v2, Ld3/b;->r:I

    .line 62
    .line 63
    if-eqz v3, :cond_85

    .line 64
    .line 65
    iget-object v3, v0, Ld3/a;->b:Ljava/lang/ref/WeakReference;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/content/Context;

    .line 72
    .line 73
    if-nez v3, :cond_4b

    .line 74
    .line 75
    goto :goto_85

    .line 76
    :cond_4b
    iget v4, v0, Ld3/a;->i:I

    .line 77
    .line 78
    const/4 v5, -0x2

    .line 79
    if-eq v4, v5, :cond_68

    .line 80
    .line 81
    invoke-virtual {v0}, Ld3/a;->e()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iget v5, v0, Ld3/a;->i:I

    .line 86
    .line 87
    if-gt v4, v5, :cond_59

    .line 88
    .line 89
    goto :goto_68

    .line 90
    :cond_59
    iget v0, v2, Ld3/b;->s:I

    .line 91
    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    goto :goto_85

    .line 105
    :cond_68
    :goto_68
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget v2, v2, Ld3/b;->r:I

    .line 110
    .line 111
    invoke-virtual {v0}, Ld3/a;->e()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v0}, Ld3/a;->e()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v3, v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    goto :goto_85

    .line 132
    :cond_83
    iget-object v4, v2, Ld3/b;->q:Ljava/lang/CharSequence;

    .line 133
    .line 134
    :cond_85
    :goto_85
    invoke-virtual {p1, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :cond_88
    iget-object v0, p0, Ld4/l;->b:Ld4/i;

    .line 138
    .line 139
    iget v4, v0, Ld4/i;->e:I

    .line 140
    .line 141
    const/4 v6, 0x0

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    const/4 v2, 0x0

    .line 147
    const/4 v3, 0x1

    .line 148
    const/4 v5, 0x1

    .line 149
    invoke-static/range {v2 .. v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_a9

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 163
    .line 164
    .line 165
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    .line 168
    .line 169
    .line 170
    :cond_a9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const v1, 0x7f1301b8

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final onMeasure(II)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Ld4/l;->l:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabMaxWidth()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-lez v3, :cond_1c

    .line 16
    .line 17
    if-eqz v1, :cond_14

    .line 18
    .line 19
    if-le v0, v3, :cond_1c

    .line 20
    .line 21
    :cond_14
    iget p1, v2, Lcom/google/android/material/tabs/TabLayout;->w:I

    .line 22
    .line 23
    const/high16 v0, -0x80000000

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz v0, :cond_a8

    .line 35
    .line 36
    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->s:F

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_32

    .line 43
    .line 44
    iget v1, v2, Lcom/google/android/material/tabs/TabLayout;->l:I

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    if-eq v1, v3, :cond_32

    .line 48
    .line 49
    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->t:F

    .line 50
    .line 51
    :cond_32
    iget v1, p0, Ld4/l;->k:I

    .line 52
    .line 53
    iget-object v3, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    if-eqz v3, :cond_41

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_41

    .line 63
    .line 64
    move v1, v4

    .line 65
    goto :goto_4d

    .line 66
    :cond_41
    iget-object v3, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 67
    .line 68
    if-eqz v3, :cond_4d

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-le v3, v4, :cond_4d

    .line 75
    .line 76
    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->u:F

    .line 77
    .line 78
    :cond_4d
    :goto_4d
    iget-object v3, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iget-object v5, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    iget-object v6, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/widget/TextView;->getMaxLines()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    cmpl-float v3, v0, v3

    .line 97
    .line 98
    if-nez v3, :cond_67

    .line 99
    .line 100
    if-ltz v6, :cond_a8

    .line 101
    .line 102
    if-eq v1, v6, :cond_a8

    .line 103
    .line 104
    :cond_67
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->E:I

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    if-ne v2, v4, :cond_9b

    .line 108
    .line 109
    if-lez v3, :cond_9b

    .line 110
    .line 111
    if-ne v5, v4, :cond_9b

    .line 112
    .line 113
    iget-object v2, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_a8

    .line 120
    .line 121
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineWidth(I)F

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    div-float v2, v0, v2

    .line 134
    .line 135
    mul-float/2addr v2, v3

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    sub-int/2addr v3, v4

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    sub-int/2addr v3, v4

    .line 150
    int-to-float v3, v3

    .line 151
    cmpl-float v2, v2, v3

    .line 152
    .line 153
    if-lez v2, :cond_9b

    .line 154
    .line 155
    goto :goto_a8

    .line 156
    :cond_9b
    iget-object v2, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 164
    .line 165
    .line 166
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 167
    .line 168
    .line 169
    :cond_a8
    :goto_a8
    return-void
.end method

.method public final performClick()Z
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ld4/l;->b:Ld4/i;

    .line 6
    .line 7
    if-eqz v1, :cond_1f

    .line 8
    .line 9
    if-nez v0, :cond_e

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 13
    .line 14
    .line 15
    :cond_e
    iget-object v0, p0, Ld4/l;->b:Ld4/i;

    .line 16
    .line 17
    iget-object v1, v0, Ld4/i;->g:Lcom/google/android/material/tabs/TabLayout;

    .line 18
    .line 19
    if-eqz v1, :cond_19

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/tabs/TabLayout;->l(Ld4/i;Z)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_19
    const-string v0, "Tab not attached to a TabLayout"

    .line 27
    .line 28
    invoke-static {v0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :cond_1f
    return v0
.end method

.method public setSelected(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ld4/l;->c:Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Ld4/l;->d:Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz v0, :cond_14

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    :cond_14
    iget-object v0, p0, Ld4/l;->g:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_1b

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public setTab(Ld4/i;)V
    .registers 3
    .param p1    # Ld4/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ld4/l;->b:Ld4/i;

    .line 2
    .line 3
    if-eq p1, v0, :cond_9

    .line 4
    .line 5
    iput-object p1, p0, Ld4/l;->b:Ld4/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Ld4/l;->e()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method
