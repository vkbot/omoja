.class public interface abstract Lorg/apache/poi/sl/draw/geom/CurveToCommandIf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 16

    move-object/from16 v0, p2

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/draw/geom/CurveToCommandIf;->getPt1()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v4

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v6

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/draw/geom/CurveToCommandIf;->getPt2()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v8

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v10

    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/sl/draw/geom/CurveToCommandIf;->getPt3()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v12

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v15}, Ljava/awt/geom/Path2D$Double;->curveTo(DDDDDD)V

    return-void
.end method

.method public abstract getPt1()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
.end method

.method public abstract getPt2()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
.end method

.method public abstract getPt3()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
.end method

.method public abstract setPt1(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
.end method

.method public abstract setPt2(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
.end method

.method public abstract setPt3(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
.end method
