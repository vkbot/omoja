.class public final Lai/onnxruntime/OnnxSparseTensor$BlockSparseTensor;
.super Lai/onnxruntime/OnnxSparseTensor$SparseTensor;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockSparseTensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lai/onnxruntime/OnnxSparseTensor$SparseTensor<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/IntBuffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V
    .registers 11

    .line 1
    invoke-direct/range {p0 .. p8}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;-><init>(Ljava/nio/Buffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V

    .line 2
    .line 3
    .line 4
    invoke-static {p4}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    .line 5
    .line 6
    .line 7
    move-result-wide p5

    .line 8
    cmp-long p5, p5, p7

    .line 9
    .line 10
    const-string p6, "Expected "

    .line 11
    .line 12
    if-nez p5, :cond_5c

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 15
    .line 16
    .line 17
    move-result p5

    .line 18
    int-to-long v0, p5

    .line 19
    cmp-long p5, p7, v0

    .line 20
    .line 21
    if-nez p5, :cond_51

    .line 22
    .line 23
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    .line 24
    .line 25
    .line 26
    move-result-wide p7

    .line 27
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    int-to-long v0, p3

    .line 32
    cmp-long p3, p7, v0

    .line 33
    .line 34
    if-nez p3, :cond_42

    .line 35
    .line 36
    array-length p1, p4

    .line 37
    const/4 p3, 0x3

    .line 38
    if-lt p1, p3, :cond_37

    .line 39
    .line 40
    array-length p1, p2

    .line 41
    const/4 p3, 0x2

    .line 42
    if-lt p1, p3, :cond_2c

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    const-string p1, "Expected [numBlocks, coordinates] or larger, but indices shape was "

    .line 46
    .line 47
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2, p1}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    throw p1

    .line 56
    :cond_37
    const-string p1, "Expected [numBlocks, blockSize, blockSize] or larger, but data shape was "

    .line 57
    .line 58
    invoke-static {p4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p2, p1}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    throw p1

    .line 67
    :cond_42
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    .line 68
    .line 69
    .line 70
    move-result-wide p2

    .line 71
    const-string p4, " elements in the indices buffer, found "

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p6, p2, p3, p4, p1}, Lai/onnxruntime/b;->l(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    throw p1

    .line 82
    :cond_51
    const-string p1, " elements in the data buffer, found "

    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-static {p6, p7, p8, p1, p2}, Lai/onnxruntime/b;->l(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    throw p1

    .line 93
    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    invoke-static {p4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p3, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p4, " entries in the data shape, found "

    .line 108
    .line 109
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method


# virtual methods
.method public getIndicesType()Lai/onnxruntime/OnnxJavaType;
    .registers 2

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSparsityType()Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .registers 2

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->BLOCK_SPARSE:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 2
    .line 3
    return-object v0
.end method
