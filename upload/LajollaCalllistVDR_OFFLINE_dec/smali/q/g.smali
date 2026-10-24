.class public abstract Lq/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lm/f;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq/g;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 9

    iget-object p0, p0, Lq/g;->a:Lm/f;

    iget-object v0, p0, Lm/f;->g:Ly1/l;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    float-to-double v4, p1

    iget-object v6, p0, Lm/f;->h:[D

    invoke-virtual {v0, v4, v5, v6}, Ly1/l;->w0(D[D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm/f;->h:[D

    iget-object v4, p0, Lm/f;->e:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v3

    iget-object v4, p0, Lm/f;->f:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v2

    iget-object v4, p0, Lm/f;->b:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v1

    :goto_0
    iget-object v0, p0, Lm/f;->h:[D

    aget-wide v3, v0, v3

    aget-wide v5, v0, v2

    iget-object v0, p0, Lm/f;->a:Lm/i;

    float-to-double v7, p1

    invoke-virtual {v0, v7, v8, v5, v6}, Lm/i;->c(DD)D

    move-result-wide v5

    iget-object p0, p0, Lm/f;->h:[D

    aget-wide p0, p0, v1

    mul-double/2addr v5, p0

    add-double/2addr v5, v3

    double-to-float p0, v5

    return p0
.end method

.method public final b(F)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v0, v0, Lq/g;->a:Lm/f;

    iget-object v2, v0, Lm/f;->g:Ly1/l;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    float-to-double v5, v1

    iget-object v8, v0, Lm/f;->i:[D

    invoke-virtual {v2, v5, v6, v8}, Ly1/l;->z0(D[D)V

    iget-object v2, v0, Lm/f;->g:Ly1/l;

    iget-object v8, v0, Lm/f;->h:[D

    invoke-virtual {v2, v5, v6, v8}, Ly1/l;->w0(D[D)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lm/f;->i:[D

    aput-wide v3, v2, v6

    aput-wide v3, v2, v7

    aput-wide v3, v2, v5

    :goto_0
    float-to-double v1, v1

    iget-object v5, v0, Lm/f;->h:[D

    aget-wide v5, v5, v7

    iget-object v8, v0, Lm/f;->a:Lm/i;

    invoke-virtual {v8, v1, v2, v5, v6}, Lm/i;->c(DD)D

    move-result-wide v5

    iget-object v9, v0, Lm/f;->h:[D

    aget-wide v9, v9, v7

    iget-object v11, v0, Lm/f;->i:[D

    aget-wide v11, v11, v7

    invoke-virtual {v8, v1, v2}, Lm/i;->b(D)D

    move-result-wide v13

    add-double/2addr v13, v9

    cmpg-double v7, v1, v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-gtz v7, :cond_1

    const-wide v1, 0x3ee4f8b588e368f1L    # 1.0E-5

    goto :goto_1

    :cond_1
    cmpl-double v7, v1, v9

    if-ltz v7, :cond_2

    const-wide v1, 0x3feffffde7210be9L    # 0.999999

    :cond_2
    :goto_1
    iget-object v7, v8, Lm/i;->b:[D

    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v7

    if-lez v7, :cond_3

    move-wide/from16 p0, v5

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    neg-int v3, v7

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v8, Lm/i;->a:[F

    aget v7, v4, v3

    add-int/lit8 v9, v3, -0x1

    aget v4, v4, v9

    sub-float/2addr v7, v4

    move-wide/from16 p0, v5

    float-to-double v5, v7

    iget-object v7, v8, Lm/i;->b:[D

    aget-wide v15, v7, v3

    aget-wide v9, v7, v9

    sub-double/2addr v15, v9

    div-double/2addr v5, v15

    mul-double/2addr v1, v5

    float-to-double v3, v4

    mul-double/2addr v5, v9

    sub-double/2addr v3, v5

    add-double/2addr v3, v1

    goto :goto_2

    :cond_4
    move-wide/from16 p0, v5

    const-wide/16 v3, 0x0

    :goto_2
    add-double/2addr v3, v11

    iget v1, v8, Lm/i;->d:I

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    packed-switch v1, :pswitch_data_0

    mul-double/2addr v3, v5

    mul-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    goto :goto_3

    :pswitch_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0

    :pswitch_1
    mul-double/2addr v3, v11

    mul-double/2addr v13, v11

    add-double/2addr v13, v9

    rem-double/2addr v13, v11

    sub-double/2addr v13, v9

    mul-double/2addr v3, v13

    goto :goto_4

    :pswitch_2
    const-wide v1, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    mul-double/2addr v3, v1

    mul-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    goto :goto_3

    :pswitch_3
    neg-double v1, v3

    mul-double v3, v1, v9

    goto :goto_4

    :pswitch_4
    mul-double/2addr v3, v9

    goto :goto_4

    :pswitch_5
    mul-double/2addr v3, v11

    mul-double/2addr v13, v11

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    add-double/2addr v13, v1

    rem-double/2addr v13, v11

    sub-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->signum(D)D

    move-result-wide v1

    goto :goto_3

    :pswitch_6
    const-wide/16 v3, 0x0

    goto :goto_4

    :goto_3
    mul-double/2addr v3, v1

    :goto_4
    iget-object v1, v0, Lm/f;->i:[D

    const/4 v2, 0x0

    aget-wide v5, v1, v2

    const/4 v2, 0x2

    aget-wide v7, v1, v2

    move-wide/from16 v9, p0

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    iget-object v0, v0, Lm/f;->h:[D

    aget-wide v0, v0, v2

    mul-double/2addr v3, v0

    add-double/2addr v3, v7

    double-to-float v0, v3

    return v0

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

    iget-object v0, p0, Lq/g;->b:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lq/g;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[0 , "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lq/g;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
