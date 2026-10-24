.class public Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyle;


# instance fields
.field private style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    return-void
.end method


# virtual methods
.method public getCharacter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->getChar()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    return-object p0
.end method

.method public setCharacter(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFBulletStyleCharacter;->style:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    return-void
.end method
