.class public final Lr/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public final q:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lr/l;->a:F

    const/4 v1, 0x0

    iput v1, p0, Lr/l;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lr/l;->d:F

    iput v1, p0, Lr/l;->e:F

    iput v1, p0, Lr/l;->f:F

    iput v1, p0, Lr/l;->g:F

    iput v0, p0, Lr/l;->h:F

    iput v0, p0, Lr/l;->i:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lr/l;->j:F

    iput v0, p0, Lr/l;->k:F

    iput v1, p0, Lr/l;->l:F

    iput v1, p0, Lr/l;->m:F

    iput v1, p0, Lr/l;->n:F

    iput v0, p0, Lr/l;->o:F

    iput v0, p0, Lr/l;->p:F

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lr/l;->q:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static b(FF)Z
    .locals 3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "alpha"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "transitionPathRotate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "elevation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "rotation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "transformPivotY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "transformPivotX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "scaleY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_7
    const-string v3, "scaleX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_8
    const-string v3, "progress"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x5

    goto :goto_2

    :sswitch_9
    const-string v3, "translationZ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_a
    const-string v3, "translationY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_b
    const-string v3, "translationX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_c
    const-string v3, "rotationY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_1

    :cond_d
    move v3, v4

    goto :goto_2

    :sswitch_d
    const-string v3, "rotationX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_1

    :cond_e
    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "MotionPaths"

    if-eqz v3, :cond_1e

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    iget-object v4, p0, Lr/l;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/b;

    instance-of v4, v2, Lq/i;

    if-eqz v4, :cond_1d

    check-cast v2, Lq/i;

    goto/16 :goto_11

    :pswitch_0
    iget v1, p0, Lr/l;->a:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3

    :cond_f
    iget v5, p0, Lr/l;->a:F

    :goto_3
    invoke-virtual {v2, p2, v5}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_1
    iget v1, p0, Lr/l;->o:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_4

    :cond_10
    iget v6, p0, Lr/l;->o:F

    :goto_4
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_2
    iget v1, p0, Lr/l;->d:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_5

    :cond_11
    iget v6, p0, Lr/l;->d:F

    :goto_5
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_3
    iget v1, p0, Lr/l;->e:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    iget v6, p0, Lr/l;->e:F

    :goto_6
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_4
    iget v1, p0, Lr/l;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_7

    :cond_13
    iget v6, p0, Lr/l;->k:F

    :goto_7
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_5
    iget v1, p0, Lr/l;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_8

    :cond_14
    iget v6, p0, Lr/l;->j:F

    :goto_8
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_6
    iget v1, p0, Lr/l;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_9

    :cond_15
    iget v5, p0, Lr/l;->i:F

    :goto_9
    invoke-virtual {v2, p2, v5}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_7
    iget v1, p0, Lr/l;->h:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_a

    :cond_16
    iget v5, p0, Lr/l;->h:F

    :goto_a
    invoke-virtual {v2, p2, v5}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_8
    iget v1, p0, Lr/l;->p:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_b

    :cond_17
    iget v6, p0, Lr/l;->p:F

    :goto_b
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_9
    iget v1, p0, Lr/l;->n:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_c

    :cond_18
    iget v6, p0, Lr/l;->n:F

    :goto_c
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_a
    iget v1, p0, Lr/l;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_d

    :cond_19
    iget v6, p0, Lr/l;->m:F

    :goto_d
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_b
    iget v1, p0, Lr/l;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_e

    :cond_1a
    iget v6, p0, Lr/l;->l:F

    :goto_e
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_c
    iget v1, p0, Lr/l;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_f

    :cond_1b
    iget v6, p0, Lr/l;->g:F

    :goto_f
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :pswitch_d
    iget v1, p0, Lr/l;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_10

    :cond_1c
    iget v6, p0, Lr/l;->f:F

    :goto_10
    invoke-virtual {v2, p2, v6}, Lq/l;->b(IF)V

    goto/16 :goto_0

    :goto_11
    iget-object v1, v2, Lq/i;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ViewSpline not a CustomSet frame = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lt/b;->a()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1e
    const-string v2, "UNKNOWN spline "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/graphics/Rect;Lt/n;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    invoke-virtual {p2, p4}, Lt/n;->h(I)Lt/i;

    move-result-object p1

    iget-object p2, p1, Lt/i;->c:Lt/l;

    iget p4, p2, Lt/l;->c:I

    iput p4, p0, Lr/l;->b:I

    iget v0, p2, Lt/l;->b:I

    iput v0, p0, Lr/l;->c:I

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget p2, p2, Lt/l;->d:F

    :goto_0
    iput p2, p0, Lr/l;->a:F

    iget-object p2, p1, Lt/i;->f:Lt/m;

    iget-boolean p4, p2, Lt/m;->m:Z

    iget p4, p2, Lt/m;->n:F

    iput p4, p0, Lr/l;->d:F

    iget p4, p2, Lt/m;->b:F

    iput p4, p0, Lr/l;->e:F

    iget p4, p2, Lt/m;->c:F

    iput p4, p0, Lr/l;->f:F

    iget p4, p2, Lt/m;->d:F

    iput p4, p0, Lr/l;->g:F

    iget p4, p2, Lt/m;->e:F

    iput p4, p0, Lr/l;->h:F

    iget p4, p2, Lt/m;->f:F

    iput p4, p0, Lr/l;->i:F

    iget p4, p2, Lt/m;->g:F

    iput p4, p0, Lr/l;->j:F

    iget p4, p2, Lt/m;->h:F

    iput p4, p0, Lr/l;->k:F

    iget p4, p2, Lt/m;->j:F

    iput p4, p0, Lr/l;->l:F

    iget p4, p2, Lt/m;->k:F

    iput p4, p0, Lr/l;->m:F

    iget p2, p2, Lt/m;->l:F

    iput p2, p0, Lr/l;->n:F

    iget-object p2, p1, Lt/i;->d:Lt/k;

    iget-object p4, p2, Lt/k;->d:Ljava/lang/String;

    invoke-static {p4}, Lm/e;->c(Ljava/lang/String;)Lm/e;

    iget p2, p2, Lt/k;->h:F

    iput p2, p0, Lr/l;->o:F

    iget-object p2, p1, Lt/i;->c:Lt/l;

    iget p2, p2, Lt/l;->e:F

    iput p2, p0, Lr/l;->p:F

    iget-object p2, p1, Lt/i;->g:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object v3, p1, Lt/i;->g:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lt/a;->a:[I

    iget-object v5, v3, Lt/b;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_2

    if-eq v4, v1, :cond_2

    if-eq v4, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    iget-object v0, p0, Lr/l;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/high16 p1, 0x42b40000    # 90.0f

    if-eq p3, v2, :cond_5

    if-eq p3, v1, :cond_4

    if-eq p3, v0, :cond_5

    const/4 p2, 0x4

    if-eq p3, p2, :cond_4

    goto :goto_3

    :cond_4
    iget p2, p0, Lr/l;->e:F

    add-float/2addr p2, p1

    iput p2, p0, Lr/l;->e:F

    const/high16 p1, 0x43340000    # 180.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    const/high16 p1, 0x43b40000    # 360.0f

    sub-float/2addr p2, p1

    iput p2, p0, Lr/l;->e:F

    goto :goto_3

    :cond_5
    iget p2, p0, Lr/l;->e:F

    sub-float/2addr p2, p1

    iput p2, p0, Lr/l;->e:F

    :cond_6
    :goto_3
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method
