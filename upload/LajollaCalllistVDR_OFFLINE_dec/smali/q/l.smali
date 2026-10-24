.class public abstract Lq/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ly1/l;

.field public b:[I

.field public c:[F

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Lq/l;->b:[I

    new-array v0, v0, [F

    iput-object v0, p0, Lq/l;->c:[F

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 2

    iget-object p0, p0, Lq/l;->a:Ly1/l;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Ly1/l;->v0(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public b(IF)V
    .locals 3

    iget-object v0, p0, Lq/l;->b:[I

    array-length v1, v0

    iget v2, p0, Lq/l;->d:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lq/l;->b:[I

    iget-object v0, p0, Lq/l;->c:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lq/l;->c:[F

    :cond_0
    iget-object v0, p0, Lq/l;->b:[I

    iget v1, p0, Lq/l;->d:I

    aput p1, v0, v1

    iget-object p1, p0, Lq/l;->c:[F

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lq/l;->d:I

    return-void
.end method

.method public abstract c(Landroid/view/View;F)V
.end method

.method public d(I)V
    .locals 13

    iget v0, p0, Lq/l;->d:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lq/l;->b:[I

    iget-object v2, p0, Lq/l;->c:[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    array-length v4, v1

    add-int/lit8 v4, v4, 0xa

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v5, v4, v3

    const/4 v0, 0x2

    :cond_1
    :goto_0
    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    aget v6, v4, v0

    add-int/lit8 v0, v0, -0x1

    aget v7, v4, v0

    if-ge v6, v7, :cond_1

    aget v8, v1, v7

    move v9, v6

    move v10, v9

    :goto_1
    if-ge v9, v7, :cond_3

    aget v11, v1, v9

    if-gt v11, v8, :cond_2

    aget v12, v1, v10

    aput v11, v1, v10

    aput v12, v1, v9

    aget v11, v2, v10

    aget v12, v2, v9

    aput v12, v2, v10

    aput v11, v2, v9

    add-int/lit8 v10, v10, 0x1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    aget v8, v1, v10

    aget v9, v1, v7

    aput v9, v1, v10

    aput v8, v1, v7

    aget v8, v2, v10

    aget v9, v2, v7

    aput v9, v2, v10

    aput v8, v2, v7

    add-int/lit8 v8, v0, 0x1

    add-int/lit8 v9, v10, -0x1

    aput v9, v4, v0

    add-int/lit8 v0, v8, 0x1

    aput v6, v4, v8

    add-int/lit8 v6, v0, 0x1

    aput v7, v4, v0

    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v4, v6

    goto :goto_0

    :cond_4
    move v0, v3

    move v1, v0

    :goto_2
    iget v2, p0, Lq/l;->d:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lq/l;->b:[I

    add-int/lit8 v4, v0, -0x1

    aget v4, v2, v4

    aget v2, v2, v0

    if-eq v4, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-array v0, v1, [D

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v2, v5

    move v3, v2

    :goto_3
    iget v4, p0, Lq/l;->d:I

    if-ge v2, v4, :cond_8

    if-lez v2, :cond_7

    iget-object v4, p0, Lq/l;->b:[I

    aget v6, v4, v2

    add-int/lit8 v7, v2, -0x1

    aget v4, v4, v7

    if-ne v6, v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lq/l;->b:[I

    aget v4, v4, v2

    int-to-double v6, v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v8

    aput-wide v6, v0, v3

    aget-object v4, v1, v3

    iget-object v6, p0, Lq/l;->c:[F

    aget v6, v6, v2

    float-to-double v6, v6

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-static {p1, v0, v1}, Ly1/l;->d0(I[D[[D)Ly1/l;

    move-result-object p1

    iput-object p1, p0, Lq/l;->a:Ly1/l;

    :goto_5
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lq/l;->e:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lq/l;->d:I

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lq/l;->b:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lq/l;->c:[F

    aget v0, v0, v2

    float-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lq/l;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
