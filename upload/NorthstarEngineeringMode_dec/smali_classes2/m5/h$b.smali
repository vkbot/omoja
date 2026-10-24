.class public final Lm5/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lm5/z0;

.field public b:[Lm5/w1;

.field public c:[I

.field public d:[Lm5/h;

.field public e:[I

.field public f:[I

.field public g:[I

.field public h:[I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Lm5/z0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/h$b;->a:Lm5/z0;

    const/16 p1, 0x20

    new-array v0, p1, [Lm5/w1;

    iput-object v0, p0, Lm5/h$b;->b:[Lm5/w1;

    new-array v0, p1, [I

    iput-object v0, p0, Lm5/h$b;->c:[I

    new-array v0, p1, [Lm5/h;

    iput-object v0, p0, Lm5/h$b;->d:[Lm5/h;

    new-array v0, p1, [I

    iput-object v0, p0, Lm5/h$b;->e:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lm5/h$b;->f:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lm5/h$b;->g:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lm5/h$b;->h:[I

    const/16 p1, 0x1f

    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-ltz v0, :cond_0

    iget-object v2, p0, Lm5/h$b;->c:[I

    const/4 v3, -0x2

    aput v3, v2, v0

    iget-object v2, p0, Lm5/h$b;->e:[I

    add-int/lit8 v3, v0, 0x1

    aput v3, v2, v0

    iget-object v2, p0, Lm5/h$b;->f:[I

    aput v1, v2, v0

    iget-object v2, p0, Lm5/h$b;->g:[I

    aput v1, v2, v0

    iget-object v2, p0, Lm5/h$b;->h:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/h$b;->e:[I

    aput v1, v0, p1

    const/4 p1, 0x0

    iput p1, p0, Lm5/h$b;->i:I

    iput v1, p0, Lm5/h$b;->j:I

    return-void
.end method

.method public static b(II[I[II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    aput p4, p3, p4

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_1

    aget v0, p3, p1

    aput v0, p3, p4

    aput p1, p2, p4

    aput p4, p3, p1

    if-ne p0, p1, :cond_2

    :goto_0
    move p0, p4

    goto :goto_1

    :cond_1
    aget p1, p3, p0

    aput p1, p3, p4

    aget p1, p3, p0

    aput p4, p2, p1

    aput p4, p3, p0

    :cond_2
    :goto_1
    return p0
.end method

.method public static d(II[I[I)I
    .locals 3

    aget v0, p3, p1

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    if-ne p0, p1, :cond_1

    aget p0, p2, p1

    goto :goto_0

    :cond_1
    aget v2, p2, p1

    aput v2, p2, v0

    :goto_0
    aget v0, p2, p1

    if-ne v0, v1, :cond_2

    aget p2, p3, p1

    aput p2, p3, p0

    goto :goto_1

    :cond_2
    aget v2, p3, p1

    aput v2, p3, v0

    aput v1, p2, p1

    :goto_1
    aput v1, p3, p1

    return p0
.end method


# virtual methods
.method public final a(Lm5/h;)I
    .locals 12

    iget v0, p0, Lm5/h$b;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lm5/h$b;->b:[Lm5/w1;

    array-length v2, v0

    iget-object v3, p0, Lm5/h$b;->c:[I

    iget-object v4, p0, Lm5/h$b;->d:[Lm5/h;

    iget-object v5, p0, Lm5/h$b;->e:[I

    iget-object v6, p0, Lm5/h$b;->f:[I

    iget-object v7, p0, Lm5/h$b;->g:[I

    iget-object v8, p0, Lm5/h$b;->h:[I

    mul-int/lit8 v9, v2, 0x2

    new-array v10, v9, [Lm5/w1;

    iput-object v10, p0, Lm5/h$b;->b:[Lm5/w1;

    new-array v11, v9, [I

    iput-object v11, p0, Lm5/h$b;->c:[I

    new-array v11, v9, [Lm5/h;

    iput-object v11, p0, Lm5/h$b;->d:[Lm5/h;

    new-array v11, v9, [I

    iput-object v11, p0, Lm5/h$b;->e:[I

    new-array v11, v9, [I

    iput-object v11, p0, Lm5/h$b;->f:[I

    new-array v11, v9, [I

    iput-object v11, p0, Lm5/h$b;->g:[I

    new-array v11, v9, [I

    iput-object v11, p0, Lm5/h$b;->h:[I

    const/4 v11, 0x0

    invoke-static {v0, v11, v10, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lm5/h$b;->c:[I

    invoke-static {v3, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lm5/h$b;->d:[Lm5/h;

    invoke-static {v4, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lm5/h$b;->e:[I

    invoke-static {v5, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lm5/h$b;->f:[I

    invoke-static {v6, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lm5/h$b;->g:[I

    invoke-static {v7, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lm5/h$b;->h:[I

    invoke-static {v8, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, -0x1

    move v0, v9

    :goto_0
    if-lt v0, v2, :cond_0

    iget-object v3, p0, Lm5/h$b;->e:[I

    add-int/lit8 v4, v0, 0x1

    aput v4, v3, v0

    iget-object v3, p0, Lm5/h$b;->f:[I

    aput v1, v3, v0

    iget-object v3, p0, Lm5/h$b;->g:[I

    aput v1, v3, v0

    iget-object v3, p0, Lm5/h$b;->h:[I

    aput v1, v3, v0

    iget-object v3, p0, Lm5/h$b;->c:[I

    const/4 v4, -0x2

    aput v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/h$b;->e:[I

    aput v1, v0, v9

    iput v2, p0, Lm5/h$b;->i:I

    :cond_1
    iget v0, p0, Lm5/h$b;->i:I

    iget-object v2, p0, Lm5/h$b;->e:[I

    aget v3, v2, v0

    iput v3, p0, Lm5/h$b;->i:I

    aput v1, v2, v0

    iget-object v2, p0, Lm5/h$b;->b:[Lm5/w1;

    iget-object v3, p1, Lm5/h;->b:Lm5/w1;

    aput-object v3, v2, v0

    iget-object v2, p0, Lm5/h$b;->c:[I

    iget p1, p1, Lm5/h;->c:I

    aput p1, v2, v0

    iget p1, p0, Lm5/h$b;->j:I

    iget-object v2, p0, Lm5/h$b;->g:[I

    iget-object v3, p0, Lm5/h$b;->h:[I

    invoke-static {p1, v1, v2, v3, v0}, Lm5/h$b;->b(II[I[II)I

    move-result p1

    iput p1, p0, Lm5/h$b;->j:I

    return v0
.end method

.method public final c(II)I
    .locals 3

    iget-object v0, p0, Lm5/h$b;->d:[Lm5/h;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm5/h;->h0()V

    iget-object v0, p0, Lm5/h$b;->d:[Lm5/h;

    aput-object v1, v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm5/h$b;->b:[Lm5/w1;

    aput-object v1, v0, p2

    iget-object v0, p0, Lm5/h$b;->c:[I

    const/4 v1, -0x2

    aput v1, v0, p2

    iget v0, p0, Lm5/h$b;->j:I

    iget-object v1, p0, Lm5/h$b;->g:[I

    iget-object v2, p0, Lm5/h$b;->h:[I

    invoke-static {v0, p2, v1, v2}, Lm5/h$b;->d(II[I[I)I

    move-result v0

    iput v0, p0, Lm5/h$b;->j:I

    :goto_0
    iget-object v0, p0, Lm5/h$b;->e:[I

    iget-object v1, p0, Lm5/h$b;->f:[I

    invoke-static {p1, p2, v0, v1}, Lm5/h$b;->d(II[I[I)I

    move-result p1

    iget-object v0, p0, Lm5/h$b;->e:[I

    iget v1, p0, Lm5/h$b;->i:I

    aput v1, v0, p2

    iput p2, p0, Lm5/h$b;->i:I

    return p1
.end method
