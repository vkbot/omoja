.class public Lcom/google/android/material/switchmaterial/SwitchMaterial;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SourceFile"


# static fields
.field public static final a0:I

.field public static final b0:[[I


# instance fields
.field public final T:Lw1/a;

.field public U:Landroid/content/res/ColorStateList;

.field public V:Landroid/content/res/ColorStateList;

.field public W:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_Switch:I

    sput v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->a0:I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const v1, 0x101009e

    const v2, 0x10100a0

    filled-new-array {v1, v2}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const v3, -0x10100a0

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const v1, -0x101009e

    filled-new-array {v1, v2}, [I

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->b0:[[I

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
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    sget v0, Lcom/google/android/material/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget v4, Lcom/google/android/material/switchmaterial/SwitchMaterial;->a0:I

    invoke-static {p1, p2, p3, v4}, Lj2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance p1, Lw1/a;

    invoke-direct {p1, v0}, Lw1/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->T:Lw1/a;

    .line 6
    sget-object v2, Lcom/google/android/material/R$styleable;->SwitchMaterial:[I

    const/4 p1, 0x0

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/x;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    sget p3, Lcom/google/android/material/R$styleable;->SwitchMaterial_useMaterialThemeColors:I

    .line 9
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Z

    .line 10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->U:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->c0(Landroid/view/View;I)I

    move-result v0

    sget v1, Lcom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v1}, Lcom/google/android/material/slider/h;->c0(Landroid/view/View;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_switch_thumb_elevation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->T:Lw1/a;

    iget-boolean v4, v3, Lw1/a;->a:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    instance-of v6, v4, Landroid/view/View;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Landroid/view/View;

    sget-object v7, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v6}, Lg0/g0;->i(Landroid/view/View;)F

    move-result v6

    add-float/2addr v5, v6

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_0
    add-float/2addr v2, v5

    :cond_1
    invoke-virtual {v3, v0, v2}, Lw1/a;->a(IF)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v1}, Lcom/google/android/material/slider/h;->I0(IFI)I

    move-result v3

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v0, v4, v1}, Lcom/google/android/material/slider/h;->I0(IFI)I

    move-result v0

    filled-new-array {v3, v2, v0, v2}, [I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;->b0:[[I

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->U:Landroid/content/res/ColorStateList;

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->U:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->V:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->c0(Landroid/view/View;I)I

    move-result v0

    sget v1, Lcom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v1}, Lcom/google/android/material/slider/h;->c0(Landroid/view/View;I)I

    move-result v1

    sget v2, Lcom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {p0, v2}, Lcom/google/android/material/slider/h;->c0(Landroid/view/View;I)I

    move-result v2

    const v3, 0x3f0a3d71    # 0.54f

    invoke-static {v0, v3, v1}, Lcom/google/android/material/slider/h;->I0(IFI)I

    move-result v3

    const v4, 0x3ea3d70a    # 0.32f

    invoke-static {v0, v4, v2}, Lcom/google/android/material/slider/h;->I0(IFI)I

    move-result v4

    const v5, 0x3df5c28f    # 0.12f

    invoke-static {v0, v5, v1}, Lcom/google/android/material/slider/h;->I0(IFI)I

    move-result v1

    invoke-static {v0, v5, v2}, Lcom/google/android/material/slider/h;->I0(IFI)I

    move-result v0

    filled-new-array {v3, v4, v1, v0}, [I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/google/android/material/switchmaterial/SwitchMaterial;->b0:[[I

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->V:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->V:Landroid/content/res/ColorStateList;

    return-object v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->W:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method
