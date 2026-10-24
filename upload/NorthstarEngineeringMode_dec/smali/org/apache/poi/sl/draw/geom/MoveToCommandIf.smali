.class public interface abstract Lorg/apache/poi/sl/draw/geom/MoveToCommandIf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PathCommand;


# virtual methods
.method public execute(Ljava/awt/geom/Path2D$Double;Lorg/apache/poi/sl/draw/geom/Context;)V
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/geom/MoveToCommandIf;->getPt()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v0

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Path2D$Double;->moveTo(DD)V

    return-void
.end method

.method public abstract getPt()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
.end method

.method public abstract setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
.end method
