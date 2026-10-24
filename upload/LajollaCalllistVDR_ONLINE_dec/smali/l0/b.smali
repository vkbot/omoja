.class public final Ll0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Ll0/c;


# direct methods
.method public constructor <init>(Ll0/c;)V
    .locals 0

    iput-object p1, p0, Ll0/b;->a:Ll0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Ll0/b;->a:Ll0/c;

    iget-object v1, v1, Le0/g;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/view/menu/i;

    iget-object v2, v1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v2, Ll0/d;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Ll0/d;->e:J

    iget-object v2, v1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v2, Ll0/d;

    iget-wide v3, v2, Ll0/d;->e:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v2, Ll0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_10

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ll0/a;

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    move-wide/from16 v30, v3

    move/from16 v21, v8

    goto/16 :goto_b

    :cond_1
    iget-object v10, v2, Ll0/d;->a:Lj/j;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lj/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v14, v5

    if-gez v12, :cond_3

    invoke-virtual {v10, v9}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_0

    check-cast v9, Ll0/h;

    iget-wide v14, v9, Ll0/h;->h:J

    const-wide/16 v11, 0x0

    cmp-long v10, v14, v11

    if-nez v10, :cond_4

    iput-wide v3, v9, Ll0/h;->h:J

    iget v10, v9, Ll0/h;->b:F

    invoke-virtual {v9, v10}, Ll0/h;->a(F)V

    goto :goto_1

    :cond_4
    sub-long v19, v3, v14

    iput-wide v3, v9, Ll0/h;->h:J

    move-object v10, v9

    check-cast v10, Ll0/i;

    iget-boolean v14, v10, Ll0/i;->t:Z

    const/4 v15, 0x0

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v14, :cond_6

    iget v12, v10, Ll0/i;->s:F

    cmpl-float v14, v12, v11

    if-eqz v14, :cond_5

    iget-object v14, v10, Ll0/i;->r:Ll0/j;

    move/from16 v21, v8

    float-to-double v7, v12

    iput-wide v7, v14, Ll0/j;->i:D

    iput v11, v10, Ll0/i;->s:F

    goto :goto_4

    :cond_5
    move/from16 v21, v8

    :goto_4
    iget-object v7, v10, Ll0/i;->r:Ll0/j;

    iget-wide v7, v7, Ll0/j;->i:D

    double-to-float v7, v7

    iput v7, v10, Ll0/h;->b:F

    iput v15, v10, Ll0/h;->a:F

    const/4 v7, 0x0

    iput-boolean v7, v10, Ll0/i;->t:Z

    move-wide/from16 v30, v3

    move-object/from16 v29, v9

    goto/16 :goto_7

    :cond_6
    move/from16 v21, v8

    iget v7, v10, Ll0/i;->s:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_7

    iget-object v7, v10, Ll0/i;->r:Ll0/j;

    iget-wide v13, v7, Ll0/j;->i:D

    iget v12, v10, Ll0/h;->b:F

    float-to-double v12, v12

    iget v14, v10, Ll0/h;->a:F

    move-object/from16 v29, v9

    float-to-double v8, v14

    const-wide/16 v16, 0x2

    div-long v16, v19, v16

    move-object/from16 v22, v7

    move-wide/from16 v23, v12

    move-wide/from16 v25, v8

    move-wide/from16 v27, v16

    invoke-virtual/range {v22 .. v28}, Ll0/j;->a(DDJ)Ll0/f;

    move-result-object v7

    iget-object v8, v10, Ll0/i;->r:Ll0/j;

    iget v9, v10, Ll0/i;->s:F

    float-to-double v12, v9

    iput-wide v12, v8, Ll0/j;->i:D

    iput v11, v10, Ll0/i;->s:F

    iget v9, v7, Ll0/f;->a:F

    float-to-double v12, v9

    iget v7, v7, Ll0/f;->b:F

    move-wide/from16 v30, v3

    float-to-double v3, v7

    move-object/from16 v22, v8

    move-wide/from16 v23, v12

    move-wide/from16 v25, v3

    invoke-virtual/range {v22 .. v28}, Ll0/j;->a(DDJ)Ll0/f;

    move-result-object v3

    iget v4, v3, Ll0/f;->a:F

    iput v4, v10, Ll0/h;->b:F

    iget v3, v3, Ll0/f;->b:F

    iput v3, v10, Ll0/h;->a:F

    move v9, v15

    goto :goto_5

    :cond_7
    move-wide/from16 v30, v3

    move-object/from16 v29, v9

    iget-object v14, v10, Ll0/i;->r:Ll0/j;

    iget v3, v10, Ll0/h;->b:F

    float-to-double v3, v3

    iget v7, v10, Ll0/h;->a:F

    float-to-double v7, v7

    move v9, v15

    move-wide v15, v3

    move-wide/from16 v17, v7

    invoke-virtual/range {v14 .. v20}, Ll0/j;->a(DDJ)Ll0/f;

    move-result-object v3

    iget v4, v3, Ll0/f;->a:F

    iput v4, v10, Ll0/h;->b:F

    iget v3, v3, Ll0/f;->b:F

    iput v3, v10, Ll0/h;->a:F

    :goto_5
    iget v3, v10, Ll0/h;->b:F

    iget v4, v10, Ll0/h;->g:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v10, Ll0/h;->b:F

    invoke-static {v3, v11}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v10, Ll0/h;->b:F

    iget v4, v10, Ll0/h;->a:F

    iget-object v7, v10, Ll0/i;->r:Ll0/j;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v12, v4

    iget-wide v14, v7, Ll0/j;->e:D

    cmpg-double v4, v12, v14

    if-gez v4, :cond_8

    iget-wide v12, v7, Ll0/j;->i:D

    double-to-float v4, v12

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    iget-wide v7, v7, Ll0/j;->d:D

    cmpg-double v3, v3, v7

    if-gez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_9

    iget-object v3, v10, Ll0/i;->r:Ll0/j;

    iget-wide v3, v3, Ll0/j;->i:D

    double-to-float v3, v3

    iput v3, v10, Ll0/h;->b:F

    iput v9, v10, Ll0/h;->a:F

    :goto_7
    move-object/from16 v9, v29

    const/4 v3, 0x1

    goto :goto_8

    :cond_9
    move-object/from16 v9, v29

    const/4 v3, 0x0

    :goto_8
    iget v4, v9, Ll0/h;->b:F

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v9, Ll0/h;->b:F

    iget v7, v9, Ll0/h;->g:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v9, Ll0/h;->b:F

    invoke-virtual {v9, v4}, Ll0/h;->a(F)V

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    iput-boolean v3, v9, Ll0/h;->f:Z

    sget-object v3, Ll0/d;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    new-instance v4, Ll0/d;

    invoke-direct {v4}, Ll0/d;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll0/d;

    iget-object v4, v3, Ll0/d;->a:Lj/j;

    invoke-virtual {v4, v9}, Lj/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Ll0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_b

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ll0/d;->f:Z

    :cond_b
    const-wide/16 v3, 0x0

    iput-wide v3, v9, Ll0/h;->h:J

    const/4 v3, 0x0

    iput-boolean v3, v9, Ll0/h;->c:Z

    const/4 v7, 0x0

    :goto_9
    iget-object v3, v9, Ll0/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v7, v4, :cond_d

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    const/4 v1, 0x0

    throw v1

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_e
    :goto_a
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_f

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_f
    :goto_b
    add-int/lit8 v8, v21, 0x1

    move-wide/from16 v3, v30

    goto/16 :goto_0

    :cond_10
    iget-boolean v3, v2, Ll0/d;->f:Z

    if-eqz v3, :cond_13

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_11
    :goto_c
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_12

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_11

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    iput-boolean v3, v2, Ll0/d;->f:Z

    :cond_13
    iget-object v2, v1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v2, Ll0/d;

    iget-object v2, v2, Ll0/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    iget-object v1, v1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v1, Ll0/d;

    iget-object v2, v1, Ll0/d;->d:Ll0/c;

    if-nez v2, :cond_14

    new-instance v2, Ll0/c;

    iget-object v3, v1, Ll0/d;->c:Landroidx/appcompat/view/menu/i;

    invoke-direct {v2, v3}, Ll0/c;-><init>(Landroidx/appcompat/view/menu/i;)V

    iput-object v2, v1, Ll0/d;->d:Ll0/c;

    :cond_14
    iget-object v1, v1, Ll0/d;->d:Ll0/c;

    invoke-virtual {v1}, Ll0/c;->e()V

    :cond_15
    return-void
.end method
