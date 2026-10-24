.class public final Li0/f;
.super Li0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/f$b;
    }
.end annotation


# static fields
.field public static final n:Li0/f$a;


# instance fields
.field public final k:Li0/f$b;

.field public l:Li0/j;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li0/f$a;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Li0/f;->n:Li0/f$a;

    return-void
.end method

.method public constructor <init>(Li0/b;Li0/d;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Li0/a;-><init>(Li0/b;Li0/d;)V

    sget-object p1, Li0/f;->n:Li0/f$a;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li0/f$b;

    iput-object p1, p0, Li0/f;->k:Li0/f$b;

    new-instance p1, Li0/j;

    const/4 p2, 0x4

    new-array v0, p2, [D

    fill-array-data v0, :array_0

    invoke-direct {p1, v0, p2}, Li0/j;-><init>([DI)V

    iput-object p1, p0, Li0/f;->l:Li0/j;

    const/4 p1, 0x1

    iput-boolean p1, p0, Li0/f;->m:Z

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method


# virtual methods
.method public final a([D)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v1, v2

    iget-object v6, v0, Li0/g;->b:Li0/d;

    invoke-virtual {v6}, Li0/d;->a()I

    move-result v6

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    iget-object v15, v0, Li0/f;->k:Li0/f$b;

    if-ge v10, v6, :cond_c

    iget-object v13, v15, Li0/f$b;->a:[D

    const/4 v14, 0x0

    :goto_1
    iget v7, v0, Li0/a;->g:I

    if-ge v14, v7, :cond_b

    iget-object v8, v0, Li0/a;->c:Li0/a$b;

    iget-object v9, v8, Li0/a$b;->c:[D

    add-int v18, v10, v14

    aget-wide v19, v9, v18

    add-int/lit8 v18, v18, 0x1

    aget-wide v21, v9, v18

    cmpl-double v9, v4, v19

    if-ltz v9, :cond_a

    cmpg-double v9, v4, v21

    if-gtz v9, :cond_a

    cmpl-double v9, v19, v21

    if-eqz v9, :cond_a

    add-int/lit8 v9, v7, -0x2

    sub-int/2addr v7, v14

    sub-int/2addr v7, v3

    :goto_2
    if-ltz v7, :cond_0

    iget-object v3, v8, Li0/a$b;->a:[I

    const/16 v17, 0x0

    aput v17, v3, v7

    add-int/lit8 v7, v7, -0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    if-lez v14, :cond_2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v14, :cond_1

    iget-object v7, v8, Li0/a$b;->b:[I

    aput v3, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    iget-object v3, v8, Li0/a$b;->b:[I

    const v7, 0x7fffffff

    aput v7, v3, v14

    const/16 v18, 0x1

    goto :goto_4

    :cond_2
    iget-object v3, v8, Li0/a$b;->b:[I

    const/4 v7, 0x0

    aput v9, v3, v7

    iget v7, v0, Li0/a;->g:I

    const/16 v18, 0x1

    aput v7, v3, v18

    :goto_4
    const/4 v3, 0x0

    const-wide/16 v19, 0x0

    :goto_5
    iget-object v7, v8, Li0/a$b;->b:[I

    aget v1, v7, v3

    add-int/lit8 v21, v3, 0x1

    aget v7, v7, v21

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_9

    sub-int v1, v9, v14

    add-int/lit8 v7, v14, -0x1

    move/from16 v21, v1

    iget v1, v0, Li0/a;->g:I

    move/from16 v23, v6

    move v6, v9

    const/16 v22, 0x0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move/from16 v33, v7

    move v7, v1

    move/from16 v1, v21

    move/from16 v21, v33

    :goto_6
    if-ltz v6, :cond_4

    if-ltz v21, :cond_3

    iget-object v0, v8, Li0/a$b;->b:[I

    aget v0, v0, v21

    if-ne v0, v6, :cond_3

    add-int v0, v10, v22

    move/from16 v26, v2

    iget-object v2, v8, Li0/a$b;->c:[D

    add-int v27, v0, v7

    aget-wide v27, v2, v27

    sub-double v29, v27, v4

    add-int/lit8 v0, v0, 0x1

    aget-wide v31, v2, v0

    sub-double v27, v27, v31

    div-double v29, v29, v27

    mul-double v29, v29, v24

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v21, v21, -0x1

    :goto_7
    move-wide/from16 v24, v29

    goto :goto_8

    :cond_3
    move/from16 v26, v2

    iget-object v0, v8, Li0/a$b;->a:[I

    aget v0, v0, v1

    add-int/2addr v0, v10

    iget-object v2, v8, Li0/a$b;->c:[D

    aget-wide v27, v2, v0

    sub-double v29, v4, v27

    add-int/2addr v0, v7

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    aget-wide v31, v2, v0

    sub-double v31, v31, v27

    div-double v29, v29, v31

    mul-double v29, v29, v24

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :goto_8
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v2, v26

    goto :goto_6

    :cond_4
    move/from16 v26, v2

    if-lez v14, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    iget-object v2, v8, Li0/a$b;->a:[I

    aget v6, v2, v0

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aput v6, v2, v0

    if-le v6, v14, :cond_5

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_9

    :cond_5
    if-eqz v1, :cond_6

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_6

    iget-object v2, v8, Li0/a$b;->a:[I

    aget v6, v2, v0

    aput v6, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_6
    add-double v19, v19, v24

    iget-object v0, v8, Li0/a$b;->b:[I

    aget v1, v0, v3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, v0, v3

    if-le v1, v9, :cond_7

    goto :goto_c

    :cond_7
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_8

    iget-object v1, v8, Li0/a$b;->b:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v2

    move/from16 v6, v23

    move/from16 v2, v26

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v21

    const/16 v18, 0x1

    goto/16 :goto_5

    :cond_a
    move/from16 v26, v2

    move v2, v3

    move/from16 v23, v6

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v2

    move/from16 v6, v23

    move/from16 v2, v26

    goto/16 :goto_1

    :cond_b
    move/from16 v26, v2

    move v2, v3

    move/from16 v23, v6

    const-wide/16 v19, 0x0

    :goto_c
    iget-object v0, v15, Li0/f$b;->b:[D

    aget-wide v0, v0, v10

    mul-double v19, v19, v0

    aput-wide v19, v13, v10

    iget-object v0, v15, Li0/f$b;->a:[D

    aget-wide v0, v0, v10

    add-double/2addr v11, v0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v2

    move/from16 v6, v23

    move/from16 v2, v26

    goto/16 :goto_0

    :cond_c
    move/from16 v26, v2

    move/from16 v23, v6

    const-wide/16 v0, 0x0

    cmpl-double v2, v11, v0

    if-nez v2, :cond_d

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    :cond_d
    move/from16 v3, v26

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v3, :cond_12

    move-object/from16 v4, p0

    iget-object v5, v4, Li0/g;->b:Li0/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    iput v6, v5, Li0/d;->b:I

    iput v6, v5, Li0/d;->c:I

    move-wide v7, v0

    move/from16 v6, v23

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v6, :cond_11

    iget-object v9, v15, Li0/f$b;->a:[D

    aget-wide v9, v9, v5

    iget-object v13, v4, Li0/g;->a:Li0/b;

    iget-object v14, v4, Li0/g;->b:Li0/d;

    iget v0, v14, Li0/d;->b:I

    iget-object v1, v14, Li0/d;->a:[I

    move/from16 v26, v3

    aget v3, v1, v0

    add-int/lit8 v16, v0, 0x1

    aget v1, v1, v16

    if-gt v3, v1, :cond_f

    iget v4, v14, Li0/d;->c:I

    add-int/2addr v3, v4

    if-lt v3, v1, :cond_e

    const/4 v1, 0x0

    iput v1, v14, Li0/d;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v14, Li0/d;->b:I

    goto :goto_f

    :cond_e
    add-int/lit8 v4, v4, 0x1

    iput v4, v14, Li0/d;->c:I

    :goto_f
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    iget v4, v14, Li0/d;->c:I

    sub-int/2addr v3, v4

    if-gt v3, v1, :cond_10

    const/4 v1, 0x0

    iput v1, v14, Li0/d;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v14, Li0/d;->b:I

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    add-int/lit8 v4, v4, 0x1

    iput v4, v14, Li0/d;->c:I

    :goto_10
    iget-object v0, v13, Li0/b;->a:Lm0/a;

    invoke-virtual {v0, v3}, Lm0/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/h;

    invoke-interface {v0}, Li0/h;->getLocation()[D

    move-result-object v0

    aget-wide v3, v0, v2

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v0, 0x0

    move-object/from16 v4, p0

    move/from16 v3, v26

    goto :goto_e

    :cond_11
    move/from16 v26, v3

    const/4 v1, 0x0

    div-double/2addr v7, v11

    aput-wide v7, p1, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v23, v6

    const-wide/16 v0, 0x0

    goto :goto_d

    :cond_12
    return-void
.end method
