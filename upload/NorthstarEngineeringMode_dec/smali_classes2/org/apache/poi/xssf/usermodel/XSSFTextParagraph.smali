.class public Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
        ">;"
    }
.end annotation


# instance fields
.field private final _p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

.field private final _runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
            ">;"
        }
    .end annotation
.end field

.field private final _shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    const-string p2, "*"

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v3, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    const-string v1, "\n"

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getT()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-virtual {p1, p0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)Z

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method public addLineBreak()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    const-string v2, "\n"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;

    invoke-direct {v2, v1, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public addNewTextRun()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    const-string v2, "en-US"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public addTabStop(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->addNewTab()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object p0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setPos(Ljava/lang/Object;)V

    return-void
.end method

.method public getBulletAutoNumberScheme()Lorg/apache/poi/xssf/usermodel/ListAutoNumber;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$18;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$18;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ARABIC_PLAIN:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    :goto_0
    return-object p0
.end method

.method public getBulletAutoNumberStart()I
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$17;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$17;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getBulletCharacter()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$4;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$4;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBulletFont()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$3;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$3;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBulletFontColor()Ljava/awt/Color;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Color;

    return-object p0
.end method

.method public getBulletFontSize()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$6;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$6;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDefaultTabSize()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$10;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$10;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getIndent()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$7;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$7;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getLeftMargin()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$8;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$8;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getLevel()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLvl()I

    move-result p0

    return p0
.end method

.method public getLineSpacing()D
    .locals 6

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$12;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$12;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->getLnSpcReduction()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    :cond_1
    return-wide v0
.end method

.method public getParentShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-object p0
.end method

.method public getRightMargin()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$9;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$9;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getSpaceAfter()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$14;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$14;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getSpaceBefore()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$13;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$13;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTabStop(I)D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;II)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextAlign()Lorg/apache/poi/xssf/usermodel/TextAlign;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$1;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$1;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextAlign;->LEFT:Lorg/apache/poi/xssf/usermodel/TextAlign;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/TextAlign;

    :goto_0
    return-object p0
.end method

.method public getTextFontAlign()Lorg/apache/poi/xssf/usermodel/TextFontAlign;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$2;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$2;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/xssf/usermodel/TextFontAlign;->BASELINE:Lorg/apache/poi/xssf/usermodel/TextFontAlign;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/TextFontAlign;

    :goto_0
    return-object p0
.end method

.method public getTextRuns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    return-object p0
.end method

.method public isBullet()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$15;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$15;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isBulletAutoNumber()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$16;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$16;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setBullet(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 26
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v0

    .line 28
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    .line 29
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    const-string v0, "Arial"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 30
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    .line 31
    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    .line 32
    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    :cond_5
    return-void
.end method

.method public setBullet(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_6

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 17
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v1

    .line 19
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    .line 20
    invoke-interface {v1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setStartAt(I)V

    .line 21
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    const-string p2, "Arial"

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 22
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    .line 23
    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    .line 24
    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    :cond_5
    return-void

    .line 25
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Start Number must be greater or equal that 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBullet(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBullet()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_b

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuNone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    .line 4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuAutoNum()V

    .line 5
    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    .line 6
    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    .line 7
    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClr()V

    .line 8
    :cond_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClrTx()V

    .line 9
    :cond_6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    .line 10
    :cond_7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFontTx()V

    .line 11
    :cond_8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    .line 12
    :cond_9
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    .line 13
    :cond_a
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzTx()V

    goto :goto_1

    .line 14
    :cond_b
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    .line 15
    :cond_c
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    const-string v0, "Arial"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 16
    :cond_d
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p0

    const-string p1, "\u2022"

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    :cond_e
    :goto_1
    return-void
.end method

.method public setBulletCharacter(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p0

    :goto_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    return-void
.end method

.method public setBulletFont(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p0

    :goto_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public setBulletFontColor(Ljava/awt/Color;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p0

    :goto_2
    const/4 v0, 0x3

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    return-void
.end method

.method public setBulletFontSize(D)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v0

    :goto_1
    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->setVal(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v0

    :goto_2
    neg-double p1, p1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->setVal(I)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    :cond_4
    :goto_3
    return-void
.end method

.method public setIndent(D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetIndent()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetIndent()V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setIndent(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLeftMargin(D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarL()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarL()V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarL(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLvl(I)V

    return-void
.end method

.method public setLineSpacing(D)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v1

    neg-double p1, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    :goto_1
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLnSpc(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    return-void
.end method

.method public setRightMargin(D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarR()V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarR(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSpaceAfter(D)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v1

    neg-double p1, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    :goto_1
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcAft(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    return-void
.end method

.method public setSpaceBefore(D)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v1

    neg-double p1, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    :goto_1
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcBef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    return-void
.end method

.method public setTextAlign(Lorg/apache/poi/xssf/usermodel/TextAlign;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetAlgn()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTextFontAlign(Lorg/apache/poi/xssf/usermodel/TextFontAlign;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetFontAlgn()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setFontAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
