.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
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
.field private _layouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;",
            ">;"
        }
    .end annotation
.end field

.field private _slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;->getSldMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;
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

.method private getLayouts()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

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

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object p0

    return-object p0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayout(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayouts()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    return-object p0
.end method

.method public getLayout(Lorg/apache/poi/xslf/usermodel/SlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayouts()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getType()Lorg/apache/poi/xslf/usermodel/SlideLayout;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object p0

    return-object p0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 0

    .line 1
    const/4 p0, 0x0

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

    const-string p0, "sldMaster"

    return-object p0
.end method

.method public getSlideLayouts()[Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayouts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_layouts:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    return-object p0
.end method

.method public getTextProperties(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getTxStyles()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster$1;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->getOtherStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->getBodyStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;->getTitleStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    return-object p0
.end method

.method public isSupportTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mapSchemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->getClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->mapSchemeColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method
