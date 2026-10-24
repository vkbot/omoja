.class public Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;


# static fields
.field private static final EPS:D = 1.0E-10


# instance fields
.field _master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

.field a:Ljava/lang/Double;

.field b:Ljava/lang/Double;

.field c:Ljava/lang/Double;

.field d:Ljava/lang/Double;

.field deleted:Ljava/lang/Boolean;

.field x:Ljava/lang/Double;

.field y:Ljava/lang/Double;


# direct methods
.method public constructor <init>(La3/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, La3/m;->isSetDel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, La3/m;->getDel()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->deleted:Ljava/lang/Boolean;

    :cond_0
    invoke-interface {p1}, La3/m;->getCellArray()[La3/a;

    move-result-object p0

    array-length p1, p0

    if-gtz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    aget-object p0, p0, p1

    const/4 p0, 0x0

    throw p0
.end method

.method public static computeSweep(DDD)D
    .locals 3

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v0

    rem-double/2addr p0, v0

    add-double/2addr p2, v0

    rem-double/2addr p2, v0

    add-double/2addr p4, v0

    rem-double/2addr p4, v0

    cmpg-double v2, p0, p2

    if-gez v2, :cond_1

    cmpg-double v2, p0, p4

    if-gez v2, :cond_0

    cmpg-double p4, p4, p2

    if-gez p4, :cond_0

    :goto_0
    sub-double/2addr p0, p2

    goto :goto_1

    :cond_0
    sub-double/2addr p0, p2

    add-double/2addr p0, v0

    goto :goto_1

    :cond_1
    cmpg-double v2, p2, p4

    if-gez v2, :cond_2

    cmpg-double p4, p4, p0

    if-gez p4, :cond_2

    goto :goto_0

    :cond_2
    sub-double/2addr p0, p2

    sub-double/2addr v0, p0

    neg-double p0, v0

    :goto_1
    return-wide p0
.end method

.method public static createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V
    .locals 49

    move-wide/from16 v12, p0

    move-wide/from16 v14, p2

    move-wide/from16 v10, p8

    move-object/from16 v8, p12

    invoke-virtual/range {p12 .. p12}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v16

    invoke-virtual {v0}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v18

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->isColinear(DDDDDD)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p12

    invoke-virtual {v0, v12, v13, v14, v15}, Ljava/awt/geom/Path2D$Double;->lineTo(DD)V

    return-void

    :cond_0
    move-wide/from16 v1, p8

    move-object/from16 v0, p12

    neg-double v3, v1

    invoke-static {v3, v4}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v16, v4, v5

    const/4 v6, 0x1

    aput-wide v18, v4, v6

    const/4 v7, 0x2

    aput-wide v12, v4, v7

    const/4 v8, 0x3

    aput-wide v14, v4, v8

    const/4 v9, 0x4

    aput-wide p4, v4, v9

    const/4 v10, 0x5

    aput-wide p6, v4, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object/from16 p0, v3

    move-object/from16 p1, v4

    move/from16 p2, v11

    move-object/from16 p3, v4

    move/from16 p4, v12

    move/from16 p5, v13

    invoke-virtual/range {p0 .. p5}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v11, v4, v5

    aget-wide v13, v4, v6

    aget-wide v6, v4, v7

    aget-wide v15, v4, v8

    aget-wide v8, v4, v9

    aget-wide v17, v4, v10

    mul-double v19, p10, p10

    sub-double v21, v11, v6

    add-double v23, v11, v6

    mul-double v23, v23, v21

    sub-double v25, v15, v17

    mul-double v23, v23, v25

    sub-double v27, v6, v8

    add-double v29, v6, v8

    mul-double v29, v29, v27

    sub-double v31, v13, v15

    mul-double v29, v29, v31

    sub-double v23, v23, v29

    mul-double v29, v19, v31

    mul-double v29, v29, v25

    sub-double v33, v13, v17

    mul-double v33, v33, v29

    add-double v33, v33, v23

    mul-double v25, v25, v21

    mul-double v31, v31, v27

    sub-double v23, v25, v31

    move-wide/from16 p0, v6

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v23, v23, v5

    div-double v33, v33, v23

    mul-double v21, v21, v27

    sub-double v23, v11, v8

    mul-double v23, v23, v21

    div-double v23, v23, v19

    add-double v21, v13, v15

    mul-double v21, v21, v31

    add-double v21, v21, v23

    add-double v23, v15, v17

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    sub-double v31, v31, v25

    mul-double v31, v31, v5

    div-double v21, v21, v31

    sub-double v11, v11, v33

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    sub-double v13, v13, v21

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    mul-double v25, v25, v19

    add-double v25, v25, v23

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    div-double v23, v19, p10

    sub-double v17, v17, v21

    div-double v4, v17, v23

    sub-double v8, v8, v33

    div-double v8, v8, v19

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v29

    div-double v13, v13, v23

    div-double v11, v11, v19

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double v15, v15, v21

    div-double v6, v15, v23

    move-wide/from16 v8, p0

    sub-double v8, v8, v33

    div-double v8, v8, v19

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v27

    move-wide/from16 v25, v4

    invoke-static/range {v25 .. v30}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->computeSweep(DDD)D

    move-result-wide v46

    new-instance v6, Ljava/awt/geom/Arc2D$Double;

    sub-double v36, v33, v19

    sub-double v38, v21, v23

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v40, v19, v7

    mul-double v42, v23, v7

    neg-double v4, v4

    const/16 v48, 0x0

    move-object/from16 v35, v6

    move-wide/from16 v44, v4

    invoke-direct/range {v35 .. v48}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    invoke-virtual {v3, v1, v2}, Ljava/awt/geom/AffineTransform;->setToRotation(D)V

    invoke-virtual {v3, v6}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    return-void
.end method

.method private static isColinear(DDDDDD)Z
    .locals 0

    sub-double p6, p2, p6

    sub-double p8, p0, p8

    mul-double/2addr p8, p6

    sub-double/2addr p2, p10

    sub-double/2addr p0, p4

    mul-double/2addr p0, p2

    sub-double/2addr p8, p0

    invoke-static {p8, p9}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addToPath(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getDel()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getX()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getY()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getA()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getB()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getC()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getD()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object v12, p1

    invoke-static/range {v0 .. v12}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->createEllipticalArc(DDDDDDLjava/awt/geom/Path2D$Double;)V

    return-void
.end method

.method public getA()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->a:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->a:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getB()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->b:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->b:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getC()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->c:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getD()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->d:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getDel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->deleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->getDel()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getX()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->x:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->x:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public getY()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->y:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->y:Ljava/lang/Double;

    :cond_0
    return-object v0
.end method

.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;->_master:Lorg/apache/poi/xdgf/usermodel/section/geometry/EllipticalArcTo;

    return-void
.end method
