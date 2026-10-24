.class public final Lx2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public b:Lx2/k;

.field public c:Z

.field public d:Lx2/z;

.field public e:J

.field public f:[B

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lx2/h;->e:J

    const/4 v0, -0x1

    iput v0, p0, Lx2/h;->g:I

    iput v0, p0, Lx2/h;->h:I

    return-void
.end method


# virtual methods
.method public final J(J)I
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lx2/h;->b:Lx2/k;

    if-eqz v3, :cond_a

    const/4 v4, -0x1

    int-to-long v5, v4

    cmp-long v5, v1, v5

    if-ltz v5, :cond_9

    iget-wide v5, v3, Lx2/k;->c:J

    cmp-long v7, v1, v5

    if-gtz v7, :cond_9

    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_8

    if-nez v7, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v4, v3, Lx2/k;->b:Lx2/z;

    iget-object v7, v0, Lx2/h;->d:Lx2/z;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_2

    iget-wide v10, v0, Lx2/h;->e:J

    iget v12, v0, Lx2/h;->g:I

    iget v13, v7, Lx2/z;->b:I

    sub-int/2addr v12, v13

    int-to-long v12, v12

    sub-long/2addr v10, v12

    cmp-long v12, v10, v1

    if-lez v12, :cond_1

    move-wide v5, v10

    goto :goto_0

    :cond_1
    move-wide v8, v10

    move-object/from16 v16, v7

    move-object v7, v4

    move-object/from16 v4, v16

    goto :goto_0

    :cond_2
    move-object v7, v4

    :goto_0
    sub-long v10, v5, v1

    sub-long v12, v1, v8

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    :goto_1
    invoke-static {v4}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget v5, v4, Lx2/z;->c:I

    iget v6, v4, Lx2/z;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v8

    cmp-long v7, v1, v5

    if-ltz v7, :cond_5

    iget-object v4, v4, Lx2/z;->f:Lx2/z;

    move-wide v8, v5

    goto :goto_1

    :cond_3
    :goto_2
    cmp-long v4, v5, v1

    if-lez v4, :cond_4

    invoke-static {v7}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget-object v7, v7, Lx2/z;->g:Lx2/z;

    invoke-static {v7}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget v4, v7, Lx2/z;->c:I

    iget v8, v7, Lx2/z;->b:I

    sub-int/2addr v4, v8

    int-to-long v8, v4

    sub-long/2addr v5, v8

    goto :goto_2

    :cond_4
    move-wide v8, v5

    move-object v4, v7

    :cond_5
    iget-boolean v5, v0, Lx2/h;->c:Z

    if-eqz v5, :cond_7

    invoke-static {v4}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget-boolean v5, v4, Lx2/z;->d:Z

    if-eqz v5, :cond_7

    new-instance v5, Lx2/z;

    iget-object v6, v4, Lx2/z;->a:[B

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    const-string v6, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v11, v6}, Lcom/google/android/material/slider/h;->x(Ljava/lang/Object;Ljava/lang/String;)V

    iget v12, v4, Lx2/z;->b:I

    iget v13, v4, Lx2/z;->c:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lx2/z;-><init>([BIIZZ)V

    iget-object v6, v3, Lx2/k;->b:Lx2/z;

    if-ne v6, v4, :cond_6

    iput-object v5, v3, Lx2/k;->b:Lx2/z;

    :cond_6
    invoke-virtual {v4, v5}, Lx2/z;->b(Lx2/z;)V

    iget-object v3, v5, Lx2/z;->g:Lx2/z;

    invoke-static {v3}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lx2/z;->a()Lx2/z;

    move-object v4, v5

    :cond_7
    iput-object v4, v0, Lx2/h;->d:Lx2/z;

    iput-wide v1, v0, Lx2/h;->e:J

    invoke-static {v4}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget-object v3, v4, Lx2/z;->a:[B

    iput-object v3, v0, Lx2/h;->f:[B

    iget v3, v4, Lx2/z;->b:I

    sub-long/2addr v1, v8

    long-to-int v1, v1

    add-int/2addr v3, v1

    iput v3, v0, Lx2/h;->g:I

    iget v1, v4, Lx2/z;->c:I

    iput v1, v0, Lx2/h;->h:I

    sub-int/2addr v1, v3

    return v1

    :cond_8
    :goto_3
    const/4 v3, 0x0

    iput-object v3, v0, Lx2/h;->d:Lx2/z;

    iput-wide v1, v0, Lx2/h;->e:J

    iput-object v3, v0, Lx2/h;->f:[B

    iput v4, v0, Lx2/h;->g:I

    iput v4, v0, Lx2/h;->h:I

    return v4

    :cond_9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v3, Lx2/k;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "offset=%s > size=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lcom/google/android/material/slider/h;->x(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lx2/h;->b:Lx2/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lx2/h;->b:Lx2/k;

    iput-object v0, p0, Lx2/h;->d:Lx2/z;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lx2/h;->e:J

    iput-object v0, p0, Lx2/h;->f:[B

    const/4 v0, -0x1

    iput v0, p0, Lx2/h;->g:I

    iput v0, p0, Lx2/h;->h:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z(J)V
    .locals 13

    iget-object v0, p0, Lx2/h;->b:Lx2/k;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lx2/h;->c:Z

    if-eqz v1, :cond_7

    iget-wide v1, v0, Lx2/k;->c:J

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-gtz v3, :cond_4

    cmp-long v3, p1, v5

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    sub-long/2addr v1, p1

    :goto_1
    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    iget-object v3, v0, Lx2/k;->b:Lx2/z;

    invoke-static {v3}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget-object v3, v3, Lx2/z;->g:Lx2/z;

    invoke-static {v3}, Lcom/google/android/material/slider/h;->w(Ljava/lang/Object;)V

    iget v4, v3, Lx2/z;->c:I

    iget v7, v3, Lx2/z;->b:I

    sub-int v7, v4, v7

    int-to-long v7, v7

    cmp-long v9, v7, v1

    if-gtz v9, :cond_1

    invoke-virtual {v3}, Lx2/z;->a()Lx2/z;

    move-result-object v4

    iput-object v4, v0, Lx2/k;->b:Lx2/z;

    invoke-static {v3}, Lx2/a0;->a(Lx2/z;)V

    sub-long/2addr v1, v7

    goto :goto_1

    :cond_1
    long-to-int v1, v1

    sub-int/2addr v4, v1

    iput v4, v3, Lx2/z;->c:I

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lx2/h;->d:Lx2/z;

    iput-wide p1, p0, Lx2/h;->e:J

    iput-object v1, p0, Lx2/h;->f:[B

    const/4 v1, -0x1

    iput v1, p0, Lx2/h;->g:I

    iput v1, p0, Lx2/h;->h:I

    goto :goto_3

    :cond_3
    const-string v0, "newSize < 0: "

    invoke-static {v0, p1, p2}, Landroidx/activity/b;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-lez v3, :cond_6

    sub-long v7, p1, v1

    move v3, v4

    :goto_2
    cmp-long v9, v7, v5

    if-lez v9, :cond_6

    invoke-virtual {v0, v4}, Lx2/k;->Y(I)Lx2/z;

    move-result-object v4

    iget v9, v4, Lx2/z;->c:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    iget v10, v4, Lx2/z;->c:I

    add-int/2addr v10, v9

    iput v10, v4, Lx2/z;->c:I

    int-to-long v11, v9

    sub-long/2addr v7, v11

    if-eqz v3, :cond_5

    iput-object v4, p0, Lx2/h;->d:Lx2/z;

    iput-wide v1, p0, Lx2/h;->e:J

    iget-object v3, v4, Lx2/z;->a:[B

    iput-object v3, p0, Lx2/h;->f:[B

    sub-int v3, v10, v9

    iput v3, p0, Lx2/h;->g:I

    iput v10, p0, Lx2/h;->h:I

    const/4 v3, 0x0

    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iput-wide p1, v0, Lx2/k;->c:J

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
