.class public Ly1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/d;
.implements Lr2/a;
.implements Lf0/f;


# static fields
.field public static a:Ly1/e;

.field public static final b:Ly1/e;

.field public static final c:Ly1/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ly1/e;

    invoke-direct {v0}, Ly1/e;-><init>()V

    sput-object v0, Ly1/e;->b:Ly1/e;

    new-instance v0, Ly1/e;

    invoke-direct {v0}, Ly1/e;-><init>()V

    sput-object v0, Ly1/e;->c:Ly1/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(FFFF)Landroid/graphics/Path;
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method public static f(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    sget-object v0, Landroidx/emoji2/text/j;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    if-nez p0, :cond_0

    goto/16 :goto_b

    :cond_0
    if-ltz p2, :cond_1c

    if-gez p3, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    if-eq v2, v4, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v5, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_4

    goto/16 :goto_b

    :cond_4
    if-eqz p4, :cond_19

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ltz v1, :cond_e

    if-ge p4, v1, :cond_5

    goto :goto_4

    :cond_5
    if-gez p2, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    move p4, v0

    :goto_3
    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_9

    if-eqz p4, :cond_8

    goto :goto_4

    :cond_8
    move v1, v0

    goto :goto_5

    :cond_9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_b

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_b
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_c

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_c
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_d

    goto :goto_4

    :cond_d
    move p4, v3

    goto :goto_3

    :cond_e
    :goto_4
    move v1, v4

    :goto_5
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ltz v2, :cond_17

    if-ge p3, v2, :cond_f

    goto :goto_8

    :cond_f
    if-gez p2, :cond_10

    goto :goto_8

    :cond_10
    :goto_6
    move p4, v0

    :goto_7
    if-nez p2, :cond_11

    move p3, v2

    goto :goto_9

    :cond_11
    if-lt v2, p3, :cond_12

    if-eqz p4, :cond_18

    goto :goto_8

    :cond_12
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_14

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_13

    goto :goto_8

    :cond_13
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_15

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_16

    goto :goto_8

    :cond_16
    add-int/lit8 v2, v2, 0x1

    move p4, v3

    goto :goto_7

    :cond_17
    :goto_8
    move p3, v4

    :cond_18
    :goto_9
    if-eq v1, v4, :cond_1c

    if-ne p3, v4, :cond_1a

    goto :goto_b

    :cond_19
    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_1a
    const-class p2, Landroidx/emoji2/text/s;

    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/emoji2/text/s;

    if-eqz p2, :cond_1c

    array-length p4, p2

    if-lez p4, :cond_1c

    array-length p4, p2

    move v2, v0

    :goto_a
    if-ge v2, p4, :cond_1b

    aget-object v4, p2, v2

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v0, v3

    :cond_1c
    :goto_b
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 p0, 0x0

    add-int/2addr p2, p0

    const/4 v0, 0x2

    move v1, p0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_2

    if-ne v2, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    sget-object v3, Lf0/i;->a:Lf0/h;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    move v2, v0

    goto :goto_1

    :cond_0
    :pswitch_0
    move v2, p0

    goto :goto_1

    :cond_1
    :pswitch_1
    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 0

    instance-of p0, p0, Ly1/f;

    return p0
.end method

.method public c(FFFLy1/x;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p4, p1, p0}, Ly1/x;->d(FF)V

    return-void
.end method

.method public create(Lt0/c;)Lt0/e;
    .locals 3

    new-instance p0, Lu0/e;

    iget-boolean v0, p1, Lt0/c;->d:Z

    iget-object v1, p1, Lt0/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lt0/c;->a:Landroid/content/Context;

    iget-object p1, p1, Lt0/c;->c:Lt0/b;

    invoke-direct {p0, v2, v1, p1, v0}, Lu0/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lt0/b;Z)V

    return-object p0
.end method

.method public d([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    return-object p1
.end method

.method public g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public h(Z)V
    .locals 0

    return-void
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public j(Landroidx/appcompat/widget/d0;F)V
    .locals 3

    iget-object p0, p1, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Lj/a;

    iget-object v0, p1, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/appcompat/widget/d0;->c()Z

    move-result v1

    iget v2, p0, Lj/a;->e:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lj/a;->f:Z

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lj/a;->g:Z

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lj/a;->e:F

    iput-boolean v0, p0, Lj/a;->f:Z

    iput-boolean v1, p0, Lj/a;->g:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lj/a;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    iget-object p0, p1, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/appcompat/widget/d0;->i(IIII)V

    goto :goto_1

    :cond_1
    iget-object p0, p1, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Lj/a;

    iget p2, p0, Lj/a;->e:F

    iget p0, p0, Lj/a;->a:F

    invoke-virtual {p1}, Landroidx/appcompat/widget/d0;->c()Z

    move-result v0

    invoke-static {p2, p0, v0}, Lj/b;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1}, Landroidx/appcompat/widget/d0;->c()Z

    move-result v1

    invoke-static {p2, p0, v1}, Lj/b;->b(FFZ)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {p1, v0, p0, v0, p0}, Landroidx/appcompat/widget/d0;->i(IIII)V

    :goto_1
    return-void
.end method

.method public k(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    return-object p1
.end method
