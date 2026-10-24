.class public final Lorg/apache/poi/sl/draw/geom/ConnectionSite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/ConnectionSiteIf;


# instance fields
.field private ang:Ljava/lang/String;

.field private final pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/sl/draw/geom/ConnectionSite;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/sl/draw/geom/ConnectionSite;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->ang:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->ang:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAng()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->ang:Ljava/lang/String;

    return-object p0
.end method

.method public getPos()Lorg/apache/poi/sl/draw/geom/AdjustPoint;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    return-object p0
.end method

.method public bridge synthetic getPos()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->getPos()Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->ang:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSetAng()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->ang:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->ang:Ljava/lang/String;

    return-void
.end method

.method public setPos(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setX(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->pos:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setY(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
