.class public final Landroidx/constraintlayout/motion/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public b:Ls/u;

.field public c:Lq/x;

.field public final d:Ljava/util/ArrayList;

.field public e:Lq/x;

.field public final f:Ljava/util/ArrayList;

.field public final g:Landroid/util/SparseArray;

.field public final h:Ljava/util/HashMap;

.field public final i:Landroid/util/SparseIntArray;

.field public j:I

.field public k:I

.field public l:Landroid/view/MotionEvent;

.field public m:Z

.field public n:Z

.field public o:Lq/s;

.field public p:Z

.field public final q:Landroidx/appcompat/widget/b0;

.field public r:F

.field public s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->b:Ls/u;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->e:Lq/x;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->f:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->g:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->h:Ljava/util/HashMap;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->i:Landroid/util/SparseIntArray;

    const/16 v2, 0x190

    iput v2, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/motion/widget/c;->k:I

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/c;->m:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/c;->n:Z

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance v3, Landroidx/appcompat/widget/b0;

    invoke-direct {v3, p2}, Landroidx/appcompat/widget/b0;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/c;->q:Landroidx/appcompat/widget/b0;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    move-object v4, v0

    :goto_0
    const/4 v5, 0x1

    if-eq v3, v5, :cond_8

    if-eqz v3, :cond_6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x4

    const/4 v9, 0x5

    const-string v10, "MotionScene"

    const/4 v11, -0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    :try_start_1
    const-string v5, "include"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x6

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "StateSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v8

    goto :goto_2

    :sswitch_2
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v2

    goto :goto_2

    :sswitch_3
    const-string v5, "OnSwipe"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v6

    goto :goto_2

    :sswitch_4
    const-string v5, "OnClick"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_5
    const-string v6, "Transition"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :sswitch_6
    const-string v5, "ViewTransition"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v5, 0x9

    goto :goto_2

    :sswitch_7
    const-string v5, "Include"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_8
    const-string v5, "KeyFrameSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_9
    const-string v5, "ConstraintSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v9

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v11

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-instance v3, Lq/a0;

    invoke-direct {v3, p1, p2}, Lq/a0;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/c;->q:Landroidx/appcompat/widget/b0;

    iget-object v6, v5, Landroidx/appcompat/widget/b0;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v5, Landroidx/appcompat/widget/b0;->c:Ljava/lang/Object;

    iget v5, v3, Lq/a0;->b:I

    if-ne v5, v8, :cond_2

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Ls/r;

    move-result-object v5

    iget v3, v3, Lq/a0;->u:I

    new-instance v6, Lq/b0;

    invoke-direct {v6}, Lq/b0;-><init>()V

    invoke-virtual {v5, v3, v6}, Ls/r;->a(ILs/q;)V

    goto/16 :goto_4

    :cond_2
    if-ne v5, v9, :cond_7

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Ls/r;

    move-result-object v5

    iget v3, v3, Lq/a0;->u:I

    new-instance v6, Lq/b0;

    invoke-direct {v6}, Lq/b0;-><init>()V

    invoke-virtual {v5, v3, v6}, Ls/r;->a(ILs/q;)V

    goto/16 :goto_4

    :pswitch_1
    new-instance v3, Lq/g;

    invoke-direct {v3, p1, p2}, Lq/g;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v4, :cond_7

    iget-object v5, v4, Lq/x;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/c;->k(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/c;->i(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)I

    goto/16 :goto_4

    :pswitch_4
    new-instance v3, Ls/u;

    invoke-direct {v3, p1, p2}, Ls/u;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/c;->b:Ls/u;

    goto/16 :goto_4

    :pswitch_5
    if-eqz v4, :cond_7

    new-instance v3, Lq/w;

    invoke-direct {v3, p1, v4, p2}, Lq/w;-><init>(Landroid/content/Context;Lq/x;Landroid/content/res/XmlResourceParser;)V

    iget-object v5, v4, Lq/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_6
    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " OnSwipe ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v4, :cond_7

    new-instance v3, Landroidx/constraintlayout/motion/widget/d;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {v3, p1, v5, p2}, Landroidx/constraintlayout/motion/widget/d;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/content/res/XmlResourceParser;)V

    iput-object v3, v4, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    goto :goto_4

    :pswitch_7
    new-instance v4, Lq/x;

    invoke-direct {v4, p0, p1, p2}, Lq/x;-><init>(Landroidx/constraintlayout/motion/widget/c;Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-nez v3, :cond_4

    iget-boolean v3, v4, Lq/x;->b:Z

    if-nez v3, :cond_4

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget-object v3, v4, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v3, :cond_4

    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/c;->p:Z

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/d;->c(Z)V

    :cond_4
    iget-boolean v3, v4, Lq/x;->b:Z

    if-eqz v3, :cond_7

    iget v3, v4, Lq/x;->c:I

    if-ne v3, v11, :cond_5

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/c;->e:Lq/x;

    goto :goto_3

    :cond_5
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_8
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/c;->l(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_4

    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_7
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_8
    :goto_5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/c;->g:Landroid/util/SparseArray;

    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    new-instance p3, Ls/n;

    invoke-direct {p3}, Ls/n;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/c;->h:Ljava/util/HashMap;

    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_9
        -0x49df9cec -> :sswitch_8
        -0x28fe1378 -> :sswitch_7
        0x3b205fa -> :sswitch_6
        0x100d4975 -> :sswitch_5
        0x12a432c9 -> :sswitch_4
        0x138aac7b -> :sswitch_3
        0x2f487256 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x73c954a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(ILandroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->o:Lq/s;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/x;

    iget v4, v3, Lq/x;->n:I

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    const/4 v6, 0x2

    if-ne v5, v3, :cond_5

    iget v5, v5, Lq/x;->r:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    iget v5, v3, Lq/x;->d:I

    if-ne p1, v5, :cond_8

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    if-ne v4, v6, :cond_8

    :cond_6
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    iget v0, v3, Lq/x;->n:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne v0, v5, :cond_7

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    const/4 p1, 0x0

    iput-object p1, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Ljava/lang/Runnable;

    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Z)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A()V

    :goto_3
    return v2

    :cond_8
    iget v5, v3, Lq/x;->c:I

    if-ne p1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9

    if-ne v4, v2, :cond_2

    :cond_9
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lq/x;)V

    iget v0, v3, Lq/x;->n:I

    const/4 v1, 0x0

    if-ne v0, v5, :cond_a

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Z)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A()V

    :goto_4
    return v2

    :cond_b
    return v1
.end method

.method public final b(I)Ls/n;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->g:Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->b:Ls/u;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ls/u;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning could not find ConstraintSet id/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " In MotionScene"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MotionScene"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/n;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/n;

    :goto_0
    return-object p1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v0, :cond_0

    iget v0, v0, Lq/x;->h:I

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    return v0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const-string p2, "MotionScene"

    const-string v0, "error in parsing id"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return p1
.end method

.method public final e()Landroid/view/animation/Interpolator;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget v1, v0, Lq/x;->e:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_7

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    :cond_3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    :cond_4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    :cond_5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    :cond_6
    iget-object v0, v0, Lq/x;->f:Ljava/lang/String;

    invoke-static {v0}, Ll/e;->c(Ljava/lang/String;)Ll/e;

    move-result-object v0

    new-instance v1, Lq/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lq/v;-><init>(Ljava/lang/Object;Ll/e;I)V

    return-object v1

    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget v1, v1, Lq/x;->g:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lq/n;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->e:Lq/x;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq/x;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/g;

    invoke-virtual {v1, p1}, Lq/g;->a(Lq/n;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object v0, v0, Lq/x;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/g;

    invoke-virtual {v1, p1}, Lq/g;->a(Lq/n;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final g()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/constraintlayout/motion/widget/d;->t:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, v0, Lq/x;->d:I

    return v0
.end method

.method public final i(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)I
    .locals 13

    new-instance v0, Ls/n;

    invoke-direct {v0}, Ls/n;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ls/n;->e:Z

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, -0x1

    move v4, v1

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_9

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v9, :sswitch_data_0

    :goto_1
    move v7, v3

    goto :goto_2

    :sswitch_0
    const-string v9, "id"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    move v7, v10

    goto :goto_2

    :sswitch_1
    const-string v9, "constraintRotate"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v11

    goto :goto_2

    :sswitch_2
    const-string v9, "deriveConstraintsFrom"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0, p1, v8}, Landroidx/constraintlayout/motion/widget/c;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x2f

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/c;->h:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v5}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Ls/n;->a:Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_1
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Ls/n;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v9, 0x3

    const/4 v12, 0x4

    sparse-switch v7, :sswitch_data_1

    :goto_4
    move v7, v3

    goto :goto_5

    :sswitch_3
    const-string v7, "x_right"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    move v7, v12

    goto :goto_5

    :sswitch_4
    const-string v7, "right"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    move v7, v9

    goto :goto_5

    :sswitch_5
    const-string v7, "none"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    move v7, v10

    goto :goto_5

    :sswitch_6
    const-string v7, "left"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    move v7, v11

    goto :goto_5

    :sswitch_7
    const-string v7, "x_left"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    move v7, v1

    :goto_5
    packed-switch v7, :pswitch_data_1

    goto :goto_6

    :pswitch_2
    iput v9, v0, Ls/n;->c:I

    goto :goto_6

    :pswitch_3
    iput v11, v0, Ls/n;->c:I

    goto :goto_6

    :pswitch_4
    iput v1, v0, Ls/n;->c:I

    goto :goto_6

    :pswitch_5
    iput v10, v0, Ls/n;->c:I

    goto :goto_6

    :pswitch_6
    iput v12, v0, Ls/n;->c:I

    goto :goto_6

    :pswitch_7
    invoke-virtual {p0, p1, v8}, Landroidx/constraintlayout/motion/widget/c;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    if-eq v5, v3, :cond_b

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:I

    invoke-virtual {v0, p1, p2}, Ls/n;->k(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eq v6, v3, :cond_a

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/c;->i:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_a
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/c;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_b
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x59328327 -> :sswitch_2
        -0x44bbba68 -> :sswitch_1
        0xd1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x2dcd1c92 -> :sswitch_7
        0x32a007 -> :sswitch_6
        0x33af38 -> :sswitch_5
        0x677c21c -> :sswitch_4
        0x747feb95 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final j(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const-string v0, "ConstraintSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/c;->i(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public final k(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->include:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Landroidx/constraintlayout/widget/R$styleable;->include_constraintSet:I

    if-ne v2, v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/motion/widget/c;->j(Landroid/content/Context;I)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final l(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 4

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionScene:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_defaultDuration:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iput v3, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    goto :goto_1

    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_layoutDuringTransition:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/c;->k:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final m(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 11

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/n;

    iget-object v2, v1, Ls/n;->a:Ljava/lang/String;

    iput-object v2, v1, Ls/n;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-object v2, v1, Ls/n;->f:Ljava/util/HashMap;

    if-lez p1, :cond_9

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/c;->m(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls/n;

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ERROR! invalid deriveConstraintsFrom: @id/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/slider/h;->n0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Ls/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Ls/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Ls/n;->b:Ljava/lang/String;

    iget-object p1, p2, Ls/n;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/i;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ls/i;

    invoke-direct {v5}, Ls/i;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/i;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v3, Ls/i;->e:Ls/j;

    iget-boolean v5, v4, Ls/j;->b:Z

    if-nez v5, :cond_4

    iget-object v5, v0, Ls/i;->e:Ls/j;

    invoke-virtual {v4, v5}, Ls/j;->a(Ls/j;)V

    :cond_4
    iget-object v4, v3, Ls/i;->c:Ls/l;

    iget-boolean v5, v4, Ls/l;->a:Z

    if-nez v5, :cond_5

    iget-object v5, v0, Ls/i;->c:Ls/l;

    iget-boolean v6, v5, Ls/l;->a:Z

    iput-boolean v6, v4, Ls/l;->a:Z

    iget v6, v5, Ls/l;->b:I

    iput v6, v4, Ls/l;->b:I

    iget v6, v5, Ls/l;->d:F

    iput v6, v4, Ls/l;->d:F

    iget v6, v5, Ls/l;->e:F

    iput v6, v4, Ls/l;->e:F

    iget v5, v5, Ls/l;->c:I

    iput v5, v4, Ls/l;->c:I

    :cond_5
    iget-object v4, v3, Ls/i;->f:Ls/m;

    iget-boolean v5, v4, Ls/m;->a:Z

    if-nez v5, :cond_6

    iget-object v5, v0, Ls/i;->f:Ls/m;

    invoke-virtual {v4, v5}, Ls/m;->a(Ls/m;)V

    :cond_6
    iget-object v4, v3, Ls/i;->d:Ls/k;

    iget-boolean v5, v4, Ls/k;->a:Z

    if-nez v5, :cond_7

    iget-object v5, v0, Ls/i;->d:Ls/k;

    invoke-virtual {v4, v5}, Ls/k;->a(Ls/k;)V

    :cond_7
    iget-object v4, v0, Ls/i;->g:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Ls/i;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v3, Ls/i;->g:Ljava/util/HashMap;

    iget-object v7, v0, Ls/i;->g:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/b;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Ls/n;->b:Ljava/lang/String;

    const-string v3, "  layout"

    invoke-static {p1, v0, v3}, Landroidx/activity/b;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Ls/n;->b:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_14

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ls/e;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    iget-boolean v6, v1, Ls/n;->e:Z

    if-eqz v6, :cond_b

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ls/i;

    invoke-direct {v7}, Ls/i;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/i;

    if-nez v6, :cond_d

    goto/16 :goto_4

    :cond_d
    iget-object v7, v6, Ls/i;->e:Ls/j;

    iget-boolean v8, v7, Ls/j;->b:Z

    const/4 v9, 0x1

    if-nez v8, :cond_f

    invoke-virtual {v6, v5, v4}, Ls/i;->c(ILs/e;)V

    instance-of v4, v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v4, :cond_e

    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object v4

    iput-object v4, v7, Ls/j;->j0:[I

    instance-of v4, v3, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v4, :cond_e

    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    move-result v5

    iput-boolean v5, v7, Ls/j;->o0:Z

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v5

    iput v5, v7, Ls/j;->g0:I

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v4

    iput v4, v7, Ls/j;->h0:I

    :cond_e
    iput-boolean v9, v7, Ls/j;->b:Z

    :cond_f
    iget-object v4, v6, Ls/i;->c:Ls/l;

    iget-boolean v5, v4, Ls/l;->a:Z

    if-nez v5, :cond_10

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    iput v5, v4, Ls/l;->b:I

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    iput v5, v4, Ls/l;->d:F

    iput-boolean v9, v4, Ls/l;->a:Z

    :cond_10
    iget-object v4, v6, Ls/i;->f:Ls/m;

    iget-boolean v5, v4, Ls/m;->a:Z

    if-nez v5, :cond_13

    iput-boolean v9, v4, Ls/m;->a:Z

    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v5

    iput v5, v4, Ls/m;->b:F

    invoke-virtual {v3}, Landroid/view/View;->getRotationX()F

    move-result v5

    iput v5, v4, Ls/m;->c:F

    invoke-virtual {v3}, Landroid/view/View;->getRotationY()F

    move-result v5

    iput v5, v4, Ls/m;->d:F

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v5

    iput v5, v4, Ls/m;->e:F

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v5

    iput v5, v4, Ls/m;->f:F

    invoke-virtual {v3}, Landroid/view/View;->getPivotX()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPivotY()F

    move-result v6

    float-to-double v7, v5

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_11

    float-to-double v7, v6

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_12

    :cond_11
    iput v5, v4, Ls/m;->g:F

    iput v6, v4, Ls/m;->h:F

    :cond_12
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    iput v5, v4, Ls/m;->j:F

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iput v5, v4, Ls/m;->k:F

    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    iput v5, v4, Ls/m;->l:F

    iget-boolean v5, v4, Ls/m;->m:Z

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getElevation()F

    move-result v3

    iput v3, v4, Ls/m;->n:F

    :cond_13
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_14
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls/i;

    iget-object v0, p2, Ls/i;->h:Ls/h;

    if-eqz v0, :cond_15

    iget-object v0, p2, Ls/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ls/n;->i(I)Ls/i;

    move-result-object v3

    iget-object v4, v3, Ls/i;->e:Ls/j;

    iget-object v4, v4, Ls/j;->l0:Ljava/lang/String;

    if-eqz v4, :cond_16

    iget-object v5, p2, Ls/i;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p2, Ls/i;->h:Ls/h;

    invoke-virtual {v4, v3}, Ls/h;->e(Ls/i;)V

    iget-object v3, v3, Ls/i;->g:Ljava/util/HashMap;

    iget-object v4, p2, Ls/i;->g:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_6

    :cond_17
    iget v0, p2, Ls/i;->a:I

    invoke-virtual {v1, v0}, Ls/n;->i(I)Ls/i;

    move-result-object v0

    iget-object p2, p2, Ls/i;->h:Ls/h;

    invoke-virtual {p2, v0}, Ls/h;->e(Ls/i;)V

    goto :goto_5

    :cond_18
    return-void
.end method

.method public final n(II)V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->b:Ls/u;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ls/u;->a(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->b:Ls/u;

    invoke-virtual {v2, p2}, Ls/u;->a(I)I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    move v2, p2

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v3, :cond_3

    iget v4, v3, Lq/x;->c:I

    if-ne v4, p2, :cond_3

    iget v3, v3, Lq/x;->d:I

    if-ne v3, p1, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/x;

    iget v6, v5, Lq/x;->c:I

    if-ne v6, v2, :cond_5

    iget v7, v5, Lq/x;->d:I

    if-eq v7, v0, :cond_6

    :cond_5
    if-ne v6, p2, :cond_4

    iget v6, v5, Lq/x;->d:I

    if-ne v6, p1, :cond_4

    :cond_6
    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    iget-object p1, v5, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz p1, :cond_7

    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/c;->p:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/d;->c(Z)V

    :cond_7
    return-void

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/c;->e:Lq/x;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/x;

    iget v6, v5, Lq/x;->c:I

    if-ne v6, p2, :cond_9

    move-object p1, v5

    goto :goto_2

    :cond_a
    new-instance p2, Lq/x;

    invoke-direct {p2, p0, p1}, Lq/x;-><init>(Landroidx/constraintlayout/motion/widget/c;Lq/x;)V

    iput v0, p2, Lq/x;->d:I

    iput v2, p2, Lq/x;->c:I

    if-eq v0, v1, :cond_b

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    return-void
.end method

.method public final o()Z
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/x;

    iget-object v1, v1, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v1, :cond_0

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/c;->c:Lq/x;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lq/x;->l:Landroidx/constraintlayout/motion/widget/d;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
