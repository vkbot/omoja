.class public final Lorg/tukaani/xz/simple/X86;
.super Ljava/lang/Object;
.source "X86.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field private static final MASK_TO_ALLOWED_STATUS:[Z

.field private static final MASK_TO_BIT_NUMBER:[I


# instance fields
.field private final isEncoder:Z

.field private pos:I

.field private prevMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [Z

    .line 14
    fill-array-data v1, :array_0

    sput-object v1, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_1

    sput-object v0, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 29
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    add-int/lit8 p2, p2, 0x5

    .line 30
    iput p2, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    return-void
.end method

.method private static test86MSByte(B)Z
    .locals 1

    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public code([BII)I
    .locals 11

    .line 34
    sget-object v0, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    add-int/lit8 v1, p2, -0x1

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x5

    move v2, p2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, p3, :cond_8

    .line 39
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xfe

    const/16 v6, 0xe8

    if-eq v5, v6, :cond_0

    goto/16 :goto_6

    :cond_0
    sub-int v1, v2, v1

    and-int/lit8 v5, v1, -0x4

    if-eqz v5, :cond_1

    .line 44
    iput v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    goto :goto_1

    .line 46
    :cond_1
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v3, v1

    and-int/lit8 v1, v1, 0x7

    iput v1, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-eqz v1, :cond_3

    .line 48
    sget-object v3, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x4

    aget v1, v0, v1

    sub-int/2addr v3, v1

    aget-byte v1, p1, v3

    invoke-static {v1}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    :cond_2
    iget v1, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/2addr v1, v4

    or-int/2addr v1, v4

    iput v1, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    goto/16 :goto_5

    :cond_3
    :goto_1
    add-int/lit8 v1, v2, 0x4

    .line 59
    aget-byte v3, p1, v1

    invoke-static {v3}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v2, 0x1

    .line 60
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x2

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v5, v8

    .line 66
    :goto_2
    iget-boolean v8, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    if-eqz v8, :cond_4

    .line 67
    iget v8, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v8, v2

    sub-int/2addr v8, p2

    add-int/2addr v5, v8

    goto :goto_3

    .line 69
    :cond_4
    iget v8, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v8, v2

    sub-int/2addr v8, p2

    sub-int/2addr v5, v8

    .line 71
    :goto_3
    iget v8, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-nez v8, :cond_5

    goto :goto_4

    .line 74
    :cond_5
    aget v8, v0, v8

    mul-int/lit8 v8, v8, 0x8

    rsub-int/lit8 v9, v8, 0x18

    ushr-int v9, v5, v9

    int-to-byte v9, v9

    .line 75
    invoke-static {v9}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v9

    if-nez v9, :cond_6

    :goto_4
    int-to-byte v8, v5

    .line 81
    aput-byte v8, p1, v3

    ushr-int/lit8 v3, v5, 0x8

    int-to-byte v3, v3

    .line 82
    aput-byte v3, p1, v6

    ushr-int/lit8 v3, v5, 0x10

    int-to-byte v3, v3

    .line 83
    aput-byte v3, p1, v7

    ushr-int/lit8 v3, v5, 0x18

    and-int/2addr v3, v4

    sub-int/2addr v3, v4

    not-int v3, v3

    int-to-byte v3, v3

    .line 84
    aput-byte v3, p1, v1

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_6

    :cond_6
    rsub-int/lit8 v8, v8, 0x20

    shl-int v8, v4, v8

    sub-int/2addr v8, v4

    xor-int/2addr v5, v8

    goto :goto_2

    .line 87
    :cond_7
    iget v1, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/2addr v1, v4

    or-int/2addr v1, v4

    iput v1, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    :goto_5
    move v1, v2

    :goto_6
    add-int/2addr v2, v4

    goto/16 :goto_0

    :cond_8
    sub-int p1, v2, v1

    and-int/lit8 p3, p1, -0x4

    if-eqz p3, :cond_9

    goto :goto_7

    .line 92
    :cond_9
    iget p3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    sub-int/2addr p1, v4

    shl-int v3, p3, p1

    :goto_7
    iput v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    sub-int/2addr v2, p2

    .line 95
    iget p1, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    return v2
.end method
