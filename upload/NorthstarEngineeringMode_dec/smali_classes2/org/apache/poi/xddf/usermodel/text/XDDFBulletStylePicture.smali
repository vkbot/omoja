.class public Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;


# instance fields
.field private style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;

    return-void
.end method


# virtual methods
.method public getPicture()Lorg/apache/poi/xddf/usermodel/XDDFPicture;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/XDDFPicture;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/XDDFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;)V

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;

    return-object p0
.end method

.method public setPicture(Lorg/apache/poi/xddf/usermodel/XDDFPicture;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStylePicture;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/XDDFPicture;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBlipBullet;->setBlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;)V

    :cond_0
    return-void
.end method
