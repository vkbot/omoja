.class public final Lcom/google/protobuf/z0;
.super Lcom/google/protobuf/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final e:Lcom/google/protobuf/z0;


# instance fields
.field public c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/protobuf/z0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/google/protobuf/z0;-><init>(I[Ljava/lang/Object;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/protobuf/z0;->e:Lcom/google/protobuf/z0;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p3}, Lcom/google/protobuf/b;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 5
    .line 6
    iput p1, p0, Lcom/google/protobuf/z0;->d:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b;->a()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_3e

    .line 5
    .line 6
    iget v0, p0, Lcom/google/protobuf/z0;->d:I

    .line 7
    .line 8
    if-gt p1, v0, :cond_3e

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_15

    .line 14
    .line 15
    add-int/lit8 v2, p1, 0x1

    .line 16
    .line 17
    sub-int/2addr v0, p1

    .line 18
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    goto :goto_2d

    .line 22
    :cond_15
    mul-int/lit8 v0, v0, 0x3

    .line 23
    .line 24
    div-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 35
    .line 36
    add-int/lit8 v2, p1, 0x1

    .line 37
    .line 38
    iget v3, p0, Lcom/google/protobuf/z0;->d:I

    .line 39
    .line 40
    sub-int/2addr v3, p1

    .line 41
    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 45
    .line 46
    :goto_2d
    iget-object v0, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 47
    .line 48
    aput-object p2, v0, p1

    .line 49
    .line 50
    iget p1, p0, Lcom/google/protobuf/z0;->d:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iput p1, p0, Lcom/google/protobuf/z0;->d:I

    .line 55
    .line 56
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 57
    .line 58
    add-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3e
    const-string p2, "Index:"

    .line 64
    .line 65
    const-string v0, ", Size:"

    .line 66
    .line 67
    invoke-static {p1, p2, v0}, Lai/onnxruntime/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget p2, p0, Lcom/google/protobuf/z0;->d:I

    .line 72
    .line 73
    invoke-static {p1, p2}, Lkotlin/text/b;->a(Ljava/lang/StringBuilder;I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 6

    .line 77
    invoke-virtual {p0}, Lcom/google/protobuf/b;->a()V

    .line 78
    iget v0, p0, Lcom/google/protobuf/z0;->d:I

    iget-object v1, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_16

    mul-int/lit8 v0, v0, 0x3

    .line 79
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 80
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 82
    :cond_16
    iget-object v0, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/z0;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/z0;->d:I

    aput-object p1, v0, v1

    .line 83
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v3
.end method

.method public final c(I)Lcom/google/protobuf/a0;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/z0;->d:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_13

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/google/protobuf/z0;

    .line 12
    .line 13
    iget v1, p0, Lcom/google/protobuf/z0;->d:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, p1, v2}, Lcom/google/protobuf/z0;-><init>(I[Ljava/lang/Object;Z)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_13
    invoke-static {}, Ll9/i;->a()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final d(I)V
    .registers 4

    .line 1
    if-ltz p1, :cond_7

    .line 2
    .line 3
    iget v0, p0, Lcom/google/protobuf/z0;->d:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    const-string v0, "Index:"

    .line 9
    .line 10
    const-string v1, ", Size:"

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lai/onnxruntime/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget v0, p0, Lcom/google/protobuf/z0;->d:I

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/text/b;->a(Ljava/lang/StringBuilder;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/z0;->d(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/z0;->d(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object v1, v0, p1

    .line 10
    .line 11
    iget v2, p0, Lcom/google/protobuf/z0;->d:I

    .line 12
    .line 13
    add-int/lit8 v3, v2, -0x1

    .line 14
    .line 15
    if-ge p1, v3, :cond_18

    .line 16
    .line 17
    add-int/lit8 v3, p1, 0x1

    .line 18
    .line 19
    sub-int/2addr v2, p1

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    :cond_18
    iget p1, p0, Lcom/google/protobuf/z0;->d:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    iput p1, p0, Lcom/google/protobuf/z0;->d:I

    .line 30
    .line 31
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 36
    .line 37
    return-object v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/b;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/z0;->d(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/z0;->c:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object v1, v0, p1

    .line 10
    .line 11
    aput-object p2, v0, p1

    .line 12
    .line 13
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 18
    .line 19
    return-object v1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/z0;->d:I

    .line 2
    .line 3
    return v0
.end method
