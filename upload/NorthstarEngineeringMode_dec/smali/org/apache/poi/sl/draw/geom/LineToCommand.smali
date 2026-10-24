.class public final Lorg/apache/poi/sl/draw/geom/LineToCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/LineToCommandIf;


# instance fields
.field private final pt:Lorg/apache/poi/sl/draw/geom/AdjustPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/LineToCommand;->pt:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/LineToCommand;->pt:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    iget-object p1, p1, Lorg/apache/poi/sl/draw/geom/LineToCommand;->pt:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPt()Lorg/apache/poi/sl/draw/geom/AdjustPoint;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/LineToCommand;->pt:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    return-object p0
.end method

.method public bridge synthetic getPt()Lorg/apache/poi/sl/draw/geom/AdjustPointIf;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/geom/LineToCommand;->getPt()Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/LineToCommand;->pt:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/LineToCommand;->pt:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setX(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/LineToCommand;->pt:Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-interface {p1}, Lorg/apache/poi/sl/draw/geom/AdjustPointIf;->getY()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setY(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
