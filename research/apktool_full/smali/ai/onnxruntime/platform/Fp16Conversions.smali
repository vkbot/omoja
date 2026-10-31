.class public final Lai/onnxruntime/platform/Fp16Conversions;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lai/onnxruntime/platform/Fp16Conversions;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lai/onnxruntime/platform/Fp16Conversions;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bf16ToFloat(S)F
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x10

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static convertBf16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v2, v1, 0x4

    .line 10
    .line 11
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v1, :cond_0

    .line 29
    .line 30
    add-int v4, v3, v0

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {v4}, Lai/onnxruntime/platform/Fp16Conversions;->bf16ToFloat(S)F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v2
.end method

.method public static convertFloatBufferToBf16Buffer(Ljava/nio/FloatBuffer;)Ljava/nio/ShortBuffer;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v2, v1, 0x2

    .line 10
    .line 11
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v1, :cond_0

    .line 29
    .line 30
    add-int v4, v3, v0

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {v4}, Lai/onnxruntime/platform/Fp16Conversions;->floatToBf16(F)S

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v2, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v2
.end method

.method public static convertFloatBufferToFp16Buffer(Ljava/nio/FloatBuffer;)Ljava/nio/ShortBuffer;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v2, v1, 0x2

    .line 10
    .line 11
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v1, :cond_0

    .line 29
    .line 30
    add-int v4, v3, v0

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {v4}, Lai/onnxruntime/platform/Fp16Conversions;->floatToFp16(F)S

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v2, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v2
.end method

.method public static convertFp16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v2, v1, 0x4

    .line 10
    .line 11
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v1, :cond_0

    .line 29
    .line 30
    add-int v4, v3, v0

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {v4}, Lai/onnxruntime/platform/Fp16Conversions;->fp16ToFloat(S)F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v2
.end method

.method public static floatToBf16(F)S
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    shr-int/lit8 v0, p0, 0x10

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    add-int/lit16 v0, v0, 0x7fff

    .line 10
    .line 11
    add-int/2addr v0, p0

    .line 12
    shr-int/lit8 p0, v0, 0x10

    .line 13
    .line 14
    int-to-short p0, p0

    .line 15
    return p0
.end method

.method public static floatToFp16(F)S
    .locals 0

    .line 1
    invoke-static {p0}, Lai/onnxruntime/platform/Fp16Conversions;->mlasFloatToFp16(F)S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static fp16ToFloat(S)F
    .locals 0

    .line 1
    invoke-static {p0}, Lai/onnxruntime/platform/Fp16Conversions;->mlasFp16ToFloat(S)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static mlasFloatToFp16(F)S
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/high16 v1, -0x80000000

    .line 12
    .line 13
    and-int/2addr v1, p0

    .line 14
    xor-int/2addr p0, v1

    .line 15
    const/high16 v2, 0x47800000    # 65536.0f

    .line 16
    .line 17
    if-lt p0, v2, :cond_1

    .line 18
    .line 19
    if-le p0, v0, :cond_0

    .line 20
    .line 21
    const/16 p0, 0x7e00

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/16 p0, 0x7c00

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/high16 v0, 0x38800000

    .line 28
    .line 29
    if-ge p0, v0, :cond_2

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/high16 v0, 0x3f000000    # 0.5f

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-float/2addr v2, p0

    .line 42
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    sub-int/2addr p0, v0

    .line 47
    :goto_0
    int-to-short p0, p0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    shr-int/lit8 v0, p0, 0xd

    .line 50
    .line 51
    and-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    const v2, 0x37fff001

    .line 54
    .line 55
    .line 56
    sub-int/2addr p0, v2

    .line 57
    add-int/2addr p0, v0

    .line 58
    shr-int/lit8 p0, p0, 0xd

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_1
    shr-int/lit8 v0, v1, 0x10

    .line 62
    .line 63
    int-to-short v0, v0

    .line 64
    or-int/2addr p0, v0

    .line 65
    int-to-short p0, p0

    .line 66
    return p0
.end method

.method public static mlasFp16ToFloat(S)F
    .locals 4

    .line 1
    and-int/lit16 v0, p0, 0x7fff

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0xd

    .line 4
    .line 5
    const/high16 v1, 0xf800000

    .line 6
    .line 7
    and-int v2, v0, v1

    .line 8
    .line 9
    const/high16 v3, 0x38000000

    .line 10
    .line 11
    add-int/2addr v3, v0

    .line 12
    if-ne v2, v1, :cond_0

    .line 13
    .line 14
    const/high16 v1, 0x70000000

    .line 15
    .line 16
    add-int v3, v0, v1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v2, :cond_1

    .line 20
    .line 21
    const/high16 v1, 0x38800000

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sub-float/2addr v0, v1

    .line 33
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :cond_1
    :goto_0
    const v0, 0x8000

    .line 38
    .line 39
    .line 40
    and-int/2addr p0, v0

    .line 41
    shl-int/lit8 p0, p0, 0x10

    .line 42
    .line 43
    or-int/2addr p0, v3

    .line 44
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method
