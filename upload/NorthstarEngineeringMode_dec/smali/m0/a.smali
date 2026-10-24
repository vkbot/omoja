.class public final Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lm0/a;->a:I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lm0/a;->b:[Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lm0/a;->b:[Ljava/lang/Object;

    iput v1, p0, Lm0/a;->a:I

    return-void
.end method

.method public static b([D[DZ)D
    .locals 12

    new-instance v0, Lw4/c;

    invoke-direct {v0}, Lw4/c;-><init>()V

    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_3

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    array-length v2, p0

    invoke-virtual {v0, p0, v2}, Lw4/c;->c([DI)D

    move-result-wide v2

    array-length v4, p1

    invoke-virtual {v0, p1, v4}, Lw4/c;->c([DI)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v8, p0, v0

    sub-double/2addr v8, v2

    aget-wide v10, p1, v0

    sub-double/2addr v10, v4

    mul-double/2addr v10, v8

    sub-double/2addr v10, v6

    add-int/lit8 v0, v0, 0x1

    int-to-double v8, v0

    div-double/2addr v10, v8

    add-double/2addr v6, v10

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    int-to-double p0, v1

    add-int/lit8 v1, v1, -0x1

    int-to-double v0, v1

    div-double/2addr p0, v0

    mul-double/2addr v6, p0

    :cond_1
    return-wide v6

    :cond_2
    new-instance p0, Lp4/d;

    sget-object p1, Lq4/c;->n1:Lq4/c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw p0

    :cond_3
    new-instance p0, Lp4/d;

    sget-object p2, Lq4/c;->f1:Lq4/c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    iget v0, p0, Lm0/a;->a:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p1, :cond_2

    move p1, v1

    :goto_0
    iget v0, p0, Lm0/a;->a:I

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lm0/a;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    iget v2, p0, Lm0/a;->a:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lm0/a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move p1, v0

    :goto_2
    if-ltz p1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return v1
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lm0/a;->a:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lm0/a;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "required: (index >= 0 && index < size) but: (index = "

    const-string v2, ", size = "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lm0/a;->a:I

    const-string v1, ")"

    invoke-static {p1, p0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(ILjava/lang/Object;)V
    .locals 3

    if-ltz p1, :cond_4

    iget v0, p0, Lm0/a;->a:I

    if-gt p1, v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lm0/a;->b:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_2

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lm0/a;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lm0/a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lm0/a;->b:[Ljava/lang/Object;

    :cond_2
    iget v0, p0, Lm0/a;->a:I

    :goto_2
    if-le v0, p1, :cond_3

    iget-object v1, p0, Lm0/a;->b:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lm0/a;->b:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget p1, p0, Lm0/a;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm0/a;->a:I

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "required: (index >= 0 && index <= size) but: (index = "

    const-string v1, ", size = "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lm0/a;->a:I

    const-string v0, ")"

    invoke-static {p1, p0, v0}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
