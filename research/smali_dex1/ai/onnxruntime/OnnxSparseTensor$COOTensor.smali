.class public final Lai/onnxruntime/OnnxSparseTensor$COOTensor;
.super Lai/onnxruntime/OnnxSparseTensor$SparseTensor;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "COOTensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lai/onnxruntime/OnnxSparseTensor$SparseTensor<",
        "Ljava/nio/LongBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/LongBuffer;[JLjava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;J)V
    .registers 18

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v4, v0, [J

    .line 3
    .line 4
    const/4 v9, 0x0

    .line 5
    aput-wide p6, v4, v9

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v5, p4

    .line 12
    move-object v6, p5

    .line 13
    move-wide/from16 v7, p6

    .line 14
    .line 15
    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;-><init>(Ljava/nio/Buffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V

    .line 16
    .line 17
    .line 18
    array-length p4, p2

    .line 19
    const/4 p5, 0x2

    .line 20
    const/4 v0, 0x0

    .line 21
    if-gt p4, p5, :cond_4e

    .line 22
    .line 23
    array-length p4, p2

    .line 24
    if-eqz p4, :cond_4e

    .line 25
    .line 26
    aget-wide p4, p2, v9

    .line 27
    .line 28
    cmp-long p4, p4, v7

    .line 29
    .line 30
    if-nez p4, :cond_4e

    .line 31
    .line 32
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    .line 33
    .line 34
    .line 35
    move-result-wide p4

    .line 36
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    int-to-long v1, p2

    .line 41
    cmp-long p2, p4, v1

    .line 42
    .line 43
    if-nez p2, :cond_42

    .line 44
    .line 45
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    int-to-long p1, p1

    .line 50
    cmp-long p1, p1, v7

    .line 51
    .line 52
    if-nez p1, :cond_36

    .line 53
    .line 54
    return-void

    .line 55
    :cond_36
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const-string p2, " to equal numNonZero - "

    .line 60
    .line 61
    const-string p3, "Expected data.remaining() - "

    .line 62
    .line 63
    invoke-static {p3, p1, p2, v7, v8}, Lai/onnxruntime/b;->k(Ljava/lang/String;ILjava/lang/Object;J)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_42
    const-string p2, " found "

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const-string p3, "Unexpected number of indices found in buffer, expected "

    .line 74
    .line 75
    invoke-static {p3, p4, p5, p2, p1}, Lai/onnxruntime/b;->l(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_4e
    const-string p1, "Invalid indices shape, expected [numNonZero, dimension] or [numNonZero] found "

    .line 80
    .line 81
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2, p1}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method


# virtual methods
.method public getIndicesType()Lai/onnxruntime/OnnxJavaType;
    .registers 2

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSparsityType()Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .registers 2

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->COO:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 2
    .line 3
    return-object v0
.end method
