.class public interface abstract Lorg/apache/poi/sl/draw/geom/ArcToCommandIf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 28

    move-object/from16 v0, p2

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/draw/geom/ArcToCommandIf;->getWR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v8

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/draw/geom/ArcToCommandIf;->getHR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v10

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/draw/geom/ArcToCommandIf;->getStAng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    div-double v12, v1, v3

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/draw/geom/ArcToCommandIf;->getSwAng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v3

    move-wide v2, v12

    move-wide v4, v8

    move-wide v6, v10

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->convertOoxml2AwtAngle(DDD)D

    move-result-wide v23

    add-double v2, v12, v0

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->convertOoxml2AwtAngle(DDD)D

    move-result-wide v0

    sub-double v25, v0, v23

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/Path2D$Double;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v8

    sub-double/2addr v3, v5

    sub-double v15, v3, v8

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    sub-double/2addr v2, v0

    sub-double v17, v2, v10

    new-instance v0, Ljava/awt/geom/Arc2D$Double;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v19, v8, v1

    mul-double v21, v10, v1

    const/16 v27, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v27}, Ljava/awt/geom/Arc2D$Double;-><init>(DDDDDDI)V

    const/4 v1, 0x1

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Ljava/awt/geom/Path2D$Double;->append(Ljava/awt/Shape;Z)V

    return-void
.end method

.method public abstract getHR()Ljava/lang/String;
.end method

.method public abstract getStAng()Ljava/lang/String;
.end method

.method public abstract getSwAng()Ljava/lang/String;
.end method

.method public abstract getWR()Ljava/lang/String;
.end method

.method public abstract setHR(Ljava/lang/String;)V
.end method

.method public abstract setStAng(Ljava/lang/String;)V
.end method

.method public abstract setSwAng(Ljava/lang/String;)V
.end method

.method public abstract setWR(Ljava/lang/String;)V
.end method
