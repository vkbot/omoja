.class public interface abstract Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ShapeContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public bridge synthetic createAutoShape()Lorg/apache/poi/sl/usermodel/AutoShape;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;->createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createAutoShape()Lorg/apache/poi/xslf/usermodel/XSLFAutoShape;
.end method

.method public bridge synthetic createConnector()Lorg/apache/poi/sl/usermodel/ConnectorShape;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;->createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createConnector()Lorg/apache/poi/xslf/usermodel/XSLFConnectorShape;
.end method

.method public bridge synthetic createFreeform()Lorg/apache/poi/sl/usermodel/FreeformShape;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;->createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createFreeform()Lorg/apache/poi/xslf/usermodel/XSLFFreeformShape;
.end method

.method public bridge synthetic createGroup()Lorg/apache/poi/sl/usermodel/GroupShape;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;->createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createGroup()Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;->createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    move-result-object p0

    return-object p0
.end method

.method public abstract createPicture(Lorg/apache/poi/sl/usermodel/PictureData;)Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;
.end method

.method public bridge synthetic createTextBox()Lorg/apache/poi/sl/usermodel/TextBox;
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShapeContainer;->createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;

    move-result-object p0

    return-object p0
.end method

.method public abstract createTextBox()Lorg/apache/poi/xslf/usermodel/XSLFTextBox;
.end method
