.class public Landroidx/constraintlayout/utils/widget/MotionLabel;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lr/b;


# instance fields
.field public A:F

.field public B:F

.field public C:Landroid/graphics/drawable/Drawable;

.field public D:Landroid/graphics/Matrix;

.field public E:Landroid/graphics/Bitmap;

.field public F:Landroid/graphics/BitmapShader;

.field public G:Landroid/graphics/Matrix;

.field public H:F

.field public I:F

.field public J:F

.field public K:F

.field public final L:Landroid/graphics/Paint;

.field public M:I

.field public N:Landroid/graphics/Rect;

.field public O:Landroid/graphics/Paint;

.field public P:F

.field public Q:F

.field public R:F

.field public S:F

.field public T:F

.field public final a:Landroid/text/TextPaint;

.field public b:Landroid/graphics/Path;

.field public c:I

.field public d:I

.field public e:Z

.field public f:F

.field public g:F

.field public h:Ls/e;

.field public i:Landroid/graphics/RectF;

.field public j:F

.field public k:F

.field public l:I

.field public m:I

.field public n:F

.field public o:Ljava/lang/String;

.field public p:Z

.field public final q:Landroid/graphics/Rect;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:Z

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    const v0, 0xffff

    .line 4
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    .line 5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->d:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 8
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    const/high16 v3, 0x42400000    # 48.0f

    .line 9
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    .line 10
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    .line 11
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    const-string v3, "Hello World"

    .line 12
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->p:Z

    .line 14
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->q:Landroid/graphics/Rect;

    .line 15
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    .line 16
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->s:I

    .line 17
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    .line 18
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->u:I

    const v3, 0x800033

    .line 19
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->w:I

    .line 20
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->x:I

    .line 21
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->y:Z

    .line 22
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    .line 23
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    .line 24
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    .line 25
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    .line 26
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->L:Landroid/graphics/Paint;

    .line 27
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->M:I

    .line 28
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->Q:F

    .line 29
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->R:F

    .line 30
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->S:F

    .line 31
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->T:F

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    .line 35
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    const v0, 0xffff

    .line 36
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    .line 37
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->d:I

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 40
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    const/high16 v3, 0x42400000    # 48.0f

    .line 41
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    .line 42
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    .line 43
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    const-string v3, "Hello World"

    .line 44
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    const/4 v3, 0x1

    .line 45
    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->p:Z

    .line 46
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->q:Landroid/graphics/Rect;

    .line 47
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    .line 48
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->s:I

    .line 49
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    .line 50
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->u:I

    const v3, 0x800033

    .line 51
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->w:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->x:I

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->y:Z

    .line 54
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    .line 55
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    .line 57
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->L:Landroid/graphics/Paint;

    .line 59
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->M:I

    .line 60
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->Q:F

    .line 61
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->R:F

    .line 62
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->S:F

    .line 63
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->T:F

    .line 64
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    .line 67
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    const p3, 0xffff

    .line 68
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    .line 69
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->d:I

    const/4 p3, 0x0

    .line 70
    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 72
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    const/high16 v2, 0x42400000    # 48.0f

    .line 73
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    .line 74
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    .line 75
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    const-string v2, "Hello World"

    .line 76
    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    const/4 v2, 0x1

    .line 77
    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->p:Z

    .line 78
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->q:Landroid/graphics/Rect;

    .line 79
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    .line 80
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->s:I

    .line 81
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    .line 82
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->u:I

    const v2, 0x800033

    .line 83
    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->w:I

    .line 84
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->x:I

    .line 85
    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->y:Z

    .line 86
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    .line 87
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    .line 88
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    .line 89
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->L:Landroid/graphics/Paint;

    .line 91
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->M:I

    .line 92
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->Q:F

    .line 93
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->R:F

    .line 94
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->S:F

    .line 95
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->T:F

    .line 96
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getHorizontalOffset()F
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    div-float/2addr v0, v2

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    mul-float/2addr v2, v0

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->A:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->A:F

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    sub-float/2addr v0, v2

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    add-float/2addr p0, v1

    mul-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private getVerticalOffset()F
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    div-float/2addr v0, v2

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->B:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    :cond_1
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->B:F

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    sub-float/2addr v1, p0

    mul-float/2addr v1, v3

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final a(F)V
    .locals 11

    iget-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    const/4 v9, 0x0

    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v9, v5, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ly1/l;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionLabel"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    iget p1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v10, Landroid/graphics/Rect;->right:I

    iget p1, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v10, Landroid/graphics/Rect;->left:I

    iget p1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v10, Landroid/graphics/Rect;->bottom:I

    iget p1, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v10, Landroid/graphics/Rect;->top:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iput-boolean v9, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->p:Z

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Landroidx/appcompat/R$attr;->colorPrimary:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel:[I

    invoke-virtual {v1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v3, p1

    :goto_0
    if-ge v3, v1, :cond_17

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_text:I

    if-ne v4, v5, :cond_0

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_fontFamily:I

    if-ne v4, v5, :cond_1

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->v:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_scaleFromTextSize:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    float-to-int v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    goto/16 :goto_1

    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textSize:I

    if-ne v4, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    float-to-int v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    goto/16 :goto_1

    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textStyle:I

    if-ne v4, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->l:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->l:I

    goto/16 :goto_1

    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_typeface:I

    if-ne v4, v5, :cond_5

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->m:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->m:I

    goto/16 :goto_1

    :cond_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_textColor:I

    if-ne v4, v5, :cond_6

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    goto/16 :goto_1

    :cond_6
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_borderRound:I

    if-ne v4, v5, :cond_7

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRound(F)V

    goto/16 :goto_1

    :cond_7
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_borderRoundPercent:I

    if-ne v4, v5, :cond_8

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRoundPercent(F)V

    goto/16 :goto_1

    :cond_8
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_gravity:I

    if-ne v4, v5, :cond_9

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setGravity(I)V

    goto/16 :goto_1

    :cond_9
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_android_autoSizeTextType:I

    if-ne v4, v5, :cond_a

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->x:I

    goto/16 :goto_1

    :cond_a
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textOutlineColor:I

    if-ne v4, v5, :cond_b

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->d:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->d:I

    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    goto/16 :goto_1

    :cond_b
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textOutlineThickness:I

    if-ne v4, v5, :cond_c

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    goto/16 :goto_1

    :cond_c
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackground:I

    if-ne v4, v5, :cond_d

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->C:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    goto/16 :goto_1

    :cond_d
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundPanX:I

    if-ne v4, v5, :cond_e

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->Q:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->Q:F

    goto/16 :goto_1

    :cond_e
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundPanY:I

    if-ne v4, v5, :cond_f

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->R:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->R:F

    goto :goto_1

    :cond_f
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textPanX:I

    if-ne v4, v5, :cond_10

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    goto :goto_1

    :cond_10
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textPanY:I

    if-ne v4, v5, :cond_11

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    goto :goto_1

    :cond_11
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundRotate:I

    if-ne v4, v5, :cond_12

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->T:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->T:F

    goto :goto_1

    :cond_12
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textBackgroundZoom:I

    if-ne v4, v5, :cond_13

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->S:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->S:F

    goto :goto_1

    :cond_13
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureHeight:I

    if-ne v4, v5, :cond_14

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    goto :goto_1

    :cond_14
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureWidth:I

    if-ne v4, v5, :cond_15

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    goto :goto_1

    :cond_15
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLabel_textureEffect:I

    if-ne v4, v5, :cond_16

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->M:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->M:I

    :cond_16
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_18
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->C:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x80

    const/4 v3, 0x2

    if-eqz p2, :cond_21

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->G:Landroid/graphics/Matrix;

    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-gtz p2, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    if-nez p2, :cond_1a

    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_19

    move p2, v1

    goto :goto_2

    :cond_19
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    float-to-int p2, p2

    :cond_1a
    :goto_2
    if-gtz v4, :cond_1c

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_1c

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v1

    goto :goto_3

    :cond_1b
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    float-to-int v4, v4

    :cond_1c
    :goto_3
    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->M:I

    if-eqz v5, :cond_1d

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 v4, v4, 0x2

    :cond_1d
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->E:Landroid/graphics/Bitmap;

    new-instance p2, Landroid/graphics/Canvas;

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->E:Landroid/graphics/Bitmap;

    invoke-direct {p2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v4, p1, p1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->M:I

    if-eqz p2, :cond_20

    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->E:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v4, v3

    div-int/2addr v5, v3

    invoke-static {p2, v4, v5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    move v6, p1

    :goto_4
    const/4 v7, 0x4

    if-ge v6, v7, :cond_1f

    const/16 v7, 0x20

    if-lt v4, v7, :cond_1f

    if-ge v5, v7, :cond_1e

    goto :goto_5

    :cond_1e
    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v5, 0x2

    invoke-static {p2, v4, v5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_1f
    :goto_5
    iput-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->E:Landroid/graphics/Bitmap;

    :cond_20
    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->E:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v4, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->F:Landroid/graphics/BitmapShader;

    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->s:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->u:I

    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->v:Ljava/lang/String;

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->m:I

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->l:I

    if-eqz p2, :cond_22

    invoke-static {p2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_23

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_9

    :cond_22
    const/4 p2, 0x0

    :cond_23
    if-eq v4, v2, :cond_26

    if-eq v4, v3, :cond_25

    const/4 v6, 0x3

    if-eq v4, v6, :cond_24

    goto :goto_6

    :cond_24
    sget-object p2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_6

    :cond_25
    sget-object p2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_6

    :cond_26
    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_6
    const/4 v4, 0x0

    if-lez v5, :cond_2b

    if-nez p2, :cond_27

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_7

    :cond_27
    invoke-static {p2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    :goto_7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    goto :goto_8

    :cond_28
    move p2, p1

    :goto_8
    not-int p2, p2

    and-int/2addr p2, v5

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_29

    move p1, v2

    :cond_29
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_2a

    const/high16 v4, -0x41800000    # -0.25f

    :cond_2a
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    goto :goto_9

    :cond_2b
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_9
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setTextSize(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public final c(FFFF)V
    .locals 6

    const/high16 v0, 0x3f000000    # 0.5f

    add-float v1, p1, v0

    float-to-int v1, v1

    int-to-float v2, v1

    sub-float v2, p1, v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->z:F

    add-float v2, p3, v0

    float-to-int v2, v2

    sub-int v3, v2, v1

    add-float v4, p4, v0

    float-to-int v4, v4

    add-float/2addr v0, p2

    float-to-int v0, v0

    sub-int v5, v4, v0

    sub-float/2addr p3, p1

    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->A:F

    sub-float/2addr p4, p2

    iput p4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->B:F

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->G:Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->A:F

    iput p4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->B:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->d()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-ne p1, v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v5, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->measure(II)V

    invoke-super {p0, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    :goto_2
    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->y:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->O:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->O:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->P:F

    :cond_3
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->A:F

    iput p4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->B:F

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->O:Landroid/graphics/Paint;

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->s:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->u:I

    int-to-float v1, v1

    sub-float/2addr p4, v1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    int-to-float v1, v1

    sub-float/2addr p4, v1

    int-to-float p1, p1

    mul-float v1, p1, p4

    mul-float v2, v0, p3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget p4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->P:F

    mul-float/2addr p4, p3

    div-float/2addr p4, p1

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_3

    :cond_4
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->P:F

    mul-float/2addr p1, p4

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_3
    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    div-float/2addr p1, p2

    :goto_4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->a(F)V

    :cond_7
    return-void
.end method

.method public final d()V
    .locals 11

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->Q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->Q:F

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->R:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->R:F

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->S:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->S:F

    :goto_2
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->T:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->T:F

    :goto_3
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->G:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->E:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->A:F

    goto :goto_4

    :cond_4
    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    :goto_4
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->B:F

    goto :goto_5

    :cond_5
    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    :goto_5
    mul-float v8, v4, v7

    mul-float v9, v5, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    div-float v8, v6, v4

    goto :goto_6

    :cond_6
    div-float v8, v7, v5

    :goto_6
    mul-float/2addr v3, v8

    iget-object v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->G:Landroid/graphics/Matrix;

    invoke-virtual {v8, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v4, v3

    sub-float v8, v6, v4

    mul-float/2addr v3, v5

    sub-float v5, v7, v3

    iget v9, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-nez v9, :cond_7

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    div-float/2addr v5, v10

    :cond_7
    iget v9, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_8

    iget v8, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    div-float/2addr v8, v10

    :cond_8
    mul-float/2addr v0, v8

    add-float/2addr v0, v6

    sub-float/2addr v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    mul-float/2addr v2, v5

    add-float/2addr v2, v7

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->G:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->G:Landroid/graphics/Matrix;

    div-float/2addr v6, v10

    div-float/2addr v7, v10

    invoke-virtual {v0, v1, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->F:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->G:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getRound()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    return p0
.end method

.method public getRoundPercent()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    return p0
.end method

.method public getScaleFromTextSize()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    return p0
.end method

.method public getTextBackgroundPanX()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->Q:F

    return p0
.end method

.method public getTextBackgroundPanY()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->R:F

    return p0
.end method

.method public getTextBackgroundRotate()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->T:F

    return p0
.end method

.method public getTextBackgroundZoom()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->S:F

    return p0
.end method

.method public getTextOutlineColor()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->d:I

    return p0
.end method

.method public getTextPanX()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    return p0
.end method

.method public getTextPanY()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    return p0
.end method

.method public getTextureHeight()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    return p0
.end method

.method public getTextureWidth()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    return p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final layout(IIII)V
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    div-float/2addr v1, v2

    :goto_0
    sub-int v2, p3, p1

    int-to-float v2, v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->A:F

    sub-int v2, p4, p2

    int-to-float v2, v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->B:F

    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->y:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->O:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->O:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->O:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->P:F

    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->O:Landroid/graphics/Paint;

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->N:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3fa66666    # 1.3f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->A:F

    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->s:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->B:F

    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->u:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    if-eqz v0, :cond_3

    int-to-float v2, v2

    mul-float v7, v2, v6

    int-to-float v4, v4

    mul-float v8, v4, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->P:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    :cond_2
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->P:F

    mul-float/2addr v2, v6

    div-float/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    :cond_3
    int-to-float v1, v2

    mul-float v2, v1, v6

    int-to-float v3, v4

    mul-float v4, v3, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    div-float v1, v5, v1

    goto :goto_1

    :cond_4
    div-float v1, v6, v3

    :cond_5
    :goto_1
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    if-nez v2, :cond_6

    if-nez v0, :cond_8

    :cond_6
    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->G:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    sub-float/2addr p3, p1

    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->A:F

    sub-float/2addr p4, p2

    iput p4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->B:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->d()V

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->a(F)V

    :cond_8
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    div-float/2addr v0, v2

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    if-nez v2, :cond_1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHorizontalOffset()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    int-to-float v1, v1

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getVerticalOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->z:F

    add-float/2addr p0, v0

    invoke-virtual {p1, v2, p0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->p:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->a(F)V

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    :cond_3
    iget-boolean v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->L:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    int-to-float v2, v2

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHorizontalOffset()F

    move-result v4

    add-float/2addr v2, v4

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    int-to-float v4, v4

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getVerticalOffset()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->F:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->F:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_4
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->F:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->d:I

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    neg-float v0, v2

    neg-float v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getHorizontalOffset()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    int-to-float v1, v1

    invoke-direct {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->getVerticalOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :goto_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->y:Z

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->s:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->u:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->x:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->y:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->q:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v2, v5, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const v2, 0x3f7fff58    # 0.99999f

    if-eq v0, v3, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->r:I

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->s:I

    add-int/2addr v0, v4

    add-int/2addr p1, v0

    if-eq v1, v3, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->t:I

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->u:I

    add-int/2addr p2, v1

    add-int/2addr p2, v0

    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGravity(I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    const v0, 0x800007

    and-int v1, p1, v0

    const v2, 0x800003

    if-nez v1, :cond_0

    or-int/2addr p1, v2

    :cond_0
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->w:I

    if-eq p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->w:I

    and-int/lit8 v1, p1, 0x70

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x30

    if-eq v1, v6, :cond_4

    const/16 v6, 0x50

    if-eq v1, v6, :cond_3

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    goto :goto_0

    :cond_3
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    goto :goto_0

    :cond_4
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    :goto_0
    and-int/2addr p1, v0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_6

    const v0, 0x800005

    if-eq p1, v0, :cond_5

    iput v3, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    goto :goto_1

    :cond_5
    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    goto :goto_1

    :cond_6
    iput v5, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    :goto_1
    return-void
.end method

.method public setRound(F)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->setRoundPercent(F)V

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    if-nez p1, :cond_2

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->i:Landroid/graphics/RectF;

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->i:Landroid/graphics/RectF;

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->h:Ls/e;

    if-nez p1, :cond_4

    new-instance p1, Ls/e;

    invoke-direct {p1, p0, v2}, Ls/e;-><init>(Landroidx/constraintlayout/utils/widget/MotionLabel;I)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->h:Ls/e;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->i:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->i:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->g:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_6
    return-void
.end method

.method public setRoundPercent(F)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->i:Landroid/graphics/RectF;

    if-nez p1, :cond_2

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->i:Landroid/graphics/RectF;

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->h:Ls/e;

    if-nez p1, :cond_3

    new-instance p1, Ls/e;

    invoke-direct {p1, p0, v2}, Ls/e;-><init>(Landroidx/constraintlayout/utils/widget/MotionLabel;I)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->h:Ls/e;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->f:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->i:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v4, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->b:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->i:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_5
    return-void
.end method

.method public setScaleFromTextSize(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextBackgroundPanX(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->Q:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextBackgroundPanY(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->R:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextBackgroundRotate(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->T:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextBackgroundZoom(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->S:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextFillColor(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextOutlineColor(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextOutlineThickness(F)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->n:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->e:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextPanX(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->J:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextPanY(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->K:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ly1/l;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionLabel"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->j:F

    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->k:F

    div-float/2addr p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionLabel;->a(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextureHeight(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->H:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextureWidth(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->I:F

    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionLabel;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionLabel;->a:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method
