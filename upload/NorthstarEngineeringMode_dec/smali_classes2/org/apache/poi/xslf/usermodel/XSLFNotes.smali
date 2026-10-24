.class public final Lorg/apache/poi/xslf/usermodel/XSLFNotes;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Notes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/Notes<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    .line 2
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 5
    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;

    .line 6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;->getNotes()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 9
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

.method private static prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    .locals 2

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;->addNewCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->addNewSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    move-result-object p0

    return-object p0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    .line 3
    instance-of v1, v0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 0

    const-string p0, "notes"

    return-object p0
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    return-object p0
.end method

.method public mapSchemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->_notes:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;->getClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->mapSchemeColor(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeRelations(Lorg/apache/poi/xslf/usermodel/XSLFSlide;Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    invoke-super {p0, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    return-void
.end method
