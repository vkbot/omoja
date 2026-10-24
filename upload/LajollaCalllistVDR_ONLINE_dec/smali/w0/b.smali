.class public final Lw0/b;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lw0/b;->a:I

    .line 1
    const-class v0, Landroid/graphics/Matrix;

    const-string v1, "imageMatrixProperty"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lw0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 p1, 0x0

    iput p1, p0, Lw0/b;->a:I

    .line 3
    const-class p1, Landroid/graphics/PointF;

    const-string v0, "boundsOrigin"

    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lw0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly1/a;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lw0/b;->a:I

    .line 5
    iput-object p1, p0, Lw0/b;->b:Ljava/lang/Object;

    const-class p1, Ljava/lang/Float;

    const-string v0, "LABEL_OPACITY_PROPERTY"

    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw0/b;->a:I

    iget-object v1, p0, Lw0/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/widget/ImageView;

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object v1

    :pswitch_1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :goto_0
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-object v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    check-cast v1, Ly1/a;

    iget-object v1, v1, Ly1/a;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    sget-object v0, Lm1/a;->a:Landroid/view/animation/LinearInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lw0/b;->a:I

    iget-object v1, p0, Lw0/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/PointF;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v1, v0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :goto_0
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    check-cast p2, Ljava/lang/Float;

    iget-object v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    check-cast v1, Ly1/a;

    iget-object v1, v1, Ly1/a;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lm1/a;->a:Landroid/view/animation/LinearInterpolator;

    const/4 v4, 0x0

    sub-float/2addr v1, v4

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->f(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->f(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
