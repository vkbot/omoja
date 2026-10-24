.class public final Lorg/apache/poi/xslf/usermodel/XSLFSlide;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Slide;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/Slide<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

.field private _comments:Lorg/apache/poi/xslf/usermodel/XSLFComments;

.field private _layout:Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

.field private _notes:Lorg/apache/poi/xslf/usermodel/XSLFNotes;

.field private final _slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    .line 2
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-static {p1}, Lorg/apache/poi/ooxml/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 7
    :cond_0
    :goto_0
    sget-object p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {p1, v0, v1}, Lorg/apache/xmlbeans/impl/schema/b;->h(Lorg/w3c/dom/Node;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument;

    .line 8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument;->getSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 10
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0

    .line 11
    :goto_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;
    .locals 6

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->addNewCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->addNewSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewNvGrpSpPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    const-string v4, ""

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->addNewCNvGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGroupDrawingShapeProps;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShapeNonVisual;->addNewNvPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTApplicationNonVisualDrawingProps;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewGrpSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewChOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v2

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(Ljava/lang/Object;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupTransform2D;->addNewChExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v1

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->addNewClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;->addNewMasterClrMapping()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmptyElement;

    return-object v0
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Slide;)Lorg/apache/poi/sl/draw/DrawSlide;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object p0

    return-object p0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object p0

    return-object p0
.end method

.method public getCommentAuthorsPart()Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getComments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFComment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getCommentsPart()Lorg/apache/poi/xslf/usermodel/XSLFComments;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getCommentAuthorsPart()Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    move-result-object p0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFComments;->getCTCommentsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->getCmArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lorg/apache/poi/xslf/usermodel/XSLFComment;

    invoke-direct {v5, v4, p0}, Lorg/apache/poi/xslf/usermodel/XSLFComment;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCommentsPart()Lorg/apache/poi/xslf/usermodel/XSLFComments;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_comments:Lorg/apache/poi/xslf/usermodel/XSLFComments;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFComments;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFComments;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_comments:Lorg/apache/poi/xslf/usermodel/XSLFComments;

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_comments:Lorg/apache/poi/xslf/usermodel/XSLFComments;

    return-object p0
.end method

.method public getFollowMasterBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFollowMasterColourScheme()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFollowMasterGraphics()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getShowMasterSp()Z

    move-result p0

    return p0
.end method

.method public getFollowMasterObjects()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getFollowMasterGraphics()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object p0

    return-object p0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getNotes()Lorg/apache/poi/sl/usermodel/Notes;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object p0

    return-object p0
.end method

.method public getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_notes:Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    .line 3
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_notes:Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_notes:Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 0

    const-string p0, "sld"

    return-object p0
.end method

.method public bridge synthetic getSlideLayout()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object p0

    return-object p0
.end method

.method public getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_layout:Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    .line 3
    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_layout:Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_layout:Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SlideLayout was not found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object p0

    return-object p0
.end method

.method public getSlideName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->isSetName()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Slide"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSlideNumber()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlides()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTextShapeByType(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    return-object p0
.end method

.method public bridge synthetic importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object p0

    return-object p0
.end method

.method public importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 3
    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 6
    :cond_1
    iget-object v0, v0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    .line 7
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgPr()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetBlipFill()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    .line 11
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->unsetBg()V

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    .line 12
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->addNewBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    .line 13
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgPr()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetBlipFill()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    :cond_5
    return-object p0
.end method

.method public isHidden()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->isSetShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getShow()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mapSchemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->mapSchemeColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeChartRelation(Lorg/apache/poi/xslf/usermodel/XSLFChart;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    return-void
.end method

.method public removeLayoutRelation(Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Z)Z

    return-void
.end method

.method public removeNotes(Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->removeRelations(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_notes:Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    return-object v0
.end method

.method public setFollowMasterBackground(Z)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setFollowMasterColourScheme(Z)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setFollowMasterGraphics(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->setShowMasterSp(Z)V

    return-void
.end method

.method public setFollowMasterObjects(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->setFollowMasterGraphics(Z)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->setShow(Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->isSetShow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->unsetShow()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNotes(Lorg/apache/poi/sl/usermodel/Notes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Notes<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    return-void
.end method
