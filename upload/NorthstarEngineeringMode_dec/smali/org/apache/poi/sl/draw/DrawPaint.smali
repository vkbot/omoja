.class public Lorg/apache/poi/sl/draw/DrawPaint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:La5/d;

.field private static final TRANSPARENT:Ljava/awt/Color;


# instance fields
.field protected shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:La5/d;

    new-instance v0, Ljava/awt/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Ljava/awt/Color;-><init>(FFFF)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    return-void
.end method

.method public static HSL2RGB(DDDD)Ljava/awt/Color;
    .locals 16

    move-wide/from16 v0, p6

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    move-wide/from16 v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide/from16 v8, p4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    cmpg-double v10, v0, v6

    if-ltz v10, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v0, v10

    if-gtz v12, :cond_1

    const-wide v12, 0x4076800000000000L    # 360.0

    rem-double v14, p0, v12

    div-double/2addr v14, v12

    div-double/2addr v4, v2

    div-double/2addr v8, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v8, v2

    if-gez v2, :cond_0

    add-double/2addr v4, v10

    mul-double/2addr v4, v8

    goto :goto_0

    :cond_0
    add-double v2, v8, v4

    mul-double/2addr v4, v8

    sub-double v4, v2, v4

    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v2

    sub-double v2, v8, v4

    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v12, v14, v8

    move-wide/from16 p0, v2

    move-wide/from16 p2, v4

    move-wide/from16 p4, v12

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->HUE2RGB(DDD)D

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide/from16 p4, v14

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->HUE2RGB(DDD)D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    sub-double v8, v14, v8

    move-wide/from16 p4, v8

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->HUE2RGB(DDD)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    new-instance v4, Ljava/awt/Color;

    double-to-float v5, v6

    double-to-float v6, v8

    double-to-float v2, v2

    double-to-float v0, v0

    invoke-direct {v4, v5, v6, v2, v0}, Ljava/awt/Color;-><init>(FFFF)V

    return-object v4

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Color parameter outside of expected range - Alpha: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static HUE2RGB(DDD)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_0

    add-double/2addr p4, v1

    :cond_0
    cmpl-double v0, p4, v1

    if-lez v0, :cond_1

    sub-double/2addr p4, v1

    :cond_1
    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    mul-double v5, p4, v3

    cmpg-double v0, v5, v1

    if-gez v0, :cond_2

    sub-double/2addr p2, p0

    mul-double/2addr p2, v3

    mul-double/2addr p2, p4

    add-double/2addr p2, p0

    return-wide p2

    :cond_2
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, p4, v5

    cmpg-double v0, v7, v1

    if-gez v0, :cond_3

    return-wide p2

    :cond_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p4

    cmpg-double v0, v0, v5

    if-gez v0, :cond_4

    sub-double/2addr p2, p0

    mul-double/2addr p2, v3

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double/2addr v0, p4

    mul-double/2addr v0, p2

    add-double/2addr v0, p0

    return-wide v0

    :cond_4
    return-wide p0
.end method

.method public static RGB2HSL(Ljava/awt/Color;)[D
    .locals 19

    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/awt/Color;->getRGBColorComponents([F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-double v5, v5

    const/4 v7, 0x2

    aget v0, v0, v7

    float-to-double v8, v0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    cmpl-double v0, v12, v10

    const-wide/16 v14, 0x0

    if-nez v0, :cond_1

    :cond_0
    move-wide v5, v14

    goto :goto_0

    :cond_1
    cmpl-double v16, v12, v2

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    if-nez v16, :cond_2

    sub-double/2addr v5, v8

    mul-double v5, v5, v17

    sub-double v2, v12, v10

    div-double/2addr v5, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v5, v2

    rem-double/2addr v5, v2

    goto :goto_0

    :cond_2
    cmpl-double v16, v12, v5

    if-nez v16, :cond_3

    sub-double/2addr v8, v2

    mul-double v8, v8, v17

    sub-double v2, v12, v10

    div-double/2addr v8, v2

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    add-double v5, v8, v2

    goto :goto_0

    :cond_3
    cmpl-double v8, v12, v8

    if-nez v8, :cond_0

    sub-double/2addr v2, v5

    mul-double v2, v2, v17

    sub-double v5, v12, v10

    div-double/2addr v2, v5

    const-wide/high16 v5, 0x406e000000000000L    # 240.0

    add-double/2addr v5, v2

    :goto_0
    add-double v2, v12, v10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v16, v2, v8

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v16, v14

    if-gtz v0, :cond_5

    sub-double/2addr v12, v10

    div-double v14, v12, v2

    goto :goto_1

    :cond_5
    sub-double v2, v12, v10

    sub-double/2addr v8, v12

    sub-double/2addr v8, v10

    div-double v14, v2, v8

    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [D

    aput-wide v5, v0, v1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v1

    aput-wide v14, v0, v4

    mul-double v16, v16, v1

    aput-wide v16, v0, v7

    return-object v0
.end method

.method public static RGB2SCRGB(Ljava/awt/Color;)[D
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/awt/Color;->getColorComponents([F)[F

    move-result-object p0

    const/4 v0, 0x3

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p0, v2

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    goto :goto_1

    :cond_0
    float-to-double v4, v3

    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    float-to-double v3, v3

    const-wide v5, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v3, v5

    aput-wide v3, v1, v2

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_2

    float-to-double v3, v3

    const-wide v5, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v3, v5

    const-wide v5, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v3, v5

    const-wide v5, 0x4003333333333333L    # 2.4

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aput-wide v3, v1, v2

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static varargs SCRGB2RGB([D)Ljava/awt/Color;
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-wide v4, p0, v3

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    aput-wide v6, v1, v3

    goto :goto_1

    :cond_0
    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_1

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v4, v6

    aput-wide v4, v1, v3

    goto :goto_1

    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_2

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v4, v6

    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v4, v6

    aput-wide v4, v1, v3

    goto :goto_1

    :cond_2
    aput-wide v6, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/awt/Color;

    aget-wide v2, v1, v2

    double-to-float v0, v2

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    double-to-float v2, v2

    const/4 v3, 0x2

    aget-wide v3, v1, v3

    double-to-float v1, v3

    invoke-direct {p0, v0, v2, v1}, Ljava/awt/Color;-><init>(FFF)V

    return-object p0
.end method

.method public static synthetic a(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->lambda$safeFractions$3(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public static applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;
    .locals 11

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Ljava/awt/Color;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Ljava/awt/Color;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->getAlpha(Ljava/awt/Color;Lorg/apache/poi/sl/usermodel/ColorStyle;)D

    move-result-wide v7

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->RGB2SCRGB(Ljava/awt/Color;)[D

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyShade([DLorg/apache/poi/sl/usermodel/ColorStyle;)V

    invoke-static {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyTint([DLorg/apache/poi/sl/usermodel/ColorStyle;)V

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->SCRGB2RGB([D)Ljava/awt/Color;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->RGB2HSL(Ljava/awt/Color;)[D

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueMod()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getHueOff()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyHslModOff([DIII)V

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatMod()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getSatOff()I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyHslModOff([DIII)V

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumMod()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getLumOff()I

    move-result p0

    const/4 v2, 0x2

    invoke-static {v0, v2, v1, p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyHslModOff([DIII)V

    aget-wide v5, v0, v3

    aget-wide v3, v0, v4

    aget-wide v9, v0, v2

    move-wide v1, v5

    move-wide v5, v9

    invoke-static/range {v1 .. v8}, Lorg/apache/poi/sl/draw/DrawPaint;->HSL2RGB(DDDD)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-object p0
.end method

.method private static applyHslModOff([DIII)V
    .locals 7

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    aget-wide v1, p0, p1

    int-to-double v3, p2

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v3, v5

    mul-double/2addr v3, v1

    aput-wide v3, p0, p1

    :cond_0
    if-eq p3, v0, :cond_1

    aget-wide v0, p0, p1

    int-to-double p2, p3

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v2

    add-double/2addr p2, v0

    aput-wide p2, p0, p1

    :cond_1
    return-void
.end method

.method private static applyShade([DLorg/apache/poi/sl/usermodel/ColorStyle;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getShade()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    aget-wide v2, p0, p1

    mul-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static applyTint([DLorg/apache/poi/sl/usermodel/ColorStyle;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getTint()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    aget-wide v2, p0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    mul-double/2addr v2, v0

    sub-double/2addr v4, v2

    aput-wide v4, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic b(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;)Ljava/awt/Paint;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/sl/draw/DrawPaint;->lambda$createLinearGradientPaint$1(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([F[ILjava/lang/Float;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->lambda$toArray$4([F[ILjava/lang/Float;)V

    return-void
.end method

.method private static colorizePattern(Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 16

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getDuoTone()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v1

    const/16 v3, 0x8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    shl-int v7, v4, v6

    int-to-double v8, v7

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int v1, v4, v1

    int-to-double v3, v1

    div-double v3, v8, v3

    invoke-static {v0, v7}, Lorg/apache/poi/sl/draw/DrawPaint;->linearBlendedColors(Ljava/util/List;I)[I

    move-result-object v8

    new-instance v0, Ljava/awt/image/IndexColorModel;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    const/16 v7, 0xd

    invoke-direct {v1, v5, v6, v7, v0}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    new-array v6, v7, [I

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    if-ge v2, v5, :cond_1

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, v0

    move v10, v2

    move v11, v7

    move-object v14, v6

    invoke-virtual/range {v8 .. v14}, Ljava/awt/image/WritableRaster;->getSamples(IIIII[I)[I

    invoke-static {v6, v3, v4}, Lorg/apache/poi/sl/draw/DrawPaint;->scaleShades([ID)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v15

    move-object v12, v6

    move v6, v8

    move v13, v7

    move v7, v2

    move v8, v13

    move-object v11, v12

    invoke-virtual/range {v5 .. v11}, Ljava/awt/image/WritableRaster;->setSamples(IIIII[I)V

    add-int/lit8 v2, v2, 0x1

    move-object v6, v12

    move v7, v13

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;-><init>(Ljava/awt/Color;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;-><init>(Lorg/apache/poi/sl/usermodel/ColorStyle;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static synthetic d(I)[Ljava/awt/Color;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->lambda$linearBlendedColors$0(I)[Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;Ljava/awt/geom/AffineTransform;[F[Ljava/awt/Color;)Ljava/awt/Paint;
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/sl/draw/DrawPaint;->lambda$createRadialGradientPaint$2(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;Ljava/awt/geom/AffineTransform;[F[Ljava/awt/Color;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static fillPaintWorkaround(Ljava/awt/Graphics2D;Ljava/awt/Shape;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "IBM JDK failed with TexturePaintContext AIOOBE - try adding the following to the VM parameter:\n-Xjit:exclude={sun/java2d/pipe/AlphaPaintPipe.renderPathTile(Ljava/lang/Object;[BIIIIII)V} and search for \'JIT Problem Determination for IBM SDK using -Xjit\' (http://www-01.ibm.com/support/docview.wss?uid=swg21294023) for how to add/determine further excludes"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static getAlpha(Ljava/awt/Color;Lorg/apache/poi/sl/usermodel/ColorStyle;)D
    .locals 4

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getAlpha()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    int-to-double p0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr p0, v2

    mul-double/2addr v0, p0

    :cond_0
    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getCenterVal(DDDD)D
    .locals 4

    sub-double v0, p2, p0

    mul-double v2, v0, p4

    add-double/2addr v2, p0

    add-double/2addr p4, p6

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p4, p0

    mul-double/2addr v0, p6

    if-gtz p0, :cond_0

    sub-double/2addr p2, v0

    goto :goto_0

    :cond_0
    add-double/2addr p2, v0

    :goto_0
    sub-double/2addr p2, v2

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr p2, p0

    add-double/2addr p2, v2

    return-wide p2
.end method

.method private static getScale(DDDD)D
    .locals 4

    sub-double v0, p2, p0

    mul-double v2, v0, p4

    add-double/2addr v2, p0

    add-double/2addr p4, p6

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p4, p4, p0

    mul-double/2addr p6, v0

    if-gtz p4, :cond_0

    sub-double/2addr p2, p6

    goto :goto_0

    :cond_0
    add-double/2addr p2, p6

    :goto_0
    const-wide/16 p4, 0x0

    cmpl-double p4, v0, p4

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    sub-double/2addr p2, v2

    div-double p0, p2, v0

    :goto_1
    return-wide p0
.end method

.method private static synthetic lambda$createLinearGradientPaint$1(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;)Ljava/awt/Paint;
    .locals 1

    new-instance v0, Ljava/awt/LinearGradientPaint;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/awt/LinearGradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;)V

    return-object v0
.end method

.method private static synthetic lambda$createRadialGradientPaint$2(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;Ljava/awt/geom/AffineTransform;[F[Ljava/awt/Color;)Ljava/awt/Paint;
    .locals 10

    new-instance v9, Ljava/awt/RadialGradientPaint;

    sget-object v6, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    sget-object v7, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Ljava/awt/RadialGradientPaint;-><init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V

    return-object v9
.end method

.method private static synthetic lambda$linearBlendedColors$0(I)[Ljava/awt/Color;
    .locals 0

    new-array p0, p0, [Ljava/awt/Color;

    return-object p0
.end method

.method private static synthetic lambda$safeFractions$3(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$toArray$4([F[ILjava/lang/Float;)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v2, v1, 0x1

    aput v2, p1, v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p0, v1

    return-void
.end method

.method private static linearBlendedColors(Ljava/util/List;I)[I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/usermodel/ColorStyle;",
            ">;I)[I"
        }
    .end annotation

    move/from16 v7, p1

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/sl/draw/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/sl/draw/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Ljava/awt/Color;

    const/4 v0, 0x2

    new-array v13, v0, [F

    fill-array-data v13, :array_0

    new-instance v1, Ljava/awt/image/BufferedImage;

    const/4 v2, 0x1

    invoke-direct {v1, v7, v2, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    new-instance v3, Ljava/awt/LinearGradientPaint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v7

    const/4 v12, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Ljava/awt/LinearGradientPaint;-><init>(FFFF[F[Ljava/awt/Color;)V

    invoke-virtual {v0, v3}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v7, v2}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move/from16 v3, p1

    move/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private safeFractions(Ljava/util/function/BiFunction;Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;)Ljava/awt/Paint;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "[F[",
            "Ljava/awt/Color;",
            "Ljava/awt/Paint;",
            ">;",
            "Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;",
            ")",
            "Ljava/awt/Paint;"
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientColors()[Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/sl/draw/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientFractions()[F

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-nez v8, :cond_0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    :cond_0
    const-wide v8, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    double-to-float v4, v6

    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->toArray(Ljava/util/Collection;)[F

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p2

    new-array v0, v2, [Ljava/awt/Color;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Paint;

    return-object p0
.end method

.method private static scaleShades([ID)V
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    int-to-double v1, v1

    mul-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    double-to-int v1, v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [F

    new-instance v2, Lorg/apache/poi/sl/draw/j;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/sl/draw/j;-><init>([F[I)V

    invoke-interface {p0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v1
.end method


# virtual methods
.method public createLinearGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 8

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientAngle()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->isRotatedWithShape()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v2

    sub-double/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-static {p2, v2}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-object p0

    :cond_1
    neg-double v0, v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->convertOoxml2AwtAngle(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v4

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->getRotateInstance(DDD)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    new-instance v5, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v6

    div-double/2addr v1, v3

    sub-double/2addr v6, v1

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v1

    invoke-direct {v5, v6, v7, v1, v2}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object v2

    new-instance v3, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getMaxX()D

    move-result-wide v4

    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-virtual {v0, v3, v1}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/awt/geom/Point2D;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientFractions()[F

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/poi/sl/draw/g;

    invoke-direct {v0, v2, p2}, Lorg/apache/poi/sl/draw/g;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->safeFractions(Ljava/util/function/BiFunction;Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;)Ljava/awt/Paint;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public createPathGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 0

    new-instance p2, Lorg/apache/poi/sl/draw/k;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->safeFractions(Ljava/util/function/BiFunction;Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public createRadialGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-object v0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getFillToInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/poi/sl/usermodel/Insets2D;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    :cond_1
    new-instance v3, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getCenterX()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getCenterY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    new-instance v4, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getMinX()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getMaxX()D

    move-result-wide v7

    iget-wide v9, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v11, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    invoke-static/range {v5 .. v12}, Lorg/apache/poi/sl/draw/DrawPaint;->getCenterVal(DDDD)D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getMinY()D

    move-result-wide v7

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getMaxY()D

    move-result-wide v9

    iget-wide v11, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iget-wide v13, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    invoke-static/range {v7 .. v14}, Lorg/apache/poi/sl/draw/DrawPaint;->getCenterVal(DDDD)D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-float v5, v5

    new-instance v6, Ljava/awt/geom/AffineTransform;

    invoke-direct {v6}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v7

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getMinX()D

    move-result-wide v11

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getMaxX()D

    move-result-wide v13

    iget-wide v7, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v9, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    move-wide v15, v7

    move-wide/from16 v17, v9

    invoke-static/range {v11 .. v18}, Lorg/apache/poi/sl/draw/DrawPaint;->getScale(DDDD)D

    move-result-wide v7

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getMinY()D

    move-result-wide v9

    invoke-virtual {v1}, Ljava/awt/geom/Rectangle2D;->getMaxY()D

    move-result-wide v11

    iget-wide v13, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iget-wide v1, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    move-wide v15, v1

    invoke-static/range {v9 .. v16}, Lorg/apache/poi/sl/draw/DrawPaint;->getScale(DDDD)D

    move-result-wide v1

    invoke-virtual {v6, v7, v8, v1, v2}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {v4}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v6, v1, v2, v7, v8}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    new-instance v1, Lorg/apache/poi/sl/draw/m;

    invoke-direct {v1, v3, v5, v4, v6}, Lorg/apache/poi/sl/draw/m;-><init>(Ljava/awt/geom/Point2D;FLjava/awt/geom/Point2D;Ljava/awt/geom/AffineTransform;)V

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->safeFractions(Ljava/util/function/BiFunction;Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;)Ljava/awt/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 2

    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$GradientPaint$GradientType:[I

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;->getGradientType()Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createPathGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "gradient fill of type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createRadialGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/DrawPaint;->createLinearGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    if-ne p3, v0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p2, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/poi/sl/draw/DrawPaint;->getSolidPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of p3, p2, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;

    if-eqz p3, :cond_2

    .line 6
    check-cast p2, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    instance-of p3, p2, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    if-eqz p3, :cond_3

    .line 8
    check-cast p2, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/sl/draw/DrawPaint;->getTexturePaint(Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-object p0
.end method

.method public getSolidPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Ljava/awt/Paint;
    .locals 0

    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/sl/draw/DrawPaint$1;

    invoke-direct {p2, p0, p1, p3}, Lorg/apache/poi/sl/draw/DrawPaint$1;-><init>(Lorg/apache/poi/sl/draw/DrawPaint;Lorg/apache/poi/sl/usermodel/ColorStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    invoke-static {p2}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getTexturePaint(Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;Ljava/awt/Graphics2D;)Ljava/awt/Paint;
    .locals 25

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {v0, v1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v4

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/apache/poi/sl/draw/DrawPaint;->shape:Lorg/apache/poi/sl/usermodel/PlaceableShape;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getImageData()Ljava/io/InputStream;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v13, :cond_2

    :try_start_1
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_1

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    :cond_2
    :try_start_3
    sget-object v3, Lorg/apache/poi/sl/draw/Drawable;->CACHE_IMAGE_SOURCE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v0, v3}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    invoke-interface {v4, v3}, Lorg/apache/poi/sl/draw/ImageRenderer;->setCacheInput(Z)V

    invoke-interface {v4, v13, v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getAlpha()I

    move-result v3

    if-ltz v3, :cond_4

    const v7, 0x186a0

    if-ge v3, v7, :cond_4

    int-to-float v3, v3

    const v7, 0x47c35000    # 100000.0f

    div-float/2addr v3, v7

    float-to-double v7, v3

    invoke-interface {v4, v7, v8}, Lorg/apache/poi/sl/draw/ImageRenderer;->setAlpha(D)V

    :cond_4
    invoke-interface {v4}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object v3

    const-string v7, "image/x-wmf"

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v3, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v7

    invoke-virtual {v2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v1

    invoke-direct {v3, v7, v8, v1, v2}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    :cond_5
    invoke-interface {v4, v3}, Lorg/apache/poi/sl/draw/ImageRenderer;->getImage(Ljava/awt/geom/Dimension2D;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->h()La5/b;

    move-result-object v0

    const-string v1, "Can\'t load image data"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :cond_6
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;->getFlipMode()Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;

    move-result-object v2

    if-eqz v2, :cond_d

    sget-object v3, Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$FlipMode;

    if-eq v2, v3, :cond_d

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    sget-object v10, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$FlipMode:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v10, v11

    const/4 v12, 0x3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v7, 0x2

    if-eq v11, v6, :cond_9

    if-eq v11, v7, :cond_8

    if-eq v11, v12, :cond_7

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    :goto_2
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_7
    move-wide/from16 v21, v14

    move-wide/from16 v23, v21

    goto :goto_3

    :cond_8
    move-wide/from16 v23, v14

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_9
    move-wide/from16 v21, v14

    goto :goto_2

    :goto_3
    new-instance v8, Ljava/awt/image/BufferedImage;

    int-to-double v14, v3

    mul-double v14, v14, v21

    double-to-int v11, v14

    int-to-double v14, v9

    mul-double v14, v14, v23

    double-to-int v14, v14

    invoke-direct {v8, v11, v14, v7}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v8}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v1, v5, v5, v14}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v10, v2

    if-eq v2, v6, :cond_c

    if-eq v2, v7, :cond_b

    if-eq v2, v12, :cond_a

    goto :goto_4

    :cond_a
    mul-int/lit8 v2, v3, 0x2

    const/16 v17, 0x0

    neg-int v5, v3

    const/16 v20, 0x0

    move-object v14, v11

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v18, v5

    move/from16 v19, v9

    invoke-virtual/range {v14 .. v20}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    const/16 v16, 0x0

    mul-int/lit8 v6, v9, 0x2

    neg-int v7, v9

    const/16 v20, 0x0

    move-object v14, v11

    move-object v15, v1

    move/from16 v17, v6

    move/from16 v18, v3

    move/from16 v19, v7

    invoke-virtual/range {v14 .. v20}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    const/16 v20, 0x0

    move-object v14, v11

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v6

    move/from16 v18, v5

    move/from16 v19, v7

    invoke-virtual/range {v14 .. v20}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    goto :goto_4

    :cond_b
    const/16 v16, 0x0

    mul-int/lit8 v17, v9, 0x2

    neg-int v2, v9

    const/16 v20, 0x0

    move-object v14, v11

    move-object v15, v1

    move/from16 v18, v3

    move/from16 v19, v2

    invoke-virtual/range {v14 .. v20}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    goto :goto_4

    :cond_c
    mul-int/lit8 v16, v3, 0x2

    const/16 v17, 0x0

    neg-int v2, v3

    const/16 v20, 0x0

    move-object v14, v11

    move-object v15, v1

    move/from16 v18, v2

    move/from16 v19, v9

    invoke-virtual/range {v14 .. v20}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    :goto_4
    invoke-virtual {v11}, Ljava/awt/Graphics2D;->dispose()V

    move-object/from16 v2, p1

    move-object v1, v8

    move-wide/from16 v8, v21

    move-wide/from16 v10, v23

    goto :goto_5

    :cond_d
    move-object/from16 v2, p1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :goto_5
    invoke-static {v2, v1}, Lorg/apache/poi/sl/draw/DrawPaint;->colorizePattern(Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v5

    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/awt/Shape;

    new-instance v0, Lorg/apache/poi/sl/draw/DrawTexturePaint;

    instance-of v12, v4, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    move-object v3, v0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v12}, Lorg/apache/poi/sl/draw/DrawTexturePaint;-><init>(Lorg/apache/poi/sl/draw/ImageRenderer;Ljava/awt/image/BufferedImage;Ljava/awt/Shape;Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;DDZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :goto_6
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_e

    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_7
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_8
    sget-object v1, Lorg/apache/poi/sl/draw/DrawPaint;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->h()La5/b;

    move-result-object v1

    invoke-interface {v1, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "Can\'t load image data - using transparent color"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-object v0

    :cond_f
    :goto_9
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint;->TRANSPARENT:Ljava/awt/Color;

    return-object v0
.end method
