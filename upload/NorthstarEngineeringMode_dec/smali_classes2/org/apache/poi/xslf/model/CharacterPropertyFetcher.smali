.class public final Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field _level:I

.field private final fetcher:Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final run:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextRun;",
            "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->_level:I

    iput-object p2, p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetcher:Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;

    iput-object p1, p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->run:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    return-void
.end method

.method private fetchMasterProp()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->run:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_0
    return-void
.end method

.method private fetchParagraphDefaultRunProp()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->run:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getParagraph()Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    :cond_0
    return-void
.end method

.method private fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetcher:Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;

    .line 2
    new-instance v1, Lx1/d;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lx1/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher$CharPropFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getDefRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    :cond_0
    return-void
.end method

.method private fetchRunProp()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->run:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    return-void
.end method

.method private fetchShapeProp(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    :cond_0
    return-void
.end method

.method private fetchThemeProp(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->_level:I

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getThemeProps(Lorg/apache/poi/xslf/usermodel/XSLFShape;I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 1

    :try_start_0
    iget v0, p0, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->_level:I

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->select(Lorg/apache/poi/xslf/usermodel/XSLFShape;I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet()Z

    move-result p0

    return p0
.end method

.method public fetchProperty(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchRunProp()V

    instance-of v0, v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchParagraphDefaultRunProp()V

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchShapeProp(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchThemeProp(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->fetchMasterProp()V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
