.class public final Le3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/a$g;,
        Le3/a$f;,
        Le3/a$e;,
        Le3/a$d;,
        Le3/a$c;,
        Le3/a$a;,
        Le3/a$b;
    }
.end annotation


# static fields
.field public static final d1:[J

.field public static final transient e1:Le3/a$c;

.field public static final transient f1:Le3/a$e;

.field public static final transient g1:Le3/a$f;


# instance fields
.field public transient Z:[J

.field public transient b1:Le3/a$d;

.field public final transient c:I

.field public transient c1:Le3/a$g;

.field public transient r:[[[J

.field public transient x:I

.field public transient y:Le3/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [J

    sput-object v0, Le3/a;->d1:[J

    new-instance v0, Le3/a$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le3/a;->e1:Le3/a$c;

    new-instance v0, Le3/a$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le3/a;->f1:Le3/a$e;

    new-instance v0, Le3/a$f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le3/a;->g1:Le3/a$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0}, Le3/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Le3/a;->d(I)V

    const/4 p1, 0x2

    iput p1, p0, Le3/a;->c:I

    const/16 p1, 0x20

    new-array p1, p1, [J

    iput-object p1, p0, Le3/a;->Z:[J

    .line 3
    new-instance p1, Le3/a$b;

    .line 4
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/a;->y:Le3/a$b;

    .line 5
    new-instance p1, Le3/a$g;

    invoke-direct {p1, p0}, Le3/a$g;-><init>(Le3/a;)V

    iput-object p1, p0, Le3/a;->c1:Le3/a$g;

    .line 6
    invoke-virtual {p0}, Le3/a;->g()V

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/NegativeArraySizeException;

    const-string v0, "(requested capacity="

    const-string v1, ") < 0"

    .line 8
    invoke-static {v0, p1, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(I)Z
    .locals 6

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    shr-int/lit8 v0, p1, 0x6

    iget v2, p0, Le3/a;->x:I

    if-ge p1, v2, :cond_0

    iget-object p0, p0, Le3/a;->r:[[[J

    shr-int/lit8 v2, p1, 0x10

    aget-object p0, p0, v2

    if-eqz p0, :cond_0

    shr-int/lit8 v2, p1, 0xb

    and-int/lit8 v2, v2, 0x1f

    aget-object p0, p0, v2

    if-eqz p0, :cond_0

    and-int/lit8 v0, v0, 0x1f

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    shl-long p0, v4, p1

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "i="

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(I)I
    .locals 12

    if-ltz p1, :cond_8

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v1, v0, 0x1f

    shr-int/lit8 v2, p1, 0xb

    and-int/lit8 v2, v2, 0x1f

    shr-int/lit8 v3, p1, 0x10

    const-wide/16 v4, -0x1

    shl-long v6, v4, p1

    iget-object p1, p0, Le3/a;->r:[[[J

    array-length v8, p1

    if-ge v3, v8, :cond_6

    aget-object p1, p1, v3

    if-eqz p1, :cond_6

    aget-object p1, p1, v2

    if-eqz p1, :cond_6

    aget-wide v9, p1, v1

    not-long v9, v9

    and-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long p1, v6, v9

    if-nez p1, :cond_6

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 p1, v0, 0x1f

    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x1f

    shr-int/lit8 v0, v0, 0xa

    move v3, v0

    move v2, v1

    move v1, p1

    :goto_0
    if-eq v3, v8, :cond_1

    iget-object p1, p0, Le3/a;->r:[[[J

    aget-object p1, p1, v3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v0, 0x0

    const/16 v6, 0x20

    if-eq v2, v6, :cond_5

    aget-object v7, p1, v2

    if-nez v7, :cond_2

    :cond_1
    :goto_2
    move-wide v6, v4

    goto :goto_4

    :cond_2
    :goto_3
    if-eq v1, v6, :cond_4

    aget-wide v4, v7, v1

    not-long v4, v4

    cmp-long v11, v4, v9

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    move v2, v1

    goto :goto_0

    :cond_6
    :goto_4
    shl-int/lit8 p0, v3, 0xa

    shl-int/lit8 p1, v2, 0x5

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr p1, p0

    const p0, 0x7fffffff

    if-ne p1, p0, :cond_7

    const/4 p1, -0x1

    :cond_7
    return p1

    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "i="

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(I)I
    .locals 12

    if-ltz p1, :cond_7

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v1, v0, 0x1f

    shr-int/lit8 v2, p1, 0xb

    and-int/lit8 v2, v2, 0x1f

    shr-int/lit8 v3, p1, 0x10

    iget-object v4, p0, Le3/a;->r:[[[J

    array-length v5, v4

    const-wide/16 v6, 0x0

    if-ge v3, v5, :cond_5

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    aget-wide v8, v4, v1

    const-wide/16 v10, -0x1

    shl-long/2addr v10, p1

    and-long/2addr v8, v10

    cmp-long p1, v8, v6

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-wide v6, v8

    goto :goto_5

    :cond_1
    move-wide v8, v6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    and-int/lit8 p1, v0, 0x1f

    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x1f

    shr-int/lit8 v0, v0, 0xa

    move v3, v0

    move v2, v1

    move v1, p1

    :goto_2
    if-eq v3, v5, :cond_0

    iget-object p1, p0, Le3/a;->r:[[[J

    aget-object p1, p1, v3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :goto_3
    const/16 v4, 0x20

    if-eq v2, v4, :cond_4

    aget-object v10, p1, v2

    if-eqz v10, :cond_3

    :goto_4
    if-eq v1, v4, :cond_3

    aget-wide v8, v10, v1

    cmp-long v11, v8, v6

    if-eqz v11, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    move v2, v1

    goto :goto_2

    :cond_5
    :goto_5
    if-lt v3, v5, :cond_6

    const/4 p0, -0x1

    goto :goto_6

    :cond_6
    shl-int/lit8 p0, v3, 0xa

    shl-int/lit8 p1, v2, 0x5

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr p0, p1

    :goto_6
    return p0

    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "i="

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3/a;

    const/4 v1, 0x0

    iput-object v1, v0, Le3/a;->r:[[[J

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Le3/a;->d(I)V

    const/16 v2, 0x20

    new-array v2, v2, [J

    iput-object v2, v0, Le3/a;->Z:[J

    new-instance v2, Le3/a$b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Le3/a;->y:Le3/a$b;

    new-instance v2, Le3/a$g;

    invoke-direct {v2, v0}, Le3/a$g;-><init>(Le3/a;)V

    iput-object v2, v0, Le3/a;->c1:Le3/a$g;

    iput-object v1, v0, Le3/a;->b1:Le3/a$d;

    iget v1, p0, Le3/a;->x:I

    sget-object v2, Le3/a;->e1:Le3/a$c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, p0, v2}, Le3/a;->f(IILe3/a;Le3/a$a;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(I)V
    .locals 7

    shr-int/lit8 p1, p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-lt p1, v0, :cond_1

    shl-int/lit8 v0, v0, 0x1

    :cond_1
    const p1, 0x8000

    if-le v0, p1, :cond_2

    move v0, p1

    :cond_2
    iget-object v1, p0, Le3/a;->r:[[[J

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_4

    if-nez v1, :cond_8

    :cond_4
    new-array v4, v0, [[[J

    if-eqz v3, :cond_6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Le3/a;->r:[[[J

    array-length v1, v1

    if-lez v1, :cond_6

    move v3, v2

    :goto_1
    if-eq v3, v1, :cond_5

    iget-object v5, p0, Le3/a;->r:[[[J

    const/4 v6, 0x0

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Le3/a;->y:Le3/a$b;

    iput v2, v1, Le3/a$b;->a:I

    :cond_6
    iput-object v4, p0, Le3/a;->r:[[[J

    if-ne v0, p1, :cond_7

    const p1, 0x7fffffff

    goto :goto_2

    :cond_7
    const/high16 p1, 0x10000

    mul-int/2addr p1, v0

    :goto_2
    iput p1, p0, Le3/a;->x:I

    :cond_8
    return-void
.end method

.method public final e(I)V
    .locals 6

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    shr-int/lit8 v0, p1, 0x6

    shr-int/lit8 v1, p1, 0x10

    shr-int/lit8 v2, p1, 0xb

    and-int/lit8 v2, v2, 0x1f

    iget v3, p0, Le3/a;->x:I

    if-lt p1, v3, :cond_0

    invoke-virtual {p0, p1}, Le3/a;->d(I)V

    :cond_0
    iget-object v3, p0, Le3/a;->r:[[[J

    aget-object v4, v3, v1

    const/16 v5, 0x20

    if-nez v4, :cond_1

    new-array v4, v5, [[J

    aput-object v4, v3, v1

    :cond_1
    aget-object v1, v4, v2

    if-nez v1, :cond_2

    new-array v1, v5, [J

    aput-object v1, v4, v2

    :cond_2
    and-int/lit8 v0, v0, 0x1f

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object p0, p0, Le3/a;->y:Le3/a$b;

    const/4 p1, 0x0

    iput p1, p0, Le3/a$b;->a:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "i="

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Le3/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Le3/a;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Le3/a;->b1:Le3/a$d;

    if-nez v0, :cond_2

    new-instance v0, Le3/a$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le3/a;->b1:Le3/a$d;

    :cond_2
    iget v0, p0, Le3/a;->x:I

    iget v2, p1, Le3/a;->x:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Le3/a;->b1:Le3/a$d;

    invoke-virtual {p0, v1, v0, p1, v2}, Le3/a;->f(IILe3/a;Le3/a$a;)V

    iget-object p0, p0, Le3/a;->b1:Le3/a$d;

    iget-boolean p0, p0, Le3/a$d;->a:Z

    return p0
.end method

.method public final f(IILe3/a;Le3/a$a;)V
    .locals 46

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    invoke-virtual {v10, v3}, Le3/a$a;->d(Le3/a;)Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Le3/a;->y:Le3/a$b;

    iput v11, v4, Le3/a$b;->a:I

    :cond_0
    if-lt v2, v1, :cond_37

    add-int/lit8 v4, v1, 0x1

    const/4 v13, 0x1

    if-ge v4, v13, :cond_1

    goto/16 :goto_21

    :cond_1
    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p4 .. p4}, Le3/a$a;->c()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_3

    move v14, v13

    goto :goto_0

    :cond_3
    move v14, v11

    :goto_0
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_4

    move v15, v13

    goto :goto_1

    :cond_4
    move v15, v11

    :goto_1
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_5

    move/from16 v16, v13

    goto :goto_2

    :cond_5
    move/from16 v16, v11

    :goto_2
    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    move/from16 v17, v13

    goto :goto_3

    :cond_6
    move/from16 v17, v11

    :goto_3
    shr-int/lit8 v4, v1, 0x6

    const-wide/16 v5, -0x1

    shl-long v18, v5, v1

    add-int/lit8 v7, v2, -0x1

    shr-int/lit8 v9, v7, 0x6

    neg-int v8, v2

    ushr-long v20, v5, v8

    iget-object v8, v0, Le3/a;->r:[[[J

    array-length v11, v8

    const/16 v22, 0x0

    if-eqz v3, :cond_7

    iget-object v12, v3, Le3/a;->r:[[[J

    goto :goto_4

    :cond_7
    move-object/from16 v12, v22

    :goto_4
    if-eqz v12, :cond_8

    iget-object v3, v3, Le3/a;->r:[[[J

    array-length v3, v3

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    shr-int/lit8 v23, v1, 0x10

    shr-int/lit8 v24, v1, 0xb

    and-int/lit8 v24, v24, 0x1f

    and-int/lit8 v25, v4, 0x1f

    shr-int/lit8 v13, v7, 0x10

    shr-int/lit8 v7, v7, 0xb

    and-int/lit8 v27, v7, 0x1f

    and-int/lit8 v28, v9, 0x1f

    shl-int/lit8 v7, v13, 0x5

    add-int v7, v7, v27

    if-nez v4, :cond_9

    cmp-long v5, v18, v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-nez v24, :cond_a

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    move/from16 p1, v6

    move/from16 v6, v23

    move/from16 v45, v11

    move v11, v4

    move/from16 v4, v45

    :goto_8
    if-ge v1, v2, :cond_36

    if-ge v6, v4, :cond_b

    aget-object v23, v8, v6

    if-eqz v23, :cond_c

    const/16 v29, 0x1

    goto :goto_9

    :cond_b
    move-object/from16 v23, v22

    :cond_c
    const/16 v29, 0x0

    :goto_9
    if-ge v6, v3, :cond_d

    if-eqz v12, :cond_d

    aget-object v30, v12, v6

    if-eqz v30, :cond_e

    const/16 v31, 0x1

    goto :goto_a

    :cond_d
    move-object/from16 v30, v22

    :cond_e
    const/16 v31, 0x0

    :goto_a
    if-nez v29, :cond_f

    if-nez v31, :cond_f

    if-nez v14, :cond_11

    :cond_f
    if-nez v29, :cond_10

    if-nez v15, :cond_11

    :cond_10
    if-nez v31, :cond_13

    if-eqz v16, :cond_13

    :cond_11
    if-eqz v5, :cond_13

    if-eq v6, v13, :cond_13

    if-ge v6, v4, :cond_12

    aput-object v22, v8, v6

    :cond_12
    move/from16 v24, p1

    move/from16 v41, v3

    move/from16 v38, v7

    move v10, v9

    const/16 v26, 0x1

    move v7, v6

    goto/16 :goto_20

    :cond_13
    move/from16 p3, v5

    const/16 v26, 0x1

    if-ne v6, v13, :cond_14

    add-int/lit8 v32, v27, 0x1

    move/from16 v5, v32

    goto :goto_b

    :cond_14
    const/16 v5, 0x20

    :goto_b
    move-object/from16 v33, v23

    move/from16 v34, v29

    move/from16 v23, p3

    move-object/from16 v29, v8

    move v8, v4

    move/from16 v4, v24

    move/from16 v24, p1

    :goto_c
    if-eq v4, v5, :cond_32

    if-eqz v34, :cond_15

    aget-object v35, v33, v4

    if-eqz v35, :cond_16

    move/from16 v36, v26

    goto :goto_d

    :cond_15
    move-object/from16 v35, v22

    :cond_16
    const/16 v36, 0x0

    :goto_d
    if-eqz v31, :cond_17

    aget-object v37, v30, v4

    if-eqz v37, :cond_18

    move/from16 v38, v26

    goto :goto_e

    :cond_17
    move-object/from16 v37, v22

    :cond_18
    const/16 v38, 0x0

    :goto_e
    shl-int/lit8 v39, v6, 0x5

    move/from16 p3, v3

    add-int v3, v39, v4

    if-eq v7, v3, :cond_19

    move/from16 v39, v26

    goto :goto_f

    :cond_19
    const/16 v39, 0x0

    :goto_f
    if-nez v36, :cond_1a

    if-nez v38, :cond_1a

    if-nez v14, :cond_1c

    :cond_1a
    if-nez v36, :cond_1b

    if-nez v15, :cond_1c

    :cond_1b
    if-nez v38, :cond_1e

    if-eqz v16, :cond_1e

    :cond_1c
    if-eqz v23, :cond_1e

    if-eqz v39, :cond_1e

    if-eqz v34, :cond_1d

    aput-object v22, v33, v4

    :cond_1d
    move/from16 v41, p3

    move/from16 v32, v5

    move/from16 v38, v7

    move v10, v9

    move v7, v6

    goto/16 :goto_1e

    :cond_1e
    shl-int/lit8 v40, v3, 0x5

    if-eqz v39, :cond_1f

    const/16 v3, 0x20

    goto :goto_10

    :cond_1f
    move/from16 v3, v28

    :goto_10
    move/from16 p1, v3

    if-nez v36, :cond_20

    iget-object v3, v0, Le3/a;->Z:[J

    goto :goto_11

    :cond_20
    move-object/from16 v3, v35

    :goto_11
    if-nez v38, :cond_21

    sget-object v35, Le3/a;->d1:[J

    goto :goto_12

    :cond_21
    move-object/from16 v35, v37

    :goto_12
    const-wide/16 v36, 0x0

    if-eqz v23, :cond_25

    if-eqz v39, :cond_25

    if-eqz v17, :cond_24

    if-nez v38, :cond_24

    move/from16 v38, v4

    array-length v4, v3

    move/from16 v39, v5

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_23

    aget-wide v40, v3, v5

    cmp-long v25, v40, v36

    if-eqz v25, :cond_22

    const/4 v4, 0x0

    goto :goto_14

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_23
    move/from16 v4, v26

    :goto_14
    move/from16 v41, p3

    move/from16 v43, v6

    move/from16 v44, v8

    move v10, v9

    move/from16 v42, v38

    move/from16 v32, v39

    move/from16 v38, v7

    goto/16 :goto_18

    :cond_24
    move/from16 v38, v4

    move/from16 v39, v5

    const/4 v5, 0x0

    const/16 v25, 0x20

    move/from16 v41, p3

    move-object v4, v3

    move-object/from16 v3, p4

    move-object/from16 p3, v4

    move/from16 v42, v38

    move/from16 v4, v40

    move/from16 v32, v39

    const/16 v10, 0x20

    move/from16 v43, v6

    move/from16 v6, v25

    move/from16 v38, v7

    move-object/from16 v7, p3

    move/from16 v44, v8

    move-object/from16 v8, v35

    invoke-virtual/range {v3 .. v8}, Le3/a$a;->a(III[J[J)Z

    move-result v4

    move-object/from16 v3, p3

    move v10, v9

    goto/16 :goto_18

    :cond_25
    move/from16 v41, p3

    move-object/from16 p3, v3

    move/from16 v42, v4

    move/from16 v32, v5

    move/from16 v43, v6

    move/from16 v38, v7

    move/from16 v44, v8

    const/16 v10, 0x20

    if-eqz v23, :cond_26

    const/4 v5, 0x0

    move/from16 v8, p1

    move-object/from16 v3, p4

    move/from16 v4, v40

    move v6, v8

    move-object/from16 v7, p3

    move-object/from16 v8, v35

    invoke-virtual/range {v3 .. v8}, Le3/a$a;->a(III[J[J)Z

    move-result v25

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, v35

    move v10, v9

    move-wide/from16 v8, v20

    invoke-virtual/range {v3 .. v9}, Le3/a$a;->e(II[J[JJ)Z

    move-result v3

    and-int v3, v25, v3

    move v4, v3

    goto :goto_16

    :cond_26
    move v10, v9

    if-ne v11, v10, :cond_27

    and-long v8, v18, v20

    move-object/from16 v3, p4

    move/from16 v4, v40

    move/from16 v5, v25

    move-object/from16 v6, p3

    move-object/from16 v7, v35

    invoke-virtual/range {v3 .. v9}, Le3/a$a;->e(II[J[JJ)Z

    move-result v3

    goto :goto_15

    :cond_27
    move-object/from16 v3, p4

    move/from16 v4, v40

    move/from16 v5, v25

    move-object/from16 v6, p3

    move-object/from16 v7, v35

    move-wide/from16 v8, v18

    invoke-virtual/range {v3 .. v9}, Le3/a$a;->e(II[J[JJ)Z

    move-result v9

    add-int/lit8 v5, v25, 0x1

    move/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, v35

    invoke-virtual/range {v3 .. v8}, Le3/a$a;->a(III[J[J)Z

    move-result v3

    and-int v23, v9, v3

    move/from16 v5, p1

    const/16 v3, 0x20

    if-eq v5, v3, :cond_28

    move-object/from16 v3, p4

    move/from16 v4, v40

    move-object/from16 v6, p3

    move-object/from16 v7, v35

    move-wide/from16 v8, v20

    invoke-virtual/range {v3 .. v9}, Le3/a$a;->e(II[J[JJ)Z

    move-result v3

    and-int v3, v23, v3

    goto :goto_15

    :cond_28
    move/from16 v3, v23

    :goto_15
    move v4, v3

    move/from16 v23, v26

    :goto_16
    move-object/from16 v3, p3

    if-eqz v4, :cond_2b

    array-length v4, v3

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_2a

    aget-wide v6, v3, v5

    cmp-long v6, v6, v36

    if-eqz v6, :cond_29

    const/4 v4, 0x0

    goto :goto_18

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_2a
    move/from16 v4, v26

    :cond_2b
    :goto_18
    if-eqz v4, :cond_2d

    move/from16 v4, v42

    if-eqz v34, :cond_2c

    aput-object v22, v33, v4

    :cond_2c
    move/from16 v7, v43

    move/from16 v8, v44

    goto :goto_1b

    :cond_2d
    move/from16 v4, v42

    iget-object v5, v0, Le3/a;->Z:[J

    if-ne v3, v5, :cond_2c

    iget v5, v0, Le3/a;->x:I

    if-lt v1, v5, :cond_2e

    invoke-virtual {v0, v1}, Le3/a;->d(I)V

    iget-object v5, v0, Le3/a;->r:[[[J

    array-length v8, v5

    move-object/from16 v29, v5

    goto :goto_19

    :cond_2e
    move/from16 v8, v44

    :goto_19
    if-nez v33, :cond_2f

    const/16 v5, 0x20

    new-array v6, v5, [[J

    move/from16 v7, v43

    aput-object v6, v29, v7

    move-object/from16 v33, v6

    move/from16 v34, v26

    goto :goto_1a

    :cond_2f
    move/from16 v7, v43

    const/16 v5, 0x20

    :goto_1a
    aput-object v3, v33, v4

    new-array v3, v5, [J

    iput-object v3, v0, Le3/a;->Z:[J

    :goto_1b
    if-eqz v34, :cond_31

    aget-object v3, v33, v4

    if-nez v3, :cond_30

    goto :goto_1c

    :cond_30
    const/4 v3, 0x0

    goto :goto_1d

    :cond_31
    :goto_1c
    move/from16 v3, v26

    :goto_1d
    and-int v3, v24, v3

    move/from16 v24, v3

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    move v6, v7

    move v9, v10

    move/from16 v5, v32

    move/from16 v7, v38

    move/from16 v3, v41

    const/16 v25, 0x0

    move-object/from16 v10, p4

    goto/16 :goto_c

    :cond_32
    move/from16 v41, v3

    move/from16 v38, v7

    move/from16 v44, v8

    move v10, v9

    const/16 v3, 0x20

    move v7, v6

    if-ne v4, v3, :cond_34

    if-eqz v24, :cond_34

    move/from16 v4, v44

    if-ge v7, v4, :cond_33

    aput-object v22, v29, v7

    :cond_33
    :goto_1f
    move/from16 v5, v23

    move-object/from16 v8, v29

    goto :goto_20

    :cond_34
    move/from16 v4, v44

    goto :goto_1f

    :goto_20
    add-int/lit8 v6, v7, 0x1

    shl-int/lit8 v11, v6, 0xa

    shl-int/lit8 v1, v6, 0x10

    if-gez v1, :cond_35

    const v1, 0x7fffffff

    :cond_35
    move v9, v10

    move/from16 p1, v24

    move/from16 v7, v38

    move/from16 v3, v41

    const/16 v24, 0x0

    move-object/from16 v10, p4

    goto/16 :goto_8

    :cond_36
    invoke-virtual/range {p4 .. p4}, Le3/a$a;->b()V

    return-void

    :cond_37
    :goto_21
    const-string v0, ") < 0"

    const-string v3, "(i="

    const-string v4, ""

    if-gez v1, :cond_38

    invoke-static {v3, v1, v0}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    :cond_38
    move-object v5, v4

    :goto_22
    const-string v6, ")"

    const v7, 0x7fffffff

    if-ne v1, v7, :cond_39

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_39
    const-string v7, ", "

    if-gez v2, :cond_3b

    invoke-static {v5}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3a

    move-object v5, v4

    goto :goto_23

    :cond_3a
    move-object v5, v7

    :goto_23
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(j="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3b
    if-le v1, v2, :cond_3d

    invoke-static {v5}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3c

    goto :goto_24

    :cond_3c
    move-object v4, v7

    :goto_24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") > (j="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v6}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Le3/a;->y:Le3/a$b;

    iget v0, v0, Le3/a$b;->a:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Le3/a;->x:I

    const/4 v1, 0x0

    iget-object v2, p0, Le3/a;->c1:Le3/a$g;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Le3/a;->f(IILe3/a;Le3/a$a;)V

    return-void
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Le3/a;->g()V

    iget-object p0, p0, Le3/a;->y:Le3/a$b;

    iget p0, p0, Le3/a$b;->a:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Le3/a;->c(I)I

    move-result v1

    :cond_0
    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Le3/a;->c(I)I

    move-result v2

    iget v3, p0, Le3/a;->c:I

    if-lez v3, :cond_3

    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Le3/a;->b(I)I

    move-result v4

    if-gez v4, :cond_2

    const v4, 0x7fffffff

    :cond_2
    add-int/2addr v1, v3

    if-ge v1, v4, :cond_3

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Le3/a;->c(I)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-ltz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    :goto_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
