.class public Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;
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
.field private _slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;-><init>()V

    .line 2
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

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
    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;

    .line 6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;->getNotesMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
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

.method private static prototype()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
    .locals 3

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    const-string v1, "notesMaster.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v2, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesMasterDocument;->getNotesMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance v1, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v2, "Can\'t initialize NotesMaster"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v1, "Missing resource \'notesMaster.xml\'"

    invoke-direct {v0, v1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation

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

    const-string p0, "notesMaster"

    return-object p0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    return-object p0
.end method

.method public isSupportTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mapSchemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMaster;->getClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

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
