.class public Lorg/apache/poi/sl/draw/geom/ArcToCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/ArcToCommandIf;


# instance fields
.field private hr:Ljava/lang/String;

.field private stAng:Ljava/lang/String;

.field private swAng:Ljava/lang/String;

.field private wr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertOoxml2AwtAngle(DDD)D
    .locals 6
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    div-double/2addr p4, p2

    neg-double p0, p0

    const-wide p2, 0x4076800000000000L    # 360.0

    rem-double v0, p0, p2

    sub-double/2addr p0, v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double v2, v0, v2

    double-to-int v2, v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_3

    const/4 v3, -0x2

    const-wide v4, 0x4066800000000000L    # 180.0

    if-eq v2, v3, :cond_2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-double/2addr p0, p2

    sub-double/2addr v0, p2

    goto :goto_0

    :cond_1
    add-double/2addr p0, v4

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_2
    sub-double/2addr p0, v4

    add-double/2addr v0, v4

    goto :goto_0

    :cond_3
    sub-double/2addr p0, p2

    add-double/2addr v0, p2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p2

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    add-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/sl/draw/geom/ArcToCommand;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/sl/draw/geom/ArcToCommand;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->wr:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->wr:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->hr:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->hr:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->stAng:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->stAng:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->swAng:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->swAng:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getHR()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->hr:Ljava/lang/String;

    return-object p0
.end method

.method public getStAng()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->stAng:Ljava/lang/String;

    return-object p0
.end method

.method public getSwAng()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->swAng:Ljava/lang/String;

    return-object p0
.end method

.method public getWR()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->wr:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->wr:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->hr:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->stAng:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->swAng:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setHR(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->hr:Ljava/lang/String;

    return-void
.end method

.method public setStAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->stAng:Ljava/lang/String;

    return-void
.end method

.method public setSwAng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->swAng:Ljava/lang/String;

    return-void
.end method

.method public setWR(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->wr:Ljava/lang/String;

    return-void
.end method
