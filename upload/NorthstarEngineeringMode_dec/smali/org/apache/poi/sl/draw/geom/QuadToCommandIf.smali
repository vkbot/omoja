.class public interface abstract Lorg/apache/poi/sl/draw/geom/QuadToCommandIf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 11

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/geom/QuadToCommandIf;->getPt1()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v3

    invoke-interface {v0}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v5

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/geom/QuadToCommandIf;->getPt2()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v7

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v9

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Ljava/awt/geom/Path2D$Double;->quadTo(DDDD)V

    return-void
.end method

.method public abstract getPt1()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
.end method

.method public abstract getPt2()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
.end method

.method public abstract setPt1(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
.end method

.method public abstract setPt2(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
.end method
