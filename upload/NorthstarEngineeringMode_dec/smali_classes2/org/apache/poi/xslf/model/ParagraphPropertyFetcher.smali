.class public final Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;
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


# static fields
.field static final DML_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field private static final LST_STYLE:[Ljavax/xml/namespace/QName;

.field static final PML_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/presentationml/2006/main"

.field private static final TX_BODY:[Ljavax/xml/namespace/QName;


# instance fields
.field _level:I

.field private final fetcher:Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final para:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/xml/namespace/QName;

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "http://schemas.openxmlformats.org/presentationml/2006/main"

    const-string v4, "txBody"

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->TX_BODY:[Ljavax/xml/namespace/QName;

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string v4, "lstStyle"

    invoke-direct {v1, v2, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->LST_STYLE:[Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            "Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->para:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->_level:I

    iput-object p2, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetcher:Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;

    return-void
.end method

.method private fetchMasterProp()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->para:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getDefaultMasterStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_0
    return-void
.end method

.method private fetchParagraphProp()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->para:Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    return-void
.end method

.method private fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetcher:Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;

    new-instance v1, Lo1/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lo1/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    :cond_0
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

    iget v0, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->_level:I

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->getThemeProps(Lorg/apache/poi/xslf/usermodel/XSLFShape;I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V

    :cond_0
    return-void
.end method

.method public static getThemeProps(Lorg/apache/poi/xslf/usermodel/XSLFShape;I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->isPlaceholder()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getCTPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getDefaultTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl9PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl8PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl7PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl6PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl5PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl4PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl3PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl2PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;->getLvl1PPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/b;->e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static select(Lorg/apache/poi/xslf/usermodel/XSLFShape;I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/xml/namespace/QName;

    new-instance v2, Ljavax/xml/namespace/QName;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lvl"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "pPr"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "http://schemas.openxmlformats.org/drawingml/2006/main"

    invoke-direct {v2, v3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    new-instance v2, Landroidx/constraintlayout/core/state/b;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    const/4 v3, 0x3

    new-array v3, v3, [[Ljavax/xml/namespace/QName;

    sget-object v4, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->TX_BODY:[Ljavax/xml/namespace/QName;

    aput-object v4, v3, p1

    sget-object p1, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->LST_STYLE:[Ljavax/xml/namespace/QName;

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const-class p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p0, p1, v2, v3}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-object p0
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 1

    :try_start_0
    iget v0, p0, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->_level:I

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->select(Lorg/apache/poi/xslf/usermodel/XSLFShape;I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetchProp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
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

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetchParagraphProp()V

    instance-of v0, v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetchShapeProp(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetchThemeProp(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;->fetchMasterProp()V

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
