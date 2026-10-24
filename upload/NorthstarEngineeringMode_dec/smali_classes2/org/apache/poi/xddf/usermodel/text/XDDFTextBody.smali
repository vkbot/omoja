.class public Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

.field private _parent:Lorg/apache/poi/xddf/usermodel/text/TextContainer;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;-><init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xddf/usermodel/text/TextContainer;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_parent:Lorg/apache/poi/xddf/usermodel/text/TextContainer;

    iput-object p2, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;)Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;
    .locals 0

    invoke-direct {p1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->lambda$getParagraphs$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getParagraphs$0(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;)V

    return-object v0
.end method

.method private retrieveProperties(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 0

    const/4 p0, 0x0

    packed-switch p2, :pswitch_data_0

    return-object p0

    :pswitch_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl9PPr()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl9PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :cond_0
    return-object p0

    :pswitch_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl8PPr()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl8PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :cond_1
    return-object p0

    :pswitch_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl7PPr()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl7PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :cond_2
    return-object p0

    :pswitch_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl6PPr()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl6PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :cond_3
    return-object p0

    :pswitch_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl5PPr()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl5PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :cond_4
    return-object p0

    :pswitch_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl4PPr()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl4PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :cond_5
    return-object p0

    :pswitch_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl3PPr()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl3PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :cond_6
    return-object p0

    :pswitch_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl2PPr()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl2PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :cond_7
    return-object p0

    :pswitch_8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl1PPr()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl1PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    :cond_8
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addNewParagraph()Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;)V

    return-object v0
.end method

.method public findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "TR;>;I)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p3, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getDefPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p3}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->retrieveProperties(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_parent:Lorg/apache/poi/xddf/usermodel/text/TextContainer;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/text/TextContainer;->findDefinedParagraphProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;",
            "TR;>;I)",
            "Ljava/util/Optional<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p3, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getDefPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p3}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->retrieveProperties(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetDefRPr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_parent:Lorg/apache/poi/xddf/usermodel/text/TextContainer;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/xddf/usermodel/text/TextContainer;->findDefinedRunProperty(Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;
    .locals 1

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)V

    return-object v0
.end method

.method public getDefaultProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetDefPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getDefPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel1Properties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl1PPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl1PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel2Properties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl2PPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl2PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel3Properties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl3PPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl3PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel4Properties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl4PPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl4PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel5Properties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl5PPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl5PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel6Properties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl6PPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl6PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel7Properties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl7PPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl7PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel8Properties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl8PPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl8PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLevel9Properties()Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl9PPr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl9PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParagraph(I)Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;)V

    return-object v0
.end method

.method public getParagraphs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/xddf/usermodel/text/g;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getParentShape()Lorg/apache/poi/xddf/usermodel/text/TextContainer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_parent:Lorg/apache/poi/xddf/usermodel/text/TextContainer;

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    return-object p0
.end method

.method public initialize()Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getBodyProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->TOP:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setAnchoring(Lorg/apache/poi/xddf/usermodel/text/AnchorType;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->setRightToLeft(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->addNewParagraph()Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->LEFT:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->setTextAlignment(Lorg/apache/poi/xddf/usermodel/text/TextAlignment;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->appendRegularRun(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/XDDFTextRun;

    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->addAfterLastRunProperties()Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setLanguage(Ljava/util/Locale;)V

    const-wide/high16 v1, 0x4026000000000000L    # 11.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/XDDFRunProperties;->setFontSize(Ljava/lang/Double;)V

    return-object p0
.end method

.method public insertNewParagraph(I)Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->insertNewP(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;)V

    return-object v0
.end method

.method public removeParagraph(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->removeP(I)V

    return-void
.end method

.method public setBodyProperties(Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFBodyProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setBodyPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;)V

    :goto_0
    return-void
.end method

.method public setDefaultProperties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetDefPPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetDefPPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setDefPPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel1Properties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl1PPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetLvl1PPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setLvl1PPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel2Properties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl2PPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetLvl2PPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setLvl2PPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel3Properties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl3PPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetLvl3PPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setLvl3PPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel4Properties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl4PPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetLvl4PPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setLvl4PPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel5Properties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl5PPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetLvl5PPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setLvl5PPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel6Properties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl6PPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetLvl6PPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setLvl6PPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel7Properties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl7PPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetLvl7PPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setLvl7PPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel8Properties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl8PPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetLvl8PPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setLvl8PPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel9Properties(Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->isSetLvl9PPr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->unsetLvl9PPr()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->isSetLstStyle()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFParagraphProperties;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->setLvl9PPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->_body:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->removeP(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->getParagraph(I)Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->initialize()Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->setText(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
