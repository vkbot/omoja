.class public final Lm5/g1$e$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic Z:Lm5/g1$e;

.field public c:I

.field public r:I

.field public x:I

.field public y:[B


# direct methods
.method public constructor <init>(Lm5/g1$e;)V
    .locals 0

    iput-object p1, p0, Lm5/g1$e$a;->Z:Lm5/g1$e;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    iget-object v0, p0, Lm5/g1$e$a;->y:[B

    if-nez v0, :cond_0

    const-wide/16 v1, 0x1000

    goto :goto_0

    :cond_0
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    array-length v0, v0

    iget v4, p0, Lm5/g1$e$a;->c:I

    sub-int/2addr v0, v4

    :goto_1
    int-to-long v4, v0

    sub-long v4, v1, v4

    int-to-long v6, p1

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    const-wide/16 v4, 0x2

    mul-long/2addr v1, v4

    goto :goto_1

    :cond_2
    const-wide/32 v4, 0x7ffffff7

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p1, v1

    new-array v1, p1, [B

    if-lez v0, :cond_4

    iget v2, p0, Lm5/g1$e$a;->r:I

    iget v4, p0, Lm5/g1$e$a;->x:I

    if-le v2, v4, :cond_3

    iget-object v2, p0, Lm5/g1$e$a;->y:[B

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lm5/g1$e$a;->y:[B

    sub-int v2, v0, v2

    invoke-static {v5, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lm5/g1$e$a;->y:[B

    iget v4, p0, Lm5/g1$e$a;->r:I

    sub-int v5, v0, v4

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iput v3, p0, Lm5/g1$e$a;->x:I

    iput v0, p0, Lm5/g1$e$a;->r:I

    iget v0, p0, Lm5/g1$e$a;->c:I

    iget-object v2, p0, Lm5/g1$e$a;->y:[B

    array-length v2, v2

    sub-int/2addr p1, v2

    add-int/2addr p1, v0

    iput p1, p0, Lm5/g1$e$a;->c:I

    goto :goto_3

    :cond_4
    iput p1, p0, Lm5/g1$e$a;->c:I

    :goto_3
    iput-object v1, p0, Lm5/g1$e$a;->y:[B

    return-void
.end method

.method public final read()I
    .locals 4

    iget-object v0, p0, Lm5/g1$e$a;->Z:Lm5/g1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm5/g1$e;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lm5/g1$e$a;->y:[B

    iget v2, p0, Lm5/g1$e$a;->x:I

    aget-byte v3, v0, v2

    add-int/2addr v2, v1

    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lm5/g1$e$a;->x:I

    iget v0, p0, Lm5/g1$e$a;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lm5/g1$e$a;->c:I

    return v3
.end method

.method public final write(I)V
    .locals 3

    iget v0, p0, Lm5/g1$e$a;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0, v1}, Lm5/g1$e$a;->a(I)V

    :cond_0
    iget-object v0, p0, Lm5/g1$e$a;->y:[B

    iget v2, p0, Lm5/g1$e$a;->r:I

    int-to-byte p1, p1

    .line 2
    aput-byte p1, v0, v2

    add-int/2addr v2, v1

    .line 3
    array-length p1, v0

    rem-int/2addr v2, p1

    iput v2, p0, Lm5/g1$e$a;->r:I

    iget p1, p0, Lm5/g1$e$a;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lm5/g1$e$a;->c:I

    return-void
.end method

.method public final write([BII)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lm5/g1$e$a;->c:I

    if-ge v0, p3, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lm5/g1$e$a;->a(I)V

    :cond_1
    iget v0, p0, Lm5/g1$e$a;->r:I

    iget v1, p0, Lm5/g1$e$a;->x:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iput v2, p0, Lm5/g1$e$a;->x:I

    iput v2, p0, Lm5/g1$e$a;->r:I

    :cond_2
    iget-object v0, p0, Lm5/g1$e$a;->y:[B

    .line 5
    array-length v1, v0

    iget v3, p0, Lm5/g1$e$a;->r:I

    sub-int/2addr v1, v3

    iget v4, p0, Lm5/g1$e$a;->x:I

    if-le v3, v4, :cond_4

    if-ge p3, v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {p1, p2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget-object v0, p0, Lm5/g1$e$a;->y:[B

    sub-int v1, p3, v1

    .line 7
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lm5/g1$e$a;->r:I

    add-int/2addr p1, p3

    iget-object p2, p0, Lm5/g1$e$a;->y:[B

    .line 8
    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lm5/g1$e$a;->r:I

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lm5/g1$e$a;->r:I

    add-int/2addr p1, p3

    iput p1, p0, Lm5/g1$e$a;->r:I

    :goto_1
    iget p1, p0, Lm5/g1$e$a;->c:I

    sub-int/2addr p1, p3

    iput p1, p0, Lm5/g1$e$a;->c:I

    return-void
.end method
