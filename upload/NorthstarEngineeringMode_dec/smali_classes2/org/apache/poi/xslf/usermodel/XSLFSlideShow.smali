.class public Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;
.super Lorg/apache/poi/ooxml/POIXMLDocument;
.source "SourceFile"


# instance fields
.field private final embeddedParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation
.end field

.field private final presentationDoc:Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lorg/apache/poi/ooxml/POIXMLDocument;->openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->rebase(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 5
    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    .line 6
    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->presentationDoc:Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 8
    :cond_1
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->embeddedParts:Ljava/util/List;

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlideReferences()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 10
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 11
    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    .line 12
    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 13
    sget-object v5, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v6

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->embeddedParts:Ljava/util/List;

    .line 14
    invoke-virtual {v2, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    .line 15
    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->embeddedParts:Ljava/util/List;

    .line 16
    invoke-virtual {v2, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_6

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v0
.end method


# virtual methods
.method public getAllEmbeddedParts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->embeddedParts:Ljava/util/List;

    return-object p0
.end method

.method public getNodesPart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlidePart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    :try_start_0
    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expecting 0 or 1 notes for a slide, but found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getNotes(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getNodesPart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    sget-object p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {p1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/NotesDocument;->getNotes()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesSlide;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method public getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->presentationDoc:Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object p0

    return-object p0
.end method

.method public getSlide(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlidePart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    sget-object p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {p1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldDocument;->getSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public getSlideComments(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlidePart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    :try_start_0
    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->COMMENTS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {p1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CmLstDocument;->getCmLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_6
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expecting 0 or 1 comments for a slide, but found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getSlideMaster(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getSlideMasterPart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    sget-object p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v0, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {p1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/SldMasterDocument;->getSldMaster()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public getSlideMasterPart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;->getId2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Li5/z0;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getSlideMasterReferences()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;

    move-result-object p0

    return-object p0
.end method

.method public getSlidePart(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Li5/z0;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getSlideReferences()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetSldIdLst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->setSldIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideShow;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object p0

    return-object p0
.end method
