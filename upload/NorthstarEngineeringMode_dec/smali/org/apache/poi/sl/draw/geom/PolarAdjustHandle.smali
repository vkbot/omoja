.class public final Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/AdjustHandle;


# instance fields
.field private gdRefAng:Ljava/lang/String;

.field private gdRefR:Ljava/lang/String;

.field private maxAng:Ljava/lang/String;

.field private maxR:Ljava/lang/String;

.field private minAng:Ljava/lang/String;

.field private minR:Ljava/lang/String;

.field private pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefR:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefR:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minR:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minR:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxR:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxR:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefAng:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefAng:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minAng:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minAng:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxAng:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxAng:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getGdRefAng()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefAng:Ljava/lang/String;

    return-object p0
.end method

.method public getGdRefR()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefR:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxAng()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxAng:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxR()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxR:Ljava/lang/String;

    return-object p0
.end method

.method public getMinAng()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minAng:Ljava/lang/String;

    return-object p0
.end method

.method public getMinR()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minR:Ljava/lang/String;

    return-object p0
.end method

.method public getPos()Lorg/apache/poi/sl/draw/geom/AdjustPoint;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefR:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minR:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxR:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefAng:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minAng:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxAng:Ljava/lang/String;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSetGdRefAng()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefAng:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetGdRefR()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefR:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMaxAng()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxAng:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMaxR()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxR:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMinAng()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minAng:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMinR()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minR:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetPos()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setGdRefAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefAng:Ljava/lang/String;

    return-void
.end method

.method public setGdRefR(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->gdRefR:Ljava/lang/String;

    return-void
.end method

.method public setMaxAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxAng:Ljava/lang/String;

    return-void
.end method

.method public setMaxR(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->maxR:Ljava/lang/String;

    return-void
.end method

.method public setMinAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minAng:Ljava/lang/String;

    return-void
.end method

.method public setMinR(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->minR:Ljava/lang/String;

    return-void
.end method

.method public setPos(Lorg/apache/poi/sl/draw/geom/AdjustPoint;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    return-void
.end method
