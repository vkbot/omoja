.class public Lorg/apache/poi/sl/draw/geom/AdjustPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/AdjustPointIf;


# instance fields
.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


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
    instance-of v1, p1, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->x:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->y:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->y:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->x:Ljava/lang/String;

    return-object p0
.end method

.method public getY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->y:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->x:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->y:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSetX()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->x:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetY()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->y:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->x:Ljava/lang/String;

    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->y:Ljava/lang/String;

    return-void
.end method
