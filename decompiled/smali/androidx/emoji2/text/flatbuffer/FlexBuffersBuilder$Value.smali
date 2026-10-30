.class Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final dValue:D

.field iValue:J

.field key:I

.field final minBitWidth:I

.field final type:I


# direct methods
.method public constructor <init>(IIID)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    .line 19
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    .line 20
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    .line 21
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    const-wide/high16 p1, -0x8000000000000000L

    .line 22
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    .line 9
    .line 10
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    .line 11
    .line 12
    const-wide/16 p1, 0x1

    .line 13
    .line 14
    iput-wide p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$100(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)B
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(IIJII)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static blob(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    int-to-long v4, p1

    .line 4
    move v1, p0

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static bool(IZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    :goto_0
    move-wide v4, v1

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :goto_1
    const/16 v2, 0x1a

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move v1, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private elemWidth(II)I
    .locals 6

    .line 43
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    iget-wide v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    move-result p1

    return p1
.end method

.method private static elemWidth(IIJII)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypeInline(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p0, 0x1

    .line 9
    :goto_0
    const/16 p1, 0x20

    .line 10
    .line 11
    if-gt p0, p1, :cond_2

    .line 12
    .line 13
    invoke-static {p4, p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    add-int/2addr p1, p4

    .line 18
    mul-int v0, p5, p0

    .line 19
    .line 20
    add-int/2addr v0, p1

    .line 21
    int-to-long v0, v0

    .line 22
    sub-long/2addr v0, p2

    .line 23
    long-to-int p1, v0

    .line 24
    int-to-long v0, p1

    .line 25
    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-wide/16 v0, 0x1

    .line 30
    .line 31
    shl-long/2addr v0, p1

    .line 32
    int-to-long v2, p0

    .line 33
    cmp-long v0, v0, v2

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return p1

    .line 38
    :cond_1
    mul-int/lit8 p0, p0, 0x2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p0, 0x3

    .line 42
    return p0
.end method

.method public static float32(IF)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v3, 0x2

    .line 4
    float-to-double v4, p1

    .line 5
    const/4 v2, 0x3

    .line 6
    move v1, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static float64(ID)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x3

    .line 5
    move v1, p0

    .line 6
    move-wide v4, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static int16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v3, 0x1

    .line 4
    int-to-long v4, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    move v1, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static int32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v3, 0x2

    .line 4
    int-to-long v4, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    move v1, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static int64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x3

    .line 5
    move v1, p0

    .line 6
    move-wide v4, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static int8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    int-to-long v4, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    move v1, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static packedType(II)B
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    or-int/2addr p0, p1

    .line 4
    int-to-byte p0, p0

    .line 5
    return p0
.end method

.method private static paddingBytes(II)I
    .locals 0

    .line 1
    not-int p0, p0

    .line 2
    add-int/lit8 p0, p0, 0x1

    .line 3
    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    and-int/2addr p0, p1

    .line 7
    return p0
.end method

.method private storedPackedType()B
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    move-result v0

    return v0
.end method

.method private storedPackedType(I)B
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedWidth(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->packedType(II)B

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private storedWidth(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypeInline(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    return v1
.end method

.method public static uInt16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v3, 0x1

    .line 4
    int-to-long v4, p1

    .line 5
    const/4 v2, 0x2

    .line 6
    move v1, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static uInt32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v3, 0x2

    .line 4
    int-to-long v4, p1

    .line 5
    const/4 v2, 0x2

    .line 6
    move v1, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static uInt64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x3

    .line 5
    move v1, p0

    .line 6
    move-wide v4, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static uInt8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    int-to-long v4, p1

    .line 5
    const/4 v2, 0x2

    .line 6
    move v1, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
