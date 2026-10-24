.class public Lorg/apache/poi/xdgf/usermodel/shape/ShapeDataAcceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isDeleted()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasText()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getTextAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isShape1D()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMaster()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMaster()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->hasMasterShape()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getMasterShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->isTopmost()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v0
.end method
