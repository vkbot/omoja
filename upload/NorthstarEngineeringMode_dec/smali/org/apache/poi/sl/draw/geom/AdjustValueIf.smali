.class public interface abstract Lorg/apache/poi/sl/draw/geom/AdjustValueIf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/GuideIf;


# virtual methods
.method public evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D
    .locals 0

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/geom/AdjustValueIf;->evaluateAdjustValue(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluateAdjustValue(Lorg/apache/poi/sl/draw/geom/Context;)D
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/geom/GuideIf;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/GuideIf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/geom/GuideIf;->evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/geom/GuideIf;->evaluateGuide(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
