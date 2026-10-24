.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SourceFile"

# interfaces
.implements Ll1/c;
.implements Ly1/y;


# static fields
.field public static final v:I

.field public static final w:Landroid/graphics/Rect;

.field public static final x:[I

.field public static final y:[I


# instance fields
.field public e:Ll1/d;

.field public f:Landroid/graphics/drawable/InsetDrawable;

.field public g:Landroid/graphics/drawable/RippleDrawable;

.field public h:Landroid/view/View$OnClickListener;

.field public i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public final q:Ll1/b;

.field public r:Z

.field public final s:Landroid/graphics/Rect;

.field public final t:Landroid/graphics/RectF;

.field public final u:Ll1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Action:I

    sput v0, Lcom/google/android/material/chip/Chip;->v:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->w:Landroid/graphics/Rect;

    const v0, 0x10100a1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->x:[I

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->y:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 3
    sget v6, Lcom/google/android/material/chip/Chip;->v:I

    invoke-static {p1, p2, p3, v6}, Lb2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/Rect;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->t:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Ll1/a;

    const/4 v7, 0x0

    invoke-direct {p1, v7, p0}, Ll1/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->u:Ll1/a;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v8, 0x800013

    const/4 v9, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "background"

    const-string v1, "http://schemas.android.com/apk/res/android"

    .line 8
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Chip"

    if-eqz v0, :cond_1

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    .line 9
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "drawableLeft"

    .line 10
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string v0, "drawableStart"

    .line 11
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    const-string v0, "drawableEnd"

    .line 12
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Please set end drawable using R.attr#closeIcon."

    if-nez v0, :cond_1b

    const-string v0, "drawableRight"

    .line 13
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, "singleLine"

    .line 14
    invoke-interface {p2, v1, v0, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "lines"

    .line 15
    invoke-interface {p2, v1, v0, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_19

    const-string v0, "minLines"

    .line 16
    invoke-interface {p2, v1, v0, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_19

    const-string v0, "maxLines"

    .line 17
    invoke-interface {p2, v1, v0, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_19

    const-string v0, "gravity"

    .line 18
    invoke-interface {p2, v1, v0, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_2

    const-string v0, "Chip text must be vertically center and start aligned"

    .line 19
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_2
    :goto_0
    new-instance v10, Ll1/d;

    invoke-direct {v10, p1, p2, p3}, Ll1/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iget-object v0, v10, Ll1/d;->e0:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    new-array v5, v7, [I

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/x;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    sget v1, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, v10, Ll1/d;->F0:Z

    .line 24
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipSurfaceColor:I

    .line 25
    iget-object v2, v10, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 26
    iget-object v3, v10, Ll1/d;->x:Landroid/content/res/ColorStateList;

    if-eq v3, v1, :cond_3

    .line 27
    iput-object v1, v10, Ll1/d;->x:Landroid/content/res/ColorStateList;

    .line 28
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v10, v1}, Ll1/d;->onStateChange([I)Z

    .line 29
    :cond_3
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    .line 30
    invoke-static {v2, v0, v1}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 31
    iget-object v3, v10, Ll1/d;->y:Landroid/content/res/ColorStateList;

    if-eq v3, v1, :cond_4

    .line 32
    iput-object v1, v10, Ll1/d;->y:Landroid/content/res/ColorStateList;

    .line 33
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v10, v1}, Ll1/d;->onStateChange([I)Z

    .line 34
    :cond_4
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 35
    iget v4, v10, Ll1/d;->z:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_5

    .line 36
    iput v1, v10, Ll1/d;->z:F

    .line 37
    invoke-virtual {v10}, Ly1/h;->invalidateSelf()V

    .line 38
    invoke-virtual {v10}, Ll1/d;->D()V

    .line 39
    :cond_5
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 40
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v10, v1}, Ll1/d;->J(F)V

    .line 41
    :cond_6
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    .line 42
    invoke-static {v2, v0, v1}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 43
    invoke-virtual {v10, v1}, Ll1/d;->O(Landroid/content/res/ColorStateList;)V

    .line 44
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v10, v1}, Ll1/d;->P(F)V

    .line 45
    sget v1, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    invoke-static {v2, v0, v1}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v10, v1}, Ll1/d;->Y(Landroid/content/res/ColorStateList;)V

    .line 46
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, ""

    .line 47
    :cond_7
    iget-object v4, v10, Ll1/d;->E:Ljava/lang/CharSequence;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v5, v10, Ll1/d;->k0:Lcom/google/android/material/internal/u;

    if-nez v4, :cond_8

    .line 48
    iput-object v1, v10, Ll1/d;->E:Ljava/lang/CharSequence;

    .line 49
    iput-boolean v9, v5, Lcom/google/android/material/internal/u;->d:Z

    .line 50
    invoke-virtual {v10}, Ly1/h;->invalidateSelf()V

    .line 51
    invoke-virtual {v10}, Ll1/d;->D()V

    .line 52
    :cond_8
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 54
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_9

    .line 55
    new-instance v4, Lv1/g;

    invoke-direct {v4, v2, v1}, Lv1/g;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    .line 56
    :goto_1
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_textSize:I

    .line 57
    iget v11, v4, Lv1/g;->k:F

    .line 58
    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 59
    iput v1, v4, Lv1/g;->k:F

    .line 60
    invoke-virtual {v5, v4, v2}, Lcom/google/android/material/internal/u;->b(Lv1/g;Landroid/content/Context;)V

    .line 61
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v11, 0x2

    if-eq v1, v9, :cond_c

    if-eq v1, v11, :cond_b

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    goto :goto_2

    .line 62
    :cond_a
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 63
    iput-object v1, v10, Ll1/d;->C0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 64
    :cond_b
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 65
    iput-object v1, v10, Ll1/d;->C0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    .line 66
    :cond_c
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 67
    iput-object v1, v10, Ll1/d;->C0:Landroid/text/TextUtils$TruncateAt;

    .line 68
    :goto_2
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v10, v1}, Ll1/d;->N(Z)V

    const-string v1, "http://schemas.android.com/apk/res-auto"

    if-eqz p2, :cond_d

    const-string v4, "chipIconEnabled"

    .line 69
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v4, "chipIconVisible"

    .line 70
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    .line 71
    sget v4, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v10, v4}, Ll1/d;->N(Z)V

    .line 72
    :cond_d
    sget v4, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    invoke-static {v2, v0, v4}, Lv1/d;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Ll1/d;->K(Landroid/graphics/drawable/Drawable;)V

    .line 73
    sget v4, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 74
    sget v4, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    .line 75
    invoke-static {v2, v0, v4}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 76
    invoke-virtual {v10, v4}, Ll1/d;->M(Landroid/content/res/ColorStateList;)V

    .line 77
    :cond_e
    sget v4, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v10, v4}, Ll1/d;->L(F)V

    .line 78
    sget v4, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v10, v4}, Ll1/d;->V(Z)V

    if-eqz p2, :cond_f

    const-string v4, "closeIconEnabled"

    .line 79
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v4, "closeIconVisible"

    .line 80
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    .line 81
    sget v4, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v10, v4}, Ll1/d;->V(Z)V

    .line 82
    :cond_f
    sget v4, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    invoke-static {v2, v0, v4}, Lv1/d;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Ll1/d;->Q(Landroid/graphics/drawable/Drawable;)V

    .line 83
    sget v4, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    .line 84
    invoke-static {v2, v0, v4}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 85
    invoke-virtual {v10, v4}, Ll1/d;->U(Landroid/content/res/ColorStateList;)V

    .line 86
    sget v4, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v10, v4}, Ll1/d;->S(F)V

    .line 87
    sget v4, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v10, v4}, Ll1/d;->F(Z)V

    .line 88
    sget v4, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v10, v4}, Ll1/d;->I(Z)V

    if-eqz p2, :cond_10

    const-string v4, "checkedIconEnabled"

    .line 89
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string v4, "checkedIconVisible"

    .line 90
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    .line 91
    sget v1, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v10, v1}, Ll1/d;->I(Z)V

    .line 92
    :cond_10
    sget v1, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    invoke-static {v2, v0, v1}, Lv1/d;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Ll1/d;->G(Landroid/graphics/drawable/Drawable;)V

    .line 93
    sget v1, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 94
    sget v1, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    .line 95
    invoke-static {v2, v0, v1}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 96
    invoke-virtual {v10, v1}, Ll1/d;->H(Landroid/content/res/ColorStateList;)V

    .line 97
    :cond_11
    sget v1, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    invoke-static {v2, v0, v1}, Le1/f;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le1/f;

    move-result-object v1

    .line 98
    iput-object v1, v10, Ll1/d;->U:Le1/f;

    .line 99
    sget v1, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    invoke-static {v2, v0, v1}, Le1/f;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Le1/f;

    move-result-object v1

    .line 100
    iput-object v1, v10, Ll1/d;->V:Le1/f;

    .line 101
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 102
    iget v2, v10, Ll1/d;->W:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_12

    .line 103
    iput v1, v10, Ll1/d;->W:F

    .line 104
    invoke-virtual {v10}, Ly1/h;->invalidateSelf()V

    .line 105
    invoke-virtual {v10}, Ll1/d;->D()V

    .line 106
    :cond_12
    sget v1, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v10, v1}, Ll1/d;->X(F)V

    .line 107
    sget v1, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v10, v1}, Ll1/d;->W(F)V

    .line 108
    sget v1, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 109
    iget v2, v10, Ll1/d;->Z:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_13

    .line 110
    iput v1, v10, Ll1/d;->Z:F

    .line 111
    invoke-virtual {v10}, Ly1/h;->invalidateSelf()V

    .line 112
    invoke-virtual {v10}, Ll1/d;->D()V

    .line 113
    :cond_13
    sget v1, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 114
    iget v2, v10, Ll1/d;->a0:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_14

    .line 115
    iput v1, v10, Ll1/d;->a0:F

    .line 116
    invoke-virtual {v10}, Ly1/h;->invalidateSelf()V

    .line 117
    invoke-virtual {v10}, Ll1/d;->D()V

    .line 118
    :cond_14
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v10, v1}, Ll1/d;->T(F)V

    .line 119
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v10, v1}, Ll1/d;->R(F)V

    .line 120
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 121
    iget v2, v10, Ll1/d;->d0:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_15

    .line 122
    iput v1, v10, Ll1/d;->d0:F

    .line 123
    invoke-virtual {v10}, Ly1/h;->invalidateSelf()V

    .line 124
    invoke-virtual {v10}, Ll1/d;->D()V

    .line 125
    :cond_15
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 126
    iput v1, v10, Ll1/d;->E0:I

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/x;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    sget v1, Lcom/google/android/material/R$styleable;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/google/android/material/internal/c0;->b(Landroid/content/Context;I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 132
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipMinTouchTargetSize:I

    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-double v1, v1

    .line 134
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/chip/Chip;->p:I

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    invoke-virtual {p0, v10}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Ll1/d;)V

    .line 137
    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    .line 138
    invoke-static {p0}, Lh0/f0;->i(Landroid/view/View;)F

    move-result v0

    .line 139
    invoke-virtual {v10, v0}, Ly1/h;->m(F)V

    .line 140
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/x;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    sget p2, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    new-instance p1, Ll1/b;

    invoke-direct {p1, p0, p0}, Ll1/b;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->q:Ll1/b;

    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    if-nez p2, :cond_16

    .line 146
    new-instance p1, Ls/a;

    invoke-direct {p1, p0, v11}, Ls/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 147
    :cond_16
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 148
    iget-object p1, v10, Ll1/d;->E:Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, v10, Ll1/d;->C0:Landroid/text/TextUtils$TruncateAt;

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    .line 153
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    .line 154
    iget-boolean p1, p1, Ll1/d;->D0:Z

    if-nez p1, :cond_17

    .line 155
    invoke-virtual {p0, v9}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 156
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 157
    :cond_17
    invoke-virtual {p0, v8}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 159
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz p1, :cond_18

    .line 160
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 161
    :cond_18
    invoke-static {p0}, Lh0/a0;->d(Landroid/view/View;)I

    move-result p1

    .line 162
    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    return-void

    .line 163
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_1a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_1b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_1c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_1d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Ll1/d;->b0()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Ll1/d;->d0:F

    iget v3, p0, Ll1/d;->c0:F

    add-float/2addr v2, v3

    iget v3, p0, Ll1/d;->O:F

    add-float/2addr v2, v3

    iget v3, p0, Ll1/d;->b0:F

    add-float/2addr v2, v3

    iget v3, p0, Ll1/d;->a0:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_0

    iget p0, v1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v2

    iput p0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget p0, v1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, v2

    iput p0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    iget p0, v1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/RectF;->top:F

    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0
.end method

.method private getTextAppearance()Lv1/g;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->k0:Lcom/google/android/material/internal/u;

    iget-object p0, p0, Lcom/google/android/material/internal/u;->f:Lv1/g;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->k:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 10

    iput p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    iput-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    iget v0, v0, Ll1/d;->z:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    invoke-virtual {v3}, Ll1/d;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gtz v3, :cond_5

    if-gtz v0, :cond_5

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_3

    if-eqz p1, :cond_4

    iput-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    if-lez v3, :cond_6

    div-int/lit8 v3, v3, 0x2

    move v8, v3

    goto :goto_2

    :cond_6
    move v8, v2

    :goto_2
    if-lez v0, :cond_7

    div-int/lit8 v2, v0, 0x2

    :cond_7
    move v9, v2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, v9, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v9, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, v8, :cond_8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v8, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_a
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v5, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    move-object v4, p1

    move v6, v8

    move v7, v9

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_2

    iget-object p0, p0, Ll1/d;->L:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    instance-of v0, p0, La0/a;

    if-eqz v0, :cond_1

    check-cast p0, La0/a;

    check-cast p0, La0/b;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->r:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Ll1/b;

    invoke-virtual {v0, p1}, Lk0/b;->m(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->r:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Ll1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v5, 0x3d

    const/4 v6, 0x0

    if-eq v1, v5, :cond_7

    const/16 v5, 0x42

    if-eq v1, v5, :cond_5

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x13

    if-eq v1, v7, :cond_2

    const/16 v7, 0x15

    if-eq v1, v7, :cond_1

    const/16 v7, 0x16

    if-eq v1, v7, :cond_3

    const/16 v5, 0x82

    goto :goto_0

    :cond_1
    const/16 v5, 0x11

    goto :goto_0

    :cond_2
    const/16 v5, 0x21

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    add-int/2addr v1, v3

    move v7, v4

    :goto_1
    if-ge v4, v1, :cond_4

    invoke-virtual {v0, v5, v6}, Lk0/b;->q(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v4, v4, 0x1

    move v7, v3

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_2

    :cond_5
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_9

    iget v1, v0, Lk0/b;->l:I

    if-eq v1, v2, :cond_6

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v4, v6}, Ll1/b;->s(IILandroid/os/Bundle;)Z

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lk0/b;->q(ILandroid/graphics/Rect;)Z

    move-result v4

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v3, v6}, Lk0/b;->q(ILandroid/graphics/Rect;)Z

    move-result v4

    :cond_9
    :goto_2
    if-eqz v4, :cond_a

    iget v0, v0, Lk0/b;->l:I

    if-eq v0, v2, :cond_a

    return v3

    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final drawableStateChanged()V
    .locals 5

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v0, Ll1/d;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Ll1/d;->C(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    new-array v2, v2, [I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x101009e

    aput v3, v2, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v4, :cond_5

    const v4, 0x101009c

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_5
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v4, :cond_6

    const v4, 0x1010367

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_6
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v4, :cond_7

    const v4, 0x10100a7

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x10100a1

    aput v4, v2, v3

    :cond_8
    iget-object v3, v0, Ll1/d;->y0:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_9

    iput-object v2, v0, Ll1/d;->y0:[I

    invoke-virtual {v0}, Ll1/d;->b0()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ll1/d;->E([I[I)Z

    move-result v0

    move v1, v0

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Ll1/d;->K:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Ll1/b;

    invoke-static {p0, v0}, Lh0/q0;->j(Landroid/view/View;Lh0/b;)V

    iput-boolean v2, p0, Lcom/google/android/material/chip/Chip;->r:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lh0/q0;->j(Landroid/view/View;Lh0/b;)V

    iput-boolean v1, p0, Lcom/google/android/material/chip/Chip;->r:Z

    :goto_1
    return-void
.end method

.method public final f()V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    iget-object v1, v1, Ll1/d;->D:Landroid/content/res/ColorStateList;

    invoke-static {v1}, Lw1/a;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    iget-boolean v1, v0, Ll1/d;->z0:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Ll1/d;->z0:Z

    iput-object v3, v0, Ll1/d;->A0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/d;->onStateChange([I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Lh0/z;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    return-void
.end method

.method public final g()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Ll1/d;->d0:F

    iget v2, v0, Ll1/d;->a0:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Ll1/d;->z()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    iget v2, v1, Ll1/d;->W:F

    iget v3, v1, Ll1/d;->Z:F

    add-float/2addr v2, v3

    invoke-virtual {v1}, Ll1/d;->y()F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sget-object v4, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v1, v2, v0, v3}, Lh0/a0;->k(Landroid/view/View;IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Ll1/d;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/material/chip/ChipGroup;

    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->g:Z

    if-eqz p0, :cond_1

    const-string p0, "android.widget.RadioButton"

    return-object p0

    :cond_1
    const-string p0, "android.widget.CompoundButton"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "android.widget.Button"

    return-object p0

    :cond_3
    const-string p0, "android.view.View"

    return-object p0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->S:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->T:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->y:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipCornerRadius()F
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ll1/d;->A()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_0
    return v0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    return-object p0
.end method

.method public getChipEndPadding()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->d0:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Ll1/d;->G:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    instance-of v0, p0, La0/a;

    if-eqz v0, :cond_0

    check-cast p0, La0/a;

    check-cast p0, La0/b;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getChipIconSize()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->I:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->H:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipMinHeight()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->z:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipStartPadding()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->W:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->B:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipStrokeWidth()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->C:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Ll1/d;->L:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    instance-of v0, p0, La0/a;

    if-eqz v0, :cond_0

    check-cast p0, La0/a;

    check-cast p0, La0/b;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->P:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCloseIconEndPadding()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->c0:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseIconSize()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->O:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseIconStartPadding()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->b0:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->N:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->C0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Ll1/b;

    iget v1, v0, Lk0/b;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v0, v0, Lk0/b;->k:I

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getHideMotionSpec()Le1/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->V:Le1/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIconEndPadding()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->Y:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIconStartPadding()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->X:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->D:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getShapeAppearanceModel()Ly1/n;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    iget-object p0, p0, Ly1/h;->a:Ly1/g;

    iget-object p0, p0, Ly1/g;->a:Ly1/n;

    return-object p0
.end method

.method public getShowMotionSpec()Le1/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ll1/d;->U:Le1/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextEndPadding()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->a0:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTextStartPadding()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget p0, p0, Ll1/d;->Z:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lv1/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->u:Ll1/a;

    invoke-virtual {v1, v2, v0, p0}, Lv1/g;->e(Landroid/content/Context;Landroid/text/TextPaint;Lv1/h;)V

    :cond_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    invoke-static {p0, v0}, Ly1/l;->p1(Landroid/view/View;Ly1/h;)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/chip/Chip;->x:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Ll1/d;->Q:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/material/chip/Chip;->y:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->r:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->q:Ll1/b;

    iget v0, p0, Lk0/b;->l:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lk0/b;->j(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lk0/b;->q(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Ll1/d;->Q:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    iget-boolean v3, v0, Lcom/google/android/material/internal/FlowLayout;->c:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/material/chip/Chip;

    if-eqz v5, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/chip/Chip;

    if-ne v5, p0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_2
    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-static {v4, v2, v3, v2, p0}, Landroidx/appcompat/app/f0;->d(IIIIZ)Landroidx/appcompat/app/f0;

    move-result-object p0

    iget-object p0, p0, Landroidx/appcompat/app/f0;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_5
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v0, :cond_7

    if-nez v1, :cond_6

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->r:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Ll1/b;

    invoke-virtual {v0, v2, v2}, Lk0/b;->x(II)V

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_6
    :goto_1
    move v0, v2

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v3

    :goto_3
    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :cond_9
    :goto_4
    return v2
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p0, "Chip"

    const-string p1, "Do not set the background; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background color; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p0, "Chip"

    const-string p1, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background resource; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "Chip"

    const-string p1, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "Chip"

    const-string p1, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->F(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->F(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Ll1/d;->Q:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->G(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v0, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/d;->G(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->H(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v0, p1}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/d;->H(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    .line 2
    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->I(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Ll1/d;->I(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->y:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Ll1/d;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/d;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v0, p1}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Ll1/d;->y:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Ll1/d;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/d;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->J(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->J(F)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Ll1/d;)V
    .locals 3
    .param p1    # Ll1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Ll1/d;->B0:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    const/4 v0, 0x0

    iput-boolean v0, p1, Ll1/d;->D0:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Ll1/d;->B0:Ljava/lang/ref/WeakReference;

    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->c(I)V

    :cond_1
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget v0, p0, Ll1/d;->d0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->d0:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v0, p0, Ll1/d;->d0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->d0:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->K(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v0, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/d;->K(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->L(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->L(F)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->M(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v0, p1}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/d;->M(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    .line 2
    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->N(Z)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Ll1/d;->N(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget v0, p0, Ll1/d;->z:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->z:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v0, p0, Ll1/d;->z:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->z:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget v0, p0, Ll1/d;->W:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->W:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v0, p0, Ll1/d;->W:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->W:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->O(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v0, p1}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/d;->O(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->P(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->P(F)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll1/d;->Q(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_2

    iget-object v0, p0, Ll1/d;->P:Landroid/text/SpannableStringBuilder;

    if-eq v0, p1, :cond_2

    sget-object v0, Lf0/c;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget v1, Lf0/j;->a:I

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v0, Lf0/c;->g:Lf0/c;

    goto :goto_1

    :cond_1
    sget-object v0, Lf0/c;->f:Lf0/c;

    :goto_1
    iget-object v1, v0, Lf0/c;->c:Lf0/g;

    invoke-virtual {v0, p1, v1}, Lf0/c;->c(Ljava/lang/CharSequence;Lf0/g;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iput-object p1, p0, Ll1/d;->P:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->R(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->R(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v1, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll1/d;->Q(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->S(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->S(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->T(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->T(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->U(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v0, p1}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/d;->U(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ll1/d;->V(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setElevation(F)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ly1/h;->m(F)V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_1

    iput-object p1, p0, Ll1/d;->C0:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Text within a chip are not allowed to scroll."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->c(I)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p0, "Chip"

    const-string p1, "Chip text must be vertically center and start aligned"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setHideMotionSpec(Le1/f;)V
    .locals 0
    .param p1    # Le1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iput-object p1, p0, Ll1/d;->V:Le1/f;

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v0, p1}, Le1/f;->b(Landroid/content/Context;I)Le1/f;

    move-result-object p1

    iput-object p1, p0, Ll1/d;->V:Le1/f;

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->W(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->W(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ll1/d;->X(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Ll1/d;->X(F)V

    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iput p1, p0, Ll1/d;->E0:I

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll1/d;->Y(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    iget-boolean p1, p1, Ll1/d;->z0:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v1, p1}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll1/d;->Y(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    iget-boolean p1, p1, Ll1/d;->z0:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Ly1/n;)V
    .locals 0
    .param p1    # Ly1/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    invoke-virtual {p0, p1}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    return-void
.end method

.method public setShowMotionSpec(Le1/f;)V
    .locals 0
    .param p1    # Le1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iput-object p1, p0, Ll1/d;->U:Le1/f;

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-static {v0, p1}, Le1/f;->b(Landroid/content/Context;I)Le1/f;

    move-result-object p1

    iput-object p1, p0, Ll1/d;->U:Le1/f;

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-boolean v0, v0, Ll1/d;->D0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_3

    iget-object p2, p0, Ll1/d;->E:Ljava/lang/CharSequence;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iput-object p1, p0, Ll1/d;->E:Ljava/lang/CharSequence;

    iget-object p1, p0, Ll1/d;->k0:Lcom/google/android/material/internal/u;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/google/android/material/internal/u;->d:Z

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_3
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    .line 9
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lv1/g;

    iget-object v2, v0, Ll1/d;->e0:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lv1/g;-><init>(Landroid/content/Context;I)V

    .line 12
    iget-object p1, v0, Ll1/d;->k0:Lcom/google/android/material/internal/u;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/internal/u;->b(Lv1/g;Landroid/content/Context;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Lv1/g;

    iget-object v1, p1, Ll1/d;->e0:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lv1/g;-><init>(Landroid/content/Context;I)V

    .line 7
    iget-object p1, p1, Ll1/d;->k0:Lcom/google/android/material/internal/u;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/internal/u;->b(Lv1/g;Landroid/content/Context;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public setTextAppearance(Lv1/g;)V
    .locals 2
    .param p1    # Lv1/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Ll1/d;->k0:Lcom/google/android/material/internal/u;

    iget-object v0, v0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/internal/u;->b(Lv1/g;Landroid/content/Context;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget v0, p0, Ll1/d;->a0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->a0:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v0, p0, Ll1/d;->a0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->a0:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget v0, p0, Ll1/d;->Z:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->Z:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Ll1/d;

    if-eqz p0, :cond_0

    iget-object v0, p0, Ll1/d;->e0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v0, p0, Ll1/d;->Z:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Ll1/d;->Z:F

    invoke-virtual {p0}, Ly1/h;->invalidateSelf()V

    invoke-virtual {p0}, Ll1/d;->D()V

    :cond_0
    return-void
.end method
