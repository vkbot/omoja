.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleMatrixDelegate"
.end annotation


# instance fields
.field final props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    return-void
.end method


# virtual methods
.method public addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMatrixStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    return-object p0
.end method

.method public getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isLineStyle()Z
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;->props:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/p0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lnRef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
.end method

.method public isSetBlipFill()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetGradFill()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetGrpFill()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetMatrixStyle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSetNoFill()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetPattFill()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSetSolidFill()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
    .locals 0

    return-void
.end method

.method public setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
    .locals 0

    return-void
.end method

.method public setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
    .locals 0

    return-void
.end method

.method public setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
    .locals 0

    return-void
.end method

.method public setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
    .locals 0

    return-void
.end method

.method public setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
    .locals 0

    return-void
.end method

.method public unsetBlipFill()V
    .locals 0

    return-void
.end method

.method public unsetGradFill()V
    .locals 0

    return-void
.end method

.method public unsetGrpFill()V
    .locals 0

    return-void
.end method

.method public unsetNoFill()V
    .locals 0

    return-void
.end method

.method public unsetPattFill()V
    .locals 0

    return-void
.end method

.method public unsetSolidFill()V
    .locals 0

    return-void
.end method
