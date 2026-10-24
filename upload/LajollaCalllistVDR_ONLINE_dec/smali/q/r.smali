.class public final Lq/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ls/n;

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lq/r;->b:I

    .line 3
    iput v0, p0, Lq/r;->c:I

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lq/r;->e:Ljava/lang/Object;

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lq/r;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lq/r;->g:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lq/r;->d:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 10
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    :goto_0
    const/4 v2, 0x1

    if-eq p3, v2, :cond_7

    if-eqz p3, :cond_5

    const/4 v3, 0x2

    if-eq p3, v3, :cond_0

    goto/16 :goto_3

    .line 11
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "Variant"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v2, v6

    goto :goto_2

    :sswitch_1
    const-string v2, "layoutDescription"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_2
    const-string v4, "StateSet"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    :sswitch_3
    const-string v2, "State"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v2, v3

    goto :goto_2

    :sswitch_4
    const-string v2, "ConstraintSet"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v0

    :goto_2
    if-eq v2, v3, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    goto :goto_3

    .line 13
    :cond_2
    invoke-virtual {p0, p1, p2}, Lq/r;->f(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_3

    .line 14
    :cond_3
    new-instance p3, Ls/g;

    invoke-direct {p3, p1, p2}, Ls/g;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v1, :cond_6

    .line 15
    iget-object v2, v1, Ls/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_4
    new-instance p3, Ls/f;

    invoke-direct {p3, p1, p2}, Ls/f;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 17
    iget-object v1, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    iget v2, p3, Ls/f;->a:I

    invoke-virtual {v1, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, p3

    goto :goto_3

    .line 18
    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 19
    :cond_6
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lq/r;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p1, Lm/g;

    invoke-direct {p1}, Lm/g;-><init>()V

    iput-object p1, p0, Lq/r;->d:Ljava/lang/Object;

    .line 24
    new-instance p1, Lm/g;

    invoke-direct {p1}, Lm/g;-><init>()V

    iput-object p1, p0, Lq/r;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lq/r;->a:Ls/n;

    .line 26
    iput-object p1, p0, Lq/r;->f:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lm/g;Lm/g;)V
    .locals 5

    iget-object v0, p0, Lm/p;->u0:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, p0, v1}, Lm/f;->h(Lm/f;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/f;

    instance-of v3, v2, Lm/a;

    if-eqz v3, :cond_0

    new-instance v3, Lm/a;

    invoke-direct {v3}, Lm/a;-><init>()V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lm/k;

    if-eqz v3, :cond_1

    new-instance v3, Lm/k;

    invoke-direct {v3}, Lm/k;-><init>()V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lm/i;

    if-eqz v3, :cond_2

    new-instance v3, Lm/i;

    invoke-direct {v3}, Lm/i;-><init>()V

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lm/n;

    if-eqz v3, :cond_3

    new-instance v3, Lm/n;

    invoke-direct {v3}, Lm/n;-><init>()V

    goto :goto_1

    :cond_3
    instance-of v3, v2, Lm/l;

    if-eqz v3, :cond_4

    new-instance v3, Lm/m;

    invoke-direct {v3}, Lm/m;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v3, Lm/f;

    invoke-direct {v3}, Lm/f;-><init>()V

    :goto_1
    iget-object v4, p1, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lm/f;->V:Lm/f;

    if-eqz v4, :cond_5

    check-cast v4, Lm/p;

    iget-object v4, v4, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lm/f;->E()V

    :cond_5
    iput-object p1, v3, Lm/f;->V:Lm/f;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/f;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/f;

    invoke-virtual {v0, p1, v1}, Lm/f;->h(Lm/f;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static d(Lm/g;Landroid/view/View;)Lm/f;
    .locals 4

    iget-object v0, p0, Lm/f;->h0:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/f;

    iget-object v3, v2, Lm/f;->h0:Ljava/lang/Object;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-array v3, v1, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    iget-object v6, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lq/n;

    invoke-direct {v7, v6}, Lq/n;-><init>(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    aput v8, v3, v5

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v8, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_10

    iget-object v7, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq/n;

    if-nez v8, :cond_1

    move/from16 v18, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v19, v5

    goto/16 :goto_6

    :cond_1
    iget-object v9, v0, Lq/r;->a:Ls/n;

    iget-object v10, v8, Lq/n;->a:Landroid/graphics/Rect;

    const-string v11, ")"

    const-string v12, " ("

    const-string v13, "no widget for  "

    const-string v14, "MotionLayout"

    if-eqz v9, :cond_b

    iget-object v9, v0, Lq/r;->d:Ljava/lang/Object;

    check-cast v9, Lm/g;

    invoke-static {v9, v7}, Lq/r;->d(Lm/g;Landroid/view/View;)Lm/f;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v15, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v15, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->q(Landroidx/constraintlayout/motion/widget/MotionLayout;Lm/f;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v15, v0, Lq/r;->a:Ls/n;

    iget-object v4, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v6, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object/from16 v16, v2

    iget v2, v15, Ls/n;->c:I

    if-eqz v2, :cond_2

    invoke-static {v9, v10, v2, v4, v6}, Lq/n;->g(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    :cond_2
    iget-object v4, v8, Lq/n;->f:Lq/u;

    const/4 v6, 0x0

    iput v6, v4, Lq/u;->d:F

    iput v6, v4, Lq/u;->e:F

    invoke-virtual {v8, v4}, Lq/n;->f(Lq/u;)V

    iget v6, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v17, v3

    iget v3, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move/from16 v18, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    move/from16 v19, v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v3, v1, v5}, Lq/u;->d(FFFF)V

    iget v1, v8, Lq/n;->c:I

    invoke-virtual {v15, v1}, Ls/n;->h(I)Ls/i;

    move-result-object v1

    invoke-virtual {v4, v1}, Lq/u;->a(Ls/i;)V

    iget-object v3, v1, Ls/i;->d:Ls/k;

    iget v4, v3, Ls/k;->g:F

    iput v4, v8, Lq/n;->l:F

    iget-object v4, v8, Lq/n;->h:Lq/l;

    iget v5, v8, Lq/n;->c:I

    invoke-virtual {v4, v9, v15, v2, v5}, Lq/l;->c(Landroid/graphics/Rect;Ls/n;II)V

    iget-object v1, v1, Ls/i;->f:Ls/m;

    iget v1, v1, Ls/m;->i:I

    iput v1, v8, Lq/n;->B:I

    iget v1, v3, Ls/k;->j:I

    iput v1, v8, Lq/n;->D:I

    iget v1, v3, Ls/k;->i:F

    iput v1, v8, Lq/n;->E:F

    iget-object v1, v8, Lq/n;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v3, Ls/k;->l:I

    iget-object v4, v3, Ls/k;->k:Ljava/lang/String;

    iget v3, v3, Ls/k;->m:I

    const/4 v5, -0x2

    if-eq v2, v5, :cond_9

    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    if-eq v2, v1, :cond_6

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x4

    if-eq v2, v1, :cond_4

    const/4 v1, 0x5

    if-eq v2, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_2

    :cond_5
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_2

    :cond_6
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_2

    :cond_7
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_2

    :cond_8
    invoke-static {v4}, Ll/e;->c(Ljava/lang/String;)Ll/e;

    move-result-object v1

    new-instance v2, Lq/m;

    invoke-direct {v2, v1}, Lq/m;-><init>(Ll/e;)V

    goto :goto_3

    :cond_9
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    :goto_2
    move-object v2, v1

    :goto_3
    iput-object v2, v8, Lq/n;->F:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_a
    move/from16 v18, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v19, v5

    iget-object v1, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/material/slider/h;->l0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/google/android/material/slider/h;->o0(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    move/from16 v18, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v19, v5

    iget-object v1, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    :goto_4
    iget-object v1, v0, Lq/r;->f:Ljava/lang/Object;

    check-cast v1, Ls/n;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lq/r;->e:Ljava/lang/Object;

    check-cast v1, Lm/g;

    invoke-static {v1, v7}, Lq/r;->d(Lm/g;Landroid/view/View;)Lm/f;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v2, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->q(Landroidx/constraintlayout/motion/widget/MotionLayout;Lm/f;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lq/r;->f:Ljava/lang/Object;

    check-cast v2, Ls/n;

    iget-object v3, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v2, Ls/n;->c:I

    if-eqz v5, :cond_d

    invoke-static {v1, v10, v5, v3, v4}, Lq/n;->g(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    goto :goto_5

    :cond_d
    move-object v10, v1

    :goto_5
    iget-object v1, v8, Lq/n;->g:Lq/u;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lq/u;->d:F

    iput v3, v1, Lq/u;->e:F

    invoke-virtual {v8, v1}, Lq/n;->f(Lq/u;)V

    iget v3, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v10, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v4, v6, v7}, Lq/u;->d(FFFF)V

    iget v3, v8, Lq/n;->c:I

    invoke-virtual {v2, v3}, Ls/n;->h(I)Ls/i;

    move-result-object v3

    invoke-virtual {v1, v3}, Lq/u;->a(Ls/i;)V

    iget-object v1, v8, Lq/n;->i:Lq/l;

    iget v3, v8, Lq/n;->c:I

    invoke-virtual {v1, v10, v2, v5, v3}, Lq/l;->c(Landroid/graphics/Rect;Ls/n;II)V

    goto :goto_6

    :cond_e
    iget-object v1, v0, Lq/r;->g:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/material/slider/h;->l0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/google/android/material/slider/h;->o0(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v1, v18

    goto/16 :goto_1

    :cond_10
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_12

    aget v2, v17, v4

    move-object/from16 v3, v16

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/n;

    iget-object v5, v2, Lq/n;->f:Lq/u;

    iget v5, v5, Lq/u;->l:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_11

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/n;

    iget-object v7, v5, Lq/n;->f:Lq/u;

    iget-object v8, v2, Lq/n;->f:Lq/u;

    invoke-virtual {v8, v5, v7}, Lq/u;->f(Lq/n;Lq/u;)V

    iget-object v2, v2, Lq/n;->g:Lq/u;

    iget-object v7, v5, Lq/n;->g:Lq/u;

    invoke-virtual {v2, v5, v7}, Lq/u;->f(Lq/n;Lq/u;)V

    :cond_11
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v3

    goto :goto_7

    :cond_12
    return-void
.end method

.method public final b(II)V
    .locals 6

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    move-result v0

    iget-object v1, p0, Lq/r;->g:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v1

    if-ne v2, v1, :cond_6

    iget-object v1, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v2, Lm/g;

    iget-object v3, p0, Lq/r;->f:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ls/n;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ls/n;

    iget v4, v4, Ls/n;->c:I

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, p1

    :goto_1
    move-object v5, v3

    check-cast v5, Ls/n;

    if-eqz v5, :cond_3

    check-cast v3, Ls/n;

    iget v3, v3, Ls/n;->c:I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, p1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, p2

    :goto_3
    invoke-virtual {v1, v2, v0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lm/g;III)V

    iget-object v1, p0, Lq/r;->a:Ls/n;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v3, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast v3, Lm/g;

    iget v1, v1, Ls/n;->c:I

    if-nez v1, :cond_4

    move v4, p1

    goto :goto_4

    :cond_4
    move v4, p2

    :goto_4
    if-nez v1, :cond_5

    move p1, p2

    :cond_5
    invoke-virtual {v2, v3, v0, v4, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lm/g;III)V

    goto :goto_9

    :cond_6
    iget-object v1, p0, Lq/r;->a:Ls/n;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v3, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast v3, Lm/g;

    iget v1, v1, Ls/n;->c:I

    if-nez v1, :cond_7

    move v4, p1

    goto :goto_5

    :cond_7
    move v4, p2

    :goto_5
    if-nez v1, :cond_8

    move v1, p2

    goto :goto_6

    :cond_8
    move v1, p1

    :goto_6
    invoke-virtual {v2, v3, v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lm/g;III)V

    :cond_9
    iget-object v1, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v2, Lm/g;

    iget-object v3, p0, Lq/r;->f:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ls/n;

    if-eqz v4, :cond_b

    move-object v4, v3

    check-cast v4, Ls/n;

    iget v4, v4, Ls/n;->c:I

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    move v4, p2

    goto :goto_8

    :cond_b
    :goto_7
    move v4, p1

    :goto_8
    move-object v5, v3

    check-cast v5, Ls/n;

    if-eqz v5, :cond_c

    check-cast v3, Ls/n;

    iget v3, v3, Ls/n;->c:I

    if-nez v3, :cond_d

    :cond_c
    move p1, p2

    :cond_d
    invoke-virtual {v1, v2, v0, v4, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lm/g;III)V

    :cond_e
    :goto_9
    return-void
.end method

.method public final e(Ls/n;Ls/n;)V
    .locals 6

    iput-object p1, p0, Lq/r;->a:Ls/n;

    iput-object p2, p0, Lq/r;->f:Ljava/lang/Object;

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iput-object v0, p0, Lq/r;->d:Ljava/lang/Object;

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iput-object v0, p0, Lq/r;->e:Ljava/lang/Object;

    iget-object v1, p0, Lq/r;->d:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lm/g;

    iget-object v3, p0, Lq/r;->g:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-boolean v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lm/g;

    iget-object v4, v4, Lm/g;->y0:Ln/h;

    iput-object v4, v2, Lm/g;->y0:Ln/h;

    iget-object v2, v2, Lm/g;->w0:Ln/e;

    iput-object v4, v2, Ln/e;->f:Ln/h;

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lm/g;

    iget-object v2, v2, Lm/g;->y0:Ln/h;

    iput-object v2, v0, Lm/g;->y0:Ln/h;

    iget-object v0, v0, Lm/g;->w0:Ln/e;

    iput-object v2, v0, Ln/e;->f:Ln/h;

    check-cast v1, Lm/g;

    iget-object v0, v1, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v0, Lm/g;

    iget-object v0, v0, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lm/g;

    iget-object v1, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast v1, Lm/g;

    invoke-static {v0, v1}, Lq/r;->c(Lm/g;Lm/g;)V

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lm/g;

    iget-object v1, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v1, Lm/g;

    invoke-static {v0, v1}, Lq/r;->c(Lm/g;Lm/g;)V

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast v0, Lm/g;

    invoke-virtual {p0, v0, p1}, Lq/r;->h(Lm/g;Ls/n;)V

    :cond_0
    iget-object p1, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast p1, Lm/g;

    invoke-virtual {p0, p1, p2}, Lq/r;->h(Lm/g;Ls/n;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v0, Lm/g;

    invoke-virtual {p0, v0, p2}, Lq/r;->h(Lm/g;Ls/n;)V

    if-eqz p1, :cond_2

    iget-object p2, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast p2, Lm/g;

    invoke-virtual {p0, p2, p1}, Lq/r;->h(Lm/g;Ls/n;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast p1, Lm/g;

    iget-object p2, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result p2

    iput-boolean p2, p1, Lm/g;->z0:Z

    iget-object p1, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast p1, Lm/g;

    iget-object p2, p1, Lm/g;->v0:Landroidx/appcompat/app/d;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/d;->e(Lm/g;)V

    iget-object p1, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast p1, Lm/g;

    iget-object p2, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result p2

    iput-boolean p2, p1, Lm/g;->z0:Z

    iget-object p1, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast p1, Lm/g;

    iget-object p2, p1, Lm/g;->v0:Landroidx/appcompat/app/d;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/d;->e(Lm/g;)V

    iget-object p1, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast p2, Lm/g;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v1}, Lm/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p2, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast p2, Lm/g;

    invoke-virtual {p2, v1}, Lm/f;->N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast p1, Lm/g;

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p2}, Lm/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget-object p1, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast p1, Lm/g;

    invoke-virtual {p1, p2}, Lm/f;->O(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_4
    return-void
.end method

.method public final f(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 8

    new-instance v0, Ls/n;

    invoke-direct {v0}, Ls/n;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    const-string v5, "id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x2f

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-ne v1, v3, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_2
    const-string v2, "ConstraintLayoutStates"

    const-string v3, "error in parsing id"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    invoke-virtual {v0, p1, p2}, Ls/n;->k(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object p1, p0, Lq/r;->f:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method public final g()V
    .locals 14

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v4, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:I

    iput v1, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:I

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    invoke-virtual {p0, v2, v3}, Lq/r;->b(II)V

    iget-object v4, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_0

    if-ne v1, v4, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v3}, Lq/r;->b(II)V

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast v1, Lm/g;

    invoke-virtual {v1}, Lm/f;->s()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:I

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast v1, Lm/g;

    invoke-virtual {v1}, Lm/f;->m()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v1, Lm/g;

    invoke-virtual {v1}, Lm/f;->s()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:I

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v1, Lm/g;

    invoke-virtual {v1}, Lm/f;->m()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:I

    if-ne v1, v4, :cond_2

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v8

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v9

    :goto_2
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Z

    :cond_3
    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:I

    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_4

    if-nez v5, :cond_5

    :cond_4
    int-to-float v5, v0

    iget v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:F

    iget v10, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:I

    sub-int/2addr v10, v0

    int-to-float v0, v10

    mul-float/2addr v7, v0

    add-float/2addr v7, v5

    float-to-int v0, v7

    :cond_5
    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:I

    if-eq v5, v6, :cond_6

    if-nez v5, :cond_7

    :cond_6
    int-to-float v5, v4

    iget v6, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:F

    iget v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    sub-int/2addr v7, v4

    int-to-float v4, v7

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    :cond_7
    move v5, v4

    iget-object v4, p0, Lq/r;->d:Ljava/lang/Object;

    check-cast v4, Lm/g;

    iget-boolean v6, v4, Lm/g;->I0:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v6, Lm/g;

    iget-boolean v6, v6, Lm/g;->I0:Z

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    move v6, v8

    goto :goto_4

    :cond_9
    :goto_3
    move v6, v9

    :goto_4
    iget-boolean v4, v4, Lm/g;->J0:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v4, Lm/g;

    iget-boolean v4, v4, Lm/g;->J0:Z

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    move v7, v8

    goto :goto_6

    :cond_b
    :goto_5
    move v7, v9

    :goto_6
    move v4, v0

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->m(IIIIZZ)V

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lq/r;

    invoke-virtual {v2}, Lq/r;->a()V

    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move v3, v8

    :goto_7
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Ljava/util/HashMap;

    if-ge v3, v1, :cond_c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/n;

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    const/4 v6, -0x1

    if-eqz v5, :cond_d

    iget v5, v5, Lq/x;->p:I

    goto :goto_8

    :cond_d
    move v5, v6

    :goto_8
    if-eq v5, v6, :cond_f

    move v7, v8

    :goto_9
    if-ge v7, v1, :cond_f

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq/n;

    if-eqz v10, :cond_e

    iput v5, v10, Lq/n;->A:I

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_f
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v7, v7, [I

    move v10, v8

    move v11, v10

    :goto_a
    if-ge v10, v1, :cond_11

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lq/n;

    iget-object v13, v12, Lq/n;->f:Lq/u;

    iget v13, v13, Lq/u;->l:I

    if-eq v13, v6, :cond_10

    invoke-virtual {v5, v13, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v13, v11, 0x1

    iget-object v12, v12, Lq/n;->f:Lq/u;

    iget v12, v12, Lq/u;->l:I

    aput v12, v7, v11

    move v11, v13

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_11
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    if-eqz v6, :cond_16

    move v6, v8

    :goto_b
    if-ge v6, v11, :cond_13

    aget v10, v7, v6

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq/n;

    if-nez v10, :cond_12

    goto :goto_c

    :cond_12
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v12, v10}, Landroidx/constraintlayout/motion/widget/c;->f(Lq/n;)V

    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_13
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v10, v0, v4}, Landroidx/constraintlayout/motion/widget/MotionHelper;->s(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    goto :goto_d

    :cond_14
    move v6, v8

    :goto_e
    if-ge v6, v11, :cond_18

    aget v10, v7, v6

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq/n;

    if-nez v10, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v12

    invoke-virtual {v10, v2, v3, v12, v13}, Lq/n;->h(IIJ)V

    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_16
    move v6, v8

    :goto_10
    if-ge v6, v11, :cond_18

    aget v10, v7, v6

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq/n;

    if-nez v10, :cond_17

    goto :goto_11

    :cond_17
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v12, v10}, Landroidx/constraintlayout/motion/widget/c;->f(Lq/n;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v12

    invoke-virtual {v10, v2, v3, v12, v13}, Lq/n;->h(IIJ)V

    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_18
    move v6, v8

    :goto_12
    if-ge v6, v1, :cond_1b

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq/n;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_13

    :cond_19
    if-eqz v10, :cond_1a

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/c;->f(Lq/n;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v11

    invoke-virtual {v10, v2, v3, v11, v12}, Lq/n;->h(IIJ)V

    :cond_1a
    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroidx/constraintlayout/motion/widget/c;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    iget v2, v2, Lq/x;->i:F

    goto :goto_14

    :cond_1c
    move v2, v3

    :goto_14
    cmpl-float v3, v2, v3

    if-eqz v3, :cond_27

    float-to-double v5, v2

    const-wide/16 v10, 0x0

    cmpg-double v3, v5, v10

    if-gez v3, :cond_1d

    move v3, v9

    goto :goto_15

    :cond_1d
    move v3, v8

    :goto_15
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v5, -0x800001

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v11, v5

    move v10, v6

    move v7, v8

    :goto_16
    if-ge v7, v1, :cond_20

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lq/n;

    iget v13, v12, Lq/n;->l:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_1e

    goto :goto_18

    :cond_1e
    iget-object v12, v12, Lq/n;->g:Lq/u;

    iget v13, v12, Lq/u;->f:F

    iget v12, v12, Lq/u;->g:F

    if-eqz v3, :cond_1f

    sub-float/2addr v12, v13

    goto :goto_17

    :cond_1f
    add-float/2addr v12, v13

    :goto_17
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_20
    move v9, v8

    :goto_18
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v9, :cond_25

    move v9, v8

    :goto_19
    if-ge v9, v1, :cond_22

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lq/n;

    iget v11, v10, Lq/n;->l:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_21

    iget v11, v10, Lq/n;->l:F

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v10, v10, Lq/n;->l:F

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_21
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_22
    :goto_1a
    if-ge v8, v1, :cond_27

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq/n;

    iget v10, v9, Lq/n;->l:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_24

    sub-float v10, v7, v2

    div-float v10, v7, v10

    iput v10, v9, Lq/n;->n:F

    if-eqz v3, :cond_23

    iget v10, v9, Lq/n;->l:F

    sub-float v10, v5, v10

    sub-float v11, v5, v6

    div-float/2addr v10, v11

    mul-float/2addr v10, v2

    sub-float v10, v2, v10

    iput v10, v9, Lq/n;->m:F

    goto :goto_1b

    :cond_23
    iget v10, v9, Lq/n;->l:F

    sub-float/2addr v10, v6

    mul-float/2addr v10, v2

    sub-float v11, v5, v6

    div-float/2addr v10, v11

    sub-float v10, v2, v10

    iput v10, v9, Lq/n;->m:F

    :cond_24
    :goto_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_25
    :goto_1c
    if-ge v8, v1, :cond_27

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/n;

    iget-object v6, v5, Lq/n;->g:Lq/u;

    iget v9, v6, Lq/u;->f:F

    iget v6, v6, Lq/u;->g:F

    if-eqz v3, :cond_26

    sub-float/2addr v6, v9

    goto :goto_1d

    :cond_26
    add-float/2addr v6, v9

    :goto_1d
    sub-float v9, v7, v2

    div-float v9, v7, v9

    iput v9, v5, Lq/n;->n:F

    sub-float/2addr v6, v10

    mul-float/2addr v6, v2

    sub-float v9, v11, v10

    div-float/2addr v6, v9

    sub-float v6, v2, v6

    iput v6, v5, Lq/n;->m:F

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_27
    return-void
.end method

.method public final h(Lm/g;Ls/n;)V
    .locals 13

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    new-instance v7, Ls/o;

    invoke-direct {v7}, Ls/o;-><init>()V

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    const/4 v8, 0x0

    invoke-virtual {v6, v8, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v6, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    iget v0, p2, Ls/n;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Lq/r;->e:Ljava/lang/Object;

    check-cast v1, Lm/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    move-result v2

    iget-object v3, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sget-boolean v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lm/g;III)V

    :cond_0
    iget-object v0, p1, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/f;

    iget-object v2, v1, Lm/f;->h0:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lm/f;

    iget-object v0, v11, Lm/f;->h0:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p2, Ls/n;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Ls/i;->a(Ls/e;)V

    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Ls/n;->h(I)Ls/i;

    move-result-object v0

    iget-object v0, v0, Ls/i;->e:Ls/j;

    iget v0, v0, Ls/j;->c:I

    invoke-virtual {v11, v0}, Lm/f;->P(I)V

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Ls/n;->h(I)Ls/i;

    move-result-object v0

    iget-object v0, v0, Ls/i;->e:Ls/j;

    iget v0, v0, Ls/j;->d:I

    invoke-virtual {v11, v0}, Lm/f;->M(I)V

    instance-of v0, v12, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_4

    move-object v0, v12

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p2, Ls/n;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/i;

    if-eqz v1, :cond_3

    instance-of v2, v11, Lm/m;

    if-eqz v2, :cond_3

    move-object v2, v11

    check-cast v2, Lm/m;

    invoke-virtual {v0, v1, v2, v7, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->m(Ls/i;Lm/m;Ls/o;Landroid/util/SparseArray;)V

    :cond_3
    instance-of v0, v12, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_4

    move-object v0, v12

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->r()V

    :cond_4
    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v7, v0}, Ls/e;->resolveLayoutDirection(I)V

    iget-object v0, p0, Lq/r;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    move-object v2, v12

    move-object v3, v11

    move-object v4, v7

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ZLandroid/view/View;Lm/f;Ls/e;Landroid/util/SparseArray;)V

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Ls/n;->h(I)Ls/i;

    move-result-object v0

    iget-object v0, v0, Ls/i;->c:Ls/l;

    iget v0, v0, Ls/l;->c:I

    if-ne v0, v10, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, v11, Lm/f;->i0:I

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Ls/n;->h(I)Ls/i;

    move-result-object v0

    iget-object v0, v0, Ls/i;->c:Ls/l;

    iget v0, v0, Ls/l;->b:I

    iput v0, v11, Lm/f;->i0:I

    goto/16 :goto_1

    :cond_6
    iget-object p1, p1, Lm/p;->u0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm/f;

    instance-of v0, p2, Lm/o;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lm/f;->h0:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    check-cast p2, Lm/l;

    invoke-virtual {v0, p2, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->q(Lm/l;Landroid/util/SparseArray;)V

    check-cast p2, Lm/o;

    move v0, v8

    :goto_2
    iget v1, p2, Lm/m;->v0:I

    if-ge v0, v1, :cond_7

    iget-object v1, p2, Lm/m;->u0:[Lm/f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    iput-boolean v10, v1, Lm/f;->G:Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method
