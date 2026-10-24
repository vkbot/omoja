.class public final Landroidx/constraintlayout/motion/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final E:[[F

.field public static final F:[[F


# instance fields
.field public A:F

.field public B:F

.field public C:I

.field public D:I

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:F

.field public i:I

.field public j:Z

.field public k:F

.field public l:F

.field public m:Z

.field public final n:[F

.field public final o:[I

.field public p:F

.field public q:F

.field public final r:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public s:F

.field public t:F

.field public u:Z

.field public v:F

.field public w:I

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Landroidx/constraintlayout/motion/widget/d;->E:[[F

    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/motion/widget/d;->F:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/content/res/XmlResourceParser;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->a:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->b:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->c:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->d:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->e:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->f:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/d;->g:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/d;->h:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->i:I

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/d;->j:Z

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->k:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->l:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/d;->m:Z

    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/d;->n:[F

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/d;->o:[I

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/d;->s:F

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/d;->t:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/d;->u:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->v:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->w:I

    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->x:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->y:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->z:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->A:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->B:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->C:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->D:I

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/d;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move p3, v0

    :goto_0
    if-ge p3, p2, :cond_14

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->d:I

    goto/16 :goto_1

    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    if-ne v3, v4, :cond_1

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->a:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->a:I

    sget-object v4, Landroidx/constraintlayout/motion/widget/d;->E:[[F

    aget-object v3, v4, v3

    aget v4, v3, v0

    iput v4, p0, Landroidx/constraintlayout/motion/widget/d;->h:F

    aget v3, v3, v2

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->g:F

    goto/16 :goto_1

    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->b:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->b:I

    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    sget-object v4, Landroidx/constraintlayout/motion/widget/d;->F:[[F

    aget-object v3, v4, v3

    aget v4, v3, v0

    iput v4, p0, Landroidx/constraintlayout/motion/widget/d;->k:F

    aget v3, v3, v2

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->l:F

    goto/16 :goto_1

    :cond_2
    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->l:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->k:F

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/d;->j:Z

    goto/16 :goto_1

    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    if-ne v3, v4, :cond_4

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->s:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->s:F

    goto/16 :goto_1

    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    if-ne v3, v4, :cond_5

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->t:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->t:F

    goto/16 :goto_1

    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v3, v4, :cond_6

    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/d;->u:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/d;->u:Z

    goto/16 :goto_1

    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

    if-ne v3, v4, :cond_7

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->v:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->v:F

    goto/16 :goto_1

    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragThreshold:I

    if-ne v3, v4, :cond_8

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->x:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->x:F

    goto/16 :goto_1

    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    if-ne v3, v4, :cond_9

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->e:I

    goto/16 :goto_1

    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    if-ne v3, v4, :cond_a

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->c:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->c:I

    goto/16 :goto_1

    :cond_a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    if-ne v3, v4, :cond_b

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->w:I

    goto :goto_1

    :cond_b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    if-ne v3, v4, :cond_c

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->f:I

    goto :goto_1

    :cond_c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_rotationCenterId:I

    if-ne v3, v4, :cond_d

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->i:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->i:I

    goto :goto_1

    :cond_d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springDamping:I

    if-ne v3, v4, :cond_e

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->y:F

    goto :goto_1

    :cond_e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springMass:I

    if-ne v3, v4, :cond_f

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->z:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->z:F

    goto :goto_1

    :cond_f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStiffness:I

    if-ne v3, v4, :cond_10

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->A:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->A:F

    goto :goto_1

    :cond_10
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStopThreshold:I

    if-ne v3, v4, :cond_11

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->B:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->B:F

    goto :goto_1

    :cond_11
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springBoundary:I

    if-ne v3, v4, :cond_12

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->C:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->C:I

    goto :goto_1

    :cond_12
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_autoCompleteMode:I

    if-ne v3, v4, :cond_13

    iget v4, p0, Landroidx/constraintlayout/motion/widget/d;->D:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/d;->D:I

    :cond_13
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/d;->f:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method public final b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/d;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method public final c(Z)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x6

    sget-object v3, Landroidx/constraintlayout/motion/widget/d;->E:[[F

    sget-object v4, Landroidx/constraintlayout/motion/widget/d;->F:[[F

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eqz p1, :cond_0

    aget-object p1, v4, v0

    aput-object p1, v4, v1

    aget-object p1, v4, v7

    aput-object p1, v4, v6

    aget-object p1, v3, v7

    aput-object p1, v3, v6

    aget-object p1, v3, v5

    aput-object p1, v3, v2

    goto :goto_0

    :cond_0
    aget-object p1, v4, v7

    aput-object p1, v4, v1

    aget-object p1, v4, v0

    aput-object p1, v4, v6

    aget-object p1, v3, v5

    aput-object p1, v3, v6

    aget-object p1, v3, v7

    aput-object p1, v3, v2

    :goto_0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/d;->a:I

    aget-object p1, v3, p1

    const/4 v0, 0x0

    aget v1, p1, v0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/d;->h:F

    aget p1, p1, v5

    iput p1, p0, Landroidx/constraintlayout/motion/widget/d;->g:F

    iget p1, p0, Landroidx/constraintlayout/motion/widget/d;->b:I

    if-lt p1, v2, :cond_1

    return-void

    :cond_1
    aget-object p1, v4, p1

    aget v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->k:F

    aget p1, p1, v5

    iput p1, p0, Landroidx/constraintlayout/motion/widget/d;->l:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/d;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rotation"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/d;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/d;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
