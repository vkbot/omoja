.class public final Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/AdjustHandle;


# instance fields
.field private gdRefX:Ljava/lang/String;

.field private gdRefY:Ljava/lang/String;

.field private maxX:Ljava/lang/String;

.field private maxY:Ljava/lang/String;

.field private minX:Ljava/lang/String;

.field private minY:Ljava/lang/String;

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
    instance-of v1, p1, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefX:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefX:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minX:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minX:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxX:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxX:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefY:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefY:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minY:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minY:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxY:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxY:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getGdRefX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefX:Ljava/lang/String;

    return-object p0
.end method

.method public getGdRefY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefY:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxX:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxY:Ljava/lang/String;

    return-object p0
.end method

.method public getMinX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minX:Ljava/lang/String;

    return-object p0
.end method

.method public getMinY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minY:Ljava/lang/String;

    return-object p0
.end method

.method public getPos()Lorg/apache/poi/sl/draw/geom/AdjustPoint;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefX:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minX:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxX:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefY:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minY:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxY:Ljava/lang/String;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSetGdRefX()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefX:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetGdRefY()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefY:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMaxX()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxX:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMaxY()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxY:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMinX()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minX:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetMinY()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minY:Ljava/lang/String;

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

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setGdRefX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefX:Ljava/lang/String;

    return-void
.end method

.method public setGdRefY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->gdRefY:Ljava/lang/String;

    return-void
.end method

.method public setMaxX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxX:Ljava/lang/String;

    return-void
.end method

.method public setMaxY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->maxY:Ljava/lang/String;

    return-void
.end method

.method public setMinX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minX:Ljava/lang/String;

    return-void
.end method

.method public setMinY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->minY:Ljava/lang/String;

    return-void
.end method

.method public setPos(Lorg/apache/poi/sl/draw/geom/AdjustPoint;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    return-void
.end method
