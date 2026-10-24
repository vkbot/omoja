.class public final Lg2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Lg2/j;


# instance fields
.field public final a:Lcom/google/android/material/slider/h;

.field public final b:Lcom/google/android/material/slider/h;

.field public final c:Lcom/google/android/material/slider/h;

.field public final d:Lcom/google/android/material/slider/h;

.field public final e:Lg2/c;

.field public final f:Lg2/c;

.field public final g:Lg2/c;

.field public final h:Lg2/c;

.field public final i:Lg2/e;

.field public final j:Lg2/e;

.field public final k:Lg2/e;

.field public final l:Lg2/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/j;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lg2/j;-><init>(F)V

    sput-object v0, Lg2/m;->m:Lg2/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lg2/k;

    invoke-direct {v0}, Lg2/k;-><init>()V

    .line 26
    iput-object v0, p0, Lg2/m;->a:Lcom/google/android/material/slider/h;

    .line 27
    new-instance v0, Lg2/k;

    invoke-direct {v0}, Lg2/k;-><init>()V

    .line 28
    iput-object v0, p0, Lg2/m;->b:Lcom/google/android/material/slider/h;

    .line 29
    new-instance v0, Lg2/k;

    invoke-direct {v0}, Lg2/k;-><init>()V

    .line 30
    iput-object v0, p0, Lg2/m;->c:Lcom/google/android/material/slider/h;

    .line 31
    new-instance v0, Lg2/k;

    invoke-direct {v0}, Lg2/k;-><init>()V

    .line 32
    iput-object v0, p0, Lg2/m;->d:Lcom/google/android/material/slider/h;

    .line 33
    new-instance v0, Lg2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg2/a;-><init>(F)V

    iput-object v0, p0, Lg2/m;->e:Lg2/c;

    .line 34
    new-instance v0, Lg2/a;

    invoke-direct {v0, v1}, Lg2/a;-><init>(F)V

    iput-object v0, p0, Lg2/m;->f:Lg2/c;

    .line 35
    new-instance v0, Lg2/a;

    invoke-direct {v0, v1}, Lg2/a;-><init>(F)V

    iput-object v0, p0, Lg2/m;->g:Lg2/c;

    .line 36
    new-instance v0, Lg2/a;

    invoke-direct {v0, v1}, Lg2/a;-><init>(F)V

    iput-object v0, p0, Lg2/m;->h:Lg2/c;

    .line 37
    invoke-static {}, Lcom/google/android/material/slider/h;->R()Lg2/e;

    move-result-object v0

    iput-object v0, p0, Lg2/m;->i:Lg2/e;

    .line 38
    invoke-static {}, Lcom/google/android/material/slider/h;->R()Lg2/e;

    move-result-object v0

    iput-object v0, p0, Lg2/m;->j:Lg2/e;

    .line 39
    invoke-static {}, Lcom/google/android/material/slider/h;->R()Lg2/e;

    move-result-object v0

    iput-object v0, p0, Lg2/m;->k:Lg2/e;

    .line 40
    invoke-static {}, Lcom/google/android/material/slider/h;->R()Lg2/e;

    move-result-object v0

    iput-object v0, p0, Lg2/m;->l:Lg2/e;

    return-void
.end method

.method public constructor <init>(Lg2/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lg2/l;->a:Lcom/google/android/material/slider/h;

    .line 3
    iput-object v0, p0, Lg2/m;->a:Lcom/google/android/material/slider/h;

    .line 4
    iget-object v0, p1, Lg2/l;->b:Lcom/google/android/material/slider/h;

    .line 5
    iput-object v0, p0, Lg2/m;->b:Lcom/google/android/material/slider/h;

    .line 6
    iget-object v0, p1, Lg2/l;->c:Lcom/google/android/material/slider/h;

    .line 7
    iput-object v0, p0, Lg2/m;->c:Lcom/google/android/material/slider/h;

    .line 8
    iget-object v0, p1, Lg2/l;->d:Lcom/google/android/material/slider/h;

    .line 9
    iput-object v0, p0, Lg2/m;->d:Lcom/google/android/material/slider/h;

    .line 10
    iget-object v0, p1, Lg2/l;->e:Lg2/c;

    .line 11
    iput-object v0, p0, Lg2/m;->e:Lg2/c;

    .line 12
    iget-object v0, p1, Lg2/l;->f:Lg2/c;

    .line 13
    iput-object v0, p0, Lg2/m;->f:Lg2/c;

    .line 14
    iget-object v0, p1, Lg2/l;->g:Lg2/c;

    .line 15
    iput-object v0, p0, Lg2/m;->g:Lg2/c;

    .line 16
    iget-object v0, p1, Lg2/l;->h:Lg2/c;

    .line 17
    iput-object v0, p0, Lg2/m;->h:Lg2/c;

    .line 18
    iget-object v0, p1, Lg2/l;->i:Lg2/e;

    .line 19
    iput-object v0, p0, Lg2/m;->i:Lg2/e;

    .line 20
    iget-object v0, p1, Lg2/l;->j:Lg2/e;

    iput-object v0, p0, Lg2/m;->j:Lg2/e;

    .line 21
    iget-object v0, p1, Lg2/l;->k:Lg2/e;

    .line 22
    iput-object v0, p0, Lg2/m;->k:Lg2/e;

    .line 23
    iget-object p1, p1, Lg2/l;->l:Lg2/e;

    iput-object p1, p0, Lg2/m;->l:Lg2/e;

    return-void
.end method

.method public static a(Landroid/content/Context;IILg2/c;)Lg2/l;
    .locals 6

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    :cond_0
    sget-object p2, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    sget p1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget p2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    invoke-static {p0, v2, p3}, Lg2/m;->d(Landroid/content/res/TypedArray;ILg2/c;)Lg2/c;

    move-result-object p3

    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    invoke-static {p0, v2, p3}, Lg2/m;->d(Landroid/content/res/TypedArray;ILg2/c;)Lg2/c;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    invoke-static {p0, v3, p3}, Lg2/m;->d(Landroid/content/res/TypedArray;ILg2/c;)Lg2/c;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    invoke-static {p0, v4, p3}, Lg2/m;->d(Landroid/content/res/TypedArray;ILg2/c;)Lg2/c;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    invoke-static {p0, v5, p3}, Lg2/m;->d(Landroid/content/res/TypedArray;ILg2/c;)Lg2/c;

    move-result-object p3

    new-instance v5, Lg2/l;

    invoke-direct {v5}, Lg2/l;-><init>()V

    invoke-static {p2}, Lcom/google/android/material/slider/h;->Q(I)Lcom/google/android/material/slider/h;

    move-result-object p2

    iput-object p2, v5, Lg2/l;->a:Lcom/google/android/material/slider/h;

    invoke-static {p2}, Lg2/l;->b(Lcom/google/android/material/slider/h;)V

    iput-object v2, v5, Lg2/l;->e:Lg2/c;

    invoke-static {v0}, Lcom/google/android/material/slider/h;->Q(I)Lcom/google/android/material/slider/h;

    move-result-object p2

    iput-object p2, v5, Lg2/l;->b:Lcom/google/android/material/slider/h;

    invoke-static {p2}, Lg2/l;->b(Lcom/google/android/material/slider/h;)V

    iput-object v3, v5, Lg2/l;->f:Lg2/c;

    invoke-static {v1}, Lcom/google/android/material/slider/h;->Q(I)Lcom/google/android/material/slider/h;

    move-result-object p2

    iput-object p2, v5, Lg2/l;->c:Lcom/google/android/material/slider/h;

    invoke-static {p2}, Lg2/l;->b(Lcom/google/android/material/slider/h;)V

    iput-object v4, v5, Lg2/l;->g:Lg2/c;

    invoke-static {p1}, Lcom/google/android/material/slider/h;->Q(I)Lcom/google/android/material/slider/h;

    move-result-object p1

    iput-object p1, v5, Lg2/l;->d:Lcom/google/android/material/slider/h;

    invoke-static {p1}, Lg2/l;->b(Lcom/google/android/material/slider/h;)V

    iput-object p3, v5, Lg2/l;->h:Lg2/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lg2/l;
    .locals 2

    new-instance v0, Lg2/a;

    const/4 v1, 0x0

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lg2/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lg2/m;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILg2/c;)Lg2/l;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/util/AttributeSet;IILg2/c;)Lg2/l;
    .locals 1

    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v0, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, p4}, Lg2/m;->a(Landroid/content/Context;IILg2/c;)Lg2/l;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/res/TypedArray;ILg2/c;)Lg2/c;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Lg2/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lg2/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    new-instance p0, Lg2/j;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lg2/j;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;)Z
    .locals 5

    iget-object v0, p0, Lg2/m;->l:Lg2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lg2/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg2/m;->j:Lg2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg2/m;->i:Lg2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg2/m;->k:Lg2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lg2/m;->e:Lg2/c;

    invoke-interface {v1, p1}, Lg2/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Lg2/m;->f:Lg2/c;

    invoke-interface {v4, p1}, Lg2/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lg2/m;->h:Lg2/c;

    invoke-interface {v4, p1}, Lg2/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lg2/m;->g:Lg2/c;

    invoke-interface {v4, p1}, Lg2/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-object v1, p0, Lg2/m;->b:Lcom/google/android/material/slider/h;

    instance-of v1, v1, Lg2/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg2/m;->a:Lcom/google/android/material/slider/h;

    instance-of v1, v1, Lg2/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg2/m;->c:Lcom/google/android/material/slider/h;

    instance-of v1, v1, Lg2/k;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg2/m;->d:Lcom/google/android/material/slider/h;

    instance-of v1, v1, Lg2/k;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2
.end method

.method public final f(F)Lg2/m;
    .locals 1

    new-instance v0, Lg2/l;

    invoke-direct {v0, p0}, Lg2/l;-><init>(Lg2/m;)V

    invoke-virtual {v0, p1}, Lg2/l;->c(F)V

    new-instance p1, Lg2/m;

    invoke-direct {p1, v0}, Lg2/m;-><init>(Lg2/l;)V

    return-object p1
.end method
