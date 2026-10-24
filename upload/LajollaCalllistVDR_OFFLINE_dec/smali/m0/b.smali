.class public final Lm0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lm0/c;


# direct methods
.method public constructor <init>(Lm0/c;)V
    .locals 0

    iput-object p1, p0, Lm0/b;->a:Lm0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lm0/b;->a:Lm0/c;

    iget-object v0, v0, Lf0/g;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/i;

    iget-object v1, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v1, Lm0/d;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lm0/d;->e:J

    iget-object v1, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v1, Lm0/d;

    iget-wide v2, v1, Lm0/d;->e:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    iget-object v8, v1, Lm0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_10

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm0/a;

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    move-wide v15, v2

    move/from16 v27, v7

    goto/16 :goto_a

    :cond_1
    iget-object v9, v1, Lm0/d;->a:Lk/j;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v13, v4

    if-gez v11, :cond_3

    invoke-virtual {v9, v8}, Lk/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    move v9, v6

    :goto_3
    if-eqz v9, :cond_0

    check-cast v8, Lm0/h;

    iget-wide v13, v8, Lm0/h;->h:J

    const-wide/16 v10, 0x0

    cmp-long v9, v13, v10

    if-nez v9, :cond_4

    iput-wide v2, v8, Lm0/h;->h:J

    iget v9, v8, Lm0/h;->b:F

    invoke-virtual {v8, v9}, Lm0/h;->a(F)V

    goto :goto_1

    :cond_4
    sub-long v18, v2, v13

    iput-wide v2, v8, Lm0/h;->h:J

    move-object v9, v8

    check-cast v9, Lm0/i;

    iget-boolean v13, v9, Lm0/i;->t:Z

    const/4 v14, 0x0

    const v15, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v13, :cond_6

    iget v13, v9, Lm0/i;->s:F

    cmpl-float v16, v13, v15

    if-eqz v16, :cond_5

    iget-object v10, v9, Lm0/i;->r:Lm0/j;

    float-to-double v12, v13

    iput-wide v12, v10, Lm0/j;->i:D

    iput v15, v9, Lm0/i;->s:F

    :cond_5
    iget-object v10, v9, Lm0/i;->r:Lm0/j;

    iget-wide v12, v10, Lm0/j;->i:D

    double-to-float v10, v12

    iput v10, v9, Lm0/h;->b:F

    iput v14, v9, Lm0/h;->a:F

    iput-boolean v6, v9, Lm0/i;->t:Z

    move/from16 v27, v7

    move v12, v15

    move-wide v15, v2

    goto/16 :goto_6

    :cond_6
    iget v10, v9, Lm0/i;->s:F

    cmpl-float v10, v10, v15

    if-eqz v10, :cond_7

    iget-object v10, v9, Lm0/i;->r:Lm0/j;

    iget-wide v12, v10, Lm0/j;->i:D

    iget v12, v9, Lm0/h;->b:F

    float-to-double v12, v12

    iget v11, v9, Lm0/h;->a:F

    move/from16 v27, v7

    float-to-double v6, v11

    const-wide/16 v16, 0x2

    div-long v16, v18, v16

    move-object/from16 v20, v10

    move-wide/from16 v21, v12

    move-wide/from16 v23, v6

    move-wide/from16 v25, v16

    invoke-virtual/range {v20 .. v26}, Lm0/j;->a(DDJ)Lm0/f;

    move-result-object v6

    iget-object v7, v9, Lm0/i;->r:Lm0/j;

    iget v10, v9, Lm0/i;->s:F

    float-to-double v10, v10

    iput-wide v10, v7, Lm0/j;->i:D

    iput v15, v9, Lm0/i;->s:F

    iget v10, v6, Lm0/f;->a:F

    float-to-double v10, v10

    iget v6, v6, Lm0/f;->b:F

    float-to-double v12, v6

    move-object/from16 v20, v7

    move-wide/from16 v21, v10

    move-wide/from16 v23, v12

    invoke-virtual/range {v20 .. v26}, Lm0/j;->a(DDJ)Lm0/f;

    move-result-object v6

    iget v7, v6, Lm0/f;->a:F

    iput v7, v9, Lm0/h;->b:F

    iget v6, v6, Lm0/f;->b:F

    iput v6, v9, Lm0/h;->a:F

    move v12, v15

    goto :goto_4

    :cond_7
    move/from16 v27, v7

    iget-object v13, v9, Lm0/i;->r:Lm0/j;

    iget v6, v9, Lm0/h;->b:F

    float-to-double v6, v6

    iget v10, v9, Lm0/h;->a:F

    float-to-double v10, v10

    move v12, v15

    move-wide v14, v6

    move-wide/from16 v16, v10

    invoke-virtual/range {v13 .. v19}, Lm0/j;->a(DDJ)Lm0/f;

    move-result-object v6

    iget v7, v6, Lm0/f;->a:F

    iput v7, v9, Lm0/h;->b:F

    iget v6, v6, Lm0/f;->b:F

    iput v6, v9, Lm0/h;->a:F

    :goto_4
    iget v6, v9, Lm0/h;->b:F

    iget v7, v9, Lm0/h;->g:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v9, Lm0/h;->b:F

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v9, Lm0/h;->b:F

    iget v7, v9, Lm0/h;->a:F

    iget-object v10, v9, Lm0/i;->r:Lm0/j;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v13, v7

    move-wide v15, v2

    iget-wide v2, v10, Lm0/j;->e:D

    cmpg-double v2, v13, v2

    if-gez v2, :cond_8

    iget-wide v2, v10, Lm0/j;->i:D

    double-to-float v2, v2

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    iget-wide v6, v10, Lm0/j;->d:D

    cmpg-double v2, v2, v6

    if-gez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_9

    iget-object v2, v9, Lm0/i;->r:Lm0/j;

    iget-wide v2, v2, Lm0/j;->i:D

    double-to-float v2, v2

    iput v2, v9, Lm0/h;->b:F

    const/4 v2, 0x0

    iput v2, v9, Lm0/h;->a:F

    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    iget v3, v8, Lm0/h;->b:F

    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v8, Lm0/h;->b:F

    iget v6, v8, Lm0/h;->g:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v8, Lm0/h;->b:F

    invoke-virtual {v8, v3}, Lm0/h;->a(F)V

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    iput-boolean v2, v8, Lm0/h;->f:Z

    sget-object v2, Lm0/d;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    new-instance v3, Lm0/d;

    invoke-direct {v3}, Lm0/d;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/d;

    iget-object v3, v2, Lm0/d;->a:Lk/j;

    invoke-virtual {v3, v8}, Lk/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lm0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_b

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lm0/d;->f:Z

    :cond_b
    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lm0/h;->h:J

    const/4 v2, 0x0

    iput-boolean v2, v8, Lm0/h;->c:Z

    const/4 v2, 0x0

    :goto_8
    iget-object v3, v8, Lm0/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_d

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La/a;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_e
    :goto_9
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_f

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_e

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    :goto_a
    add-int/lit8 v7, v27, 0x1

    move-wide v2, v15

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_10
    iget-boolean v2, v1, Lm0/d;->f:Z

    if-eqz v2, :cond_13

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_11
    :goto_b
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_12

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    iput-boolean v2, v1, Lm0/d;->f:Z

    :cond_13
    iget-object v1, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v1, Lm0/d;

    iget-object v1, v1, Lm0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Lm0/d;

    iget-object v1, v0, Lm0/d;->d:Lm0/c;

    if-nez v1, :cond_14

    new-instance v1, Lm0/c;

    iget-object v2, v0, Lm0/d;->c:Landroidx/appcompat/view/menu/i;

    invoke-direct {v1, v2}, Lm0/c;-><init>(Landroidx/appcompat/view/menu/i;)V

    iput-object v1, v0, Lm0/d;->d:Lm0/c;

    :cond_14
    iget-object v0, v0, Lm0/d;->d:Lm0/c;

    invoke-virtual {v0}, Lm0/c;->e()V

    :cond_15
    return-void
.end method
