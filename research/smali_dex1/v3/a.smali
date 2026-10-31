.class public final Lv3/a;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final d:[[I


# instance fields
.field public b:Landroid/content/res/ColorStateList;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const v0, 0x101009e

    .line 2
    .line 3
    .line 4
    const v1, 0x10100a0

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, -0x10100a0

    .line 12
    .line 13
    .line 14
    filled-new-array {v0, v3}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v4, -0x101009e

    .line 19
    .line 20
    .line 21
    filled-new-array {v4, v1}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    filled-new-array {v4, v3}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    filled-new-array {v2, v0, v1, v3}, [[I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lv3/a;->d:[[I

    .line 34
    .line 35
    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .registers 7

    .line 1
    iget-object v0, p0, Lv3/a;->b:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-nez v0, :cond_3d

    .line 4
    .line 5
    sget v0, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 6
    .line 7
    invoke-static {v0, p0}, Lm3/a;->a(ILandroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, 0x7f030129

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p0}, Lm3/a;->a(ILandroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const v2, 0x7f03013f

    .line 19
    .line 20
    .line 21
    invoke-static {v2, p0}, Lm3/a;->a(ILandroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-static {v3, v2, v0}, Lm3/a;->c(FII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const v3, 0x3f0a3d71    # 0.54f

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v2, v1}, Lm3/a;->c(FII)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const v4, 0x3ec28f5c    # 0.38f

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v2, v1}, Lm3/a;->c(FII)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v4, v2, v1}, Lm3/a;->c(FII)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    filled-new-array {v0, v3, v5, v1}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    sget-object v2, Lv3/a;->d:[[I

    .line 56
    .line 57
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lv3/a;->b:Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    :cond_3d
    iget-object v0, p0, Lv3/a;->b:Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    return-object v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lv3/a;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_11

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_11

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lv3/a;->setUseMaterialThemeColors(Z)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lv3/a;->c:Z

    .line 2
    .line 3
    if-eqz p1, :cond_c

    .line 4
    .line 5
    invoke-direct {p0}, Lv3/a;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
