.class public Lorg/apache/poi/xddf/usermodel/Angles;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OOXML_DEGREE:I = 0xea60


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final attributeToDegrees(I)D
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static final degreesToAttribute(D)I
    .locals 2

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method
