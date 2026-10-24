.class public Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final parent:Lorg/apache/poi/xddf/usermodel/text/TextContainer;

.field private final title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->parent:Lorg/apache/poi/xddf/usermodel/text/TextContainer;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    return-void
.end method

.method private getOrAddTextProperties(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 0

    .line 5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    if-nez p0, :cond_0

    .line 6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    .line 7
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    .line 8
    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    .line 13
    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefRPr()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    goto :goto_2

    .line 15
    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public getBody()Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetTx()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->addNewTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetStrRef()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->unsetStrRef()V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->isSetRich()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->addNewRich()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    :cond_2
    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->parent:Lorg/apache/poi/xddf/usermodel/text/TextContainer;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTx;->getRich()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    return-object v1
.end method

.method public getOrAddTextProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetTxPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->addNewTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->getOrAddTextProperties(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    return-object v1
.end method

.method public setOverlay(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetOverlay()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->unsetOverlay()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->getOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->addNewOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;->setVal(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetTx()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->unsetTx()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->isSetLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->title:Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;->addNewLayout()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLayout;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/chart/XDDFTitle;->getBody()Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->setText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
