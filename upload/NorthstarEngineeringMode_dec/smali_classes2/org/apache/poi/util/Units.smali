.class public Lorg/apache/poi/util/Units;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CHARACTER_WIDTH:F = 7.0017f

.field public static final EMU_PER_CENTIMETER:I = 0x57e40

.field public static final EMU_PER_CHARACTER:I = 0x10483

.field public static final EMU_PER_DXA:I = 0x27b

.field public static final EMU_PER_INCH:I = 0xdf3e0

.field public static final EMU_PER_PIXEL:I = 0x2535

.field public static final EMU_PER_POINT:I = 0x319c

.field public static final MASTER_DPI:I = 0x240

.field public static final PIXEL_DPI:I = 0x60

.field public static final POINT_DPI:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charactersToEMU(D)I
    .locals 0

    double-to-int p0, p0

    const p1, 0x10483

    mul-int/2addr p0, p1

    return p0
.end method

.method public static columnWidthToEMU(I)I
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->charactersToEMU(D)I

    move-result p0

    return p0
.end method

.method public static doubleToFixedPoint(D)I
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    rem-double v0, p0, v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    const-wide/high16 v2, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int p1, v0

    shl-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static fixedPointToDouble(I)D
    .locals 6

    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    int-to-double v0, v0

    int-to-double v2, p0

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public static masterToPoints(I)D
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4082000000000000L    # 576.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static pixelToEMU(I)I
    .locals 0

    mul-int/lit16 p0, p0, 0x2535

    return p0
.end method

.method public static pixelToPoints(D)D
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static pixelToPoints(Ljava/awt/geom/Dimension2D;)Ljava/awt/geom/Dimension2D;
    .locals 8

    .line 2
    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4058000000000000L    # 96.0

    div-double/2addr v0, v4

    .line 3
    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v6

    mul-double/2addr v6, v2

    div-double/2addr v6, v4

    .line 4
    new-instance p0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {p0, v0, v1, v6, v7}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    return-object p0
.end method

.method public static pixelToPoints(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 15

    .line 5
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4058000000000000L    # 96.0

    div-double v7, v0, v4

    .line 6
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v9, v0, v4

    .line 7
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v11, v0, v4

    .line 8
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v13, v0, v4

    .line 9
    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v6, p0

    invoke-direct/range {v6 .. v14}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0
.end method

.method public static pointsToMaster(D)I
    .locals 2

    const-wide/high16 v0, 0x4082000000000000L    # 576.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static pointsToPixel(D)I
    .locals 2

    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    div-double/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static pointsToPixel(Ljava/awt/geom/Dimension2D;)Ljava/awt/geom/Dimension2D;
    .locals 8

    .line 2
    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    const-wide/high16 v2, 0x4058000000000000L    # 96.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    div-double/2addr v0, v4

    .line 3
    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v6

    mul-double/2addr v6, v2

    div-double/2addr v6, v4

    .line 4
    new-instance p0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {p0, v0, v1, v6, v7}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    return-object p0
.end method

.method public static pointsToPixel(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 15

    .line 5
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    const-wide/high16 v2, 0x4058000000000000L    # 96.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    div-double v7, v0, v4

    .line 6
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v9, v0, v4

    .line 7
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v11, v0, v4

    .line 8
    invoke-virtual {p0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double v13, v0, v4

    .line 9
    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v6, p0

    invoke-direct/range {v6 .. v14}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0
.end method

.method public static toDXA(J)D
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    const-wide v0, 0x4083d80000000000L    # 635.0

    div-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method public static toEMU(D)I
    .locals 2

    const-wide v0, 0x40c8ce0000000000L    # 12700.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static toPoints(J)D
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    const-wide v0, 0x40c8ce0000000000L    # 12700.0

    div-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method
