.class public abstract Lp/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ll/f;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp/g;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 10

    iget-object v0, p0, Lp/g;->a:Ll/f;

    iget-object v1, v0, Ll/f;->g:Lcom/google/android/material/slider/h;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    float-to-double v5, p1

    iget-object v7, v0, Ll/f;->h:[D

    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/material/slider/h;->t0(D[D)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ll/f;->h:[D

    iget-object v5, v0, Ll/f;->e:[F

    aget v5, v5, v4

    float-to-double v5, v5

    aput-wide v5, v1, v4

    iget-object v5, v0, Ll/f;->f:[F

    aget v5, v5, v4

    float-to-double v5, v5

    aput-wide v5, v1, v3

    iget-object v5, v0, Ll/f;->b:[F

    aget v5, v5, v4

    float-to-double v5, v5

    aput-wide v5, v1, v2

    :goto_0
    iget-object v1, v0, Ll/f;->h:[D

    aget-wide v4, v1, v4

    aget-wide v6, v1, v3

    iget-object v1, v0, Ll/f;->a:Ll/i;

    float-to-double v8, p1

    invoke-virtual {v1, v8, v9, v6, v7}, Ll/i;->c(DD)D

    move-result-wide v6

    iget-object p1, v0, Ll/f;->h:[D

    aget-wide v0, p1, v2

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    double-to-float p1, v6

    return p1
.end method

.method public final b(F)F
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lp/g;->a:Ll/f;

    iget-object v3, v2, Ll/f;->g:Lcom/google/android/material/slider/h;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_0

    float-to-double v9, v1

    iget-object v4, v2, Ll/f;->i:[D

    invoke-virtual {v3, v9, v10, v4}, Lcom/google/android/material/slider/h;->w0(D[D)V

    iget-object v3, v2, Ll/f;->g:Lcom/google/android/material/slider/h;

    iget-object v4, v2, Ll/f;->h:[D

    invoke-virtual {v3, v9, v10, v4}, Lcom/google/android/material/slider/h;->t0(D[D)V

    goto :goto_0

    :cond_0
    iget-object v3, v2, Ll/f;->i:[D

    aput-wide v6, v3, v5

    aput-wide v6, v3, v8

    aput-wide v6, v3, v4

    :goto_0
    float-to-double v3, v1

    iget-object v1, v2, Ll/f;->h:[D

    aget-wide v9, v1, v8

    iget-object v1, v2, Ll/f;->a:Ll/i;

    invoke-virtual {v1, v3, v4, v9, v10}, Ll/i;->c(DD)D

    move-result-wide v9

    iget-object v11, v2, Ll/f;->h:[D

    aget-wide v12, v11, v8

    iget-object v11, v2, Ll/f;->i:[D

    aget-wide v14, v11, v8

    invoke-virtual {v1, v3, v4}, Ll/i;->b(D)D

    move-result-wide v16

    add-double v16, v16, v12

    cmpg-double v6, v3, v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-gtz v6, :cond_1

    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

    goto :goto_1

    :cond_1
    cmpl-double v6, v3, v7

    if-ltz v6, :cond_2

    const-wide v3, 0x3feffffde7210be9L    # 0.999999

    :cond_2
    :goto_1
    iget-object v6, v1, Ll/i;->b:[D

    invoke-static {v6, v3, v4}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v6

    if-lez v6, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    neg-int v6, v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, v1, Ll/i;->a:[F

    aget v8, v7, v6

    add-int/lit8 v11, v6, -0x1

    aget v7, v7, v11

    sub-float/2addr v8, v7

    float-to-double v12, v8

    iget-object v8, v1, Ll/i;->b:[D

    aget-wide v18, v8, v6

    aget-wide v20, v8, v11

    sub-double v18, v18, v20

    div-double v12, v12, v18

    mul-double/2addr v3, v12

    float-to-double v6, v7

    mul-double v12, v12, v20

    sub-double/2addr v6, v12

    add-double/2addr v6, v3

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/16 v6, 0x0

    :goto_3
    add-double/2addr v6, v14

    iget v3, v1, Ll/i;->d:I

    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/high16 v18, 0x4010000000000000L    # 4.0

    packed-switch v3, :pswitch_data_0

    mul-double/2addr v6, v11

    mul-double v16, v16, v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    goto :goto_4

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    throw v1

    :pswitch_1
    mul-double v6, v6, v18

    mul-double v16, v16, v18

    add-double v16, v16, v13

    rem-double v16, v16, v18

    sub-double v16, v16, v13

    mul-double v16, v16, v6

    goto :goto_5

    :pswitch_2
    const-wide v3, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    mul-double/2addr v6, v3

    mul-double v16, v16, v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    goto :goto_4

    :pswitch_3
    neg-double v3, v6

    mul-double v16, v3, v13

    goto :goto_5

    :pswitch_4
    mul-double v16, v6, v13

    goto :goto_5

    :pswitch_5
    mul-double v6, v6, v18

    mul-double v16, v16, v18

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    add-double v16, v16, v3

    rem-double v16, v16, v18

    sub-double v16, v16, v13

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->signum(D)D

    move-result-wide v3

    goto :goto_4

    :pswitch_6
    const-wide/16 v16, 0x0

    goto :goto_5

    :goto_4
    mul-double v16, v3, v6

    :goto_5
    iget-object v1, v2, Ll/f;->i:[D

    aget-wide v3, v1, v5

    const/4 v5, 0x2

    aget-wide v6, v1, v5

    mul-double/2addr v9, v6

    add-double/2addr v9, v3

    iget-object v1, v2, Ll/f;->h:[D

    aget-wide v2, v1, v5

    mul-double v16, v16, v2

    add-double v1, v16, v9

    double-to-float v1, v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract c(Landroid/view/View;F)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lp/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lp/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[0 , "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lp/g;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
