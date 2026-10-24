.class public final Ls4/a;
.super Lo4/a;
.source "SourceFile"


# instance fields
.field public final Z:[I

.field public final b1:[I

.field public final c:[I

.field public final r:[I

.field public final x:[I

.field public final y:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x270

    new-array v1, v0, [I

    iput-object v1, p0, Ls4/a;->c:[I

    new-array v1, v0, [I

    iput-object v1, p0, Ls4/a;->r:[I

    new-array v1, v0, [I

    iput-object v1, p0, Ls4/a;->x:[I

    new-array v1, v0, [I

    iput-object v1, p0, Ls4/a;->y:[I

    new-array v1, v0, [I

    iput-object v1, p0, Ls4/a;->Z:[I

    new-array v1, v0, [I

    iput-object v1, p0, Ls4/a;->b1:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit16 v2, v1, 0x26f

    rem-int/2addr v2, v0

    iget-object v3, p0, Ls4/a;->r:[I

    aput v2, v3, v1

    add-int/lit16 v2, v1, 0x26e

    rem-int/2addr v2, v0

    iget-object v3, p0, Ls4/a;->x:[I

    aput v2, v3, v1

    add-int/lit8 v2, v1, 0x46

    rem-int/2addr v2, v0

    iget-object v3, p0, Ls4/a;->y:[I

    aput v2, v3, v1

    add-int/lit16 v2, v1, 0xb3

    rem-int/2addr v2, v0

    iget-object v3, p0, Ls4/a;->Z:[I

    aput v2, v3, v1

    add-int/lit16 v2, v1, 0x1c1

    rem-int/2addr v2, v0

    iget-object v3, p0, Ls4/a;->b1:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ls4/a;->a([I)V

    return-void
.end method


# virtual methods
.method public final a([I)V
    .locals 7

    const-wide v0, 0xffffffffL

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    const/16 p1, 0x20

    ushr-long v4, v2, p1

    long-to-int p1, v4

    and-long/2addr v0, v2

    long-to-int v0, v0

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Ls4/a;->a([I)V

    goto :goto_2

    :cond_0
    array-length v2, p1

    iget-object p0, p0, Ls4/a;->c:[I

    array-length v3, p0

    sget-object v4, Lz4/b;->a:[[D

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    array-length v3, p0

    if-ge v2, v3, :cond_2

    array-length v2, p1

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    array-length v3, p1

    sub-int v3, v2, v3

    aget v3, p0, v3

    int-to-long v3, v3

    const/16 v5, 0x1e

    shr-long v5, v3, v5

    xor-long/2addr v3, v5

    const-wide/32 v5, 0x6c078965

    mul-long/2addr v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    and-long/2addr v3, v0

    long-to-int v3, v3

    aput v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
