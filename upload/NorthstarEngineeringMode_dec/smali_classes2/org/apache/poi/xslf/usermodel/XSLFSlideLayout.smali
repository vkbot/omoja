.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/MasterSheet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/MasterSheet<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private final _layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

.field private _master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldLayoutDocument;->getSldLayout()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method


# virtual methods
.method public copyLayout(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextType()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;->addNewSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShape;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object p0

    return-object p0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object p0

    return-object p0
.end method

.method public getFollowMasterGraphics()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getShowMasterSp()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object p0

    return-object p0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    move-result-object p0

    return-object p0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 0

    const-string p0, "sldLayout"

    return-object p0
.end method

.method public getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-nez v0, :cond_1

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

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_master:Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SlideMaster was not found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lorg/apache/poi/xslf/usermodel/SlideLayout;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/SlideLayout;->values()[Lorg/apache/poi/xslf/usermodel/SlideLayout;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    return-object p0
.end method

.method public mapSchemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->_layout:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayout;->getClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->mapSchemeColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
