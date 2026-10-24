.class public Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;
    }
.end annotation


# static fields
.field protected static final KEYWORD_CATEGORY:Ljava/lang/String; = "category"

.field protected static final KEYWORD_CONTENT_STATUS:Ljava/lang/String; = "contentStatus"

.field protected static final KEYWORD_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field protected static final KEYWORD_CREATED:Ljava/lang/String; = "created"

.field protected static final KEYWORD_CREATOR:Ljava/lang/String; = "creator"

.field protected static final KEYWORD_DESCRIPTION:Ljava/lang/String; = "description"

.field protected static final KEYWORD_IDENTIFIER:Ljava/lang/String; = "identifier"

.field protected static final KEYWORD_KEYWORDS:Ljava/lang/String; = "keywords"

.field protected static final KEYWORD_LANGUAGE:Ljava/lang/String; = "language"

.field protected static final KEYWORD_LAST_MODIFIED_BY:Ljava/lang/String; = "lastModifiedBy"

.field protected static final KEYWORD_LAST_PRINTED:Ljava/lang/String; = "lastPrinted"

.field protected static final KEYWORD_MODIFIED:Ljava/lang/String; = "modified"

.field protected static final KEYWORD_REVISION:Ljava/lang/String; = "revision"

.field protected static final KEYWORD_SUBJECT:Ljava/lang/String; = "subject"

.field protected static final KEYWORD_TITLE:Ljava/lang/String; = "title"

.field protected static final KEYWORD_VERSION:Ljava/lang/String; = "version"

.field private static final namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

.field private static final namespaceDC:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

.field private static final namespaceDcTerms:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

.field private static final namespaceXSI:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;


# instance fields
.field propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

.field xmlDoc:Lorg/w3c/dom/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    const-string v1, "dc"

    const-string v2, "http://purl.org/dc/elements/1.1/"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    const-string v1, "cp"

    const-string v2, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    const-string v1, "dcterms"

    const-string v2, "http://purl.org/dc/terms/"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    const-string/jumbo v1, "xsi"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceXSI:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCategory()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCategoryProperty()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "category"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addContentStatus()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentStatusProperty()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "contentStatus"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addContentType()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getContentTypeProperty()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "contentType"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addCreated()V
    .locals 6

    const-string v1, "created"

    sget-object v2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedProperty()Ljava/util/Optional;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatedPropertyString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dcterms:W3CDTF"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addCreator()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getCreatorProperty()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "creator"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addDescription()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getDescriptionProperty()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "description"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addIdentifier()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getIdentifierProperty()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "identifier"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addKeywords()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getKeywordsProperty()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "keywords"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addLanguage()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLanguageProperty()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "language"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addLastModifiedBy()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastModifiedByProperty()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "lastModifiedBy"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addLastPrinted()V
    .locals 4

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedProperty()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getLastPrintedPropertyString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastPrinted"

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;Ljava/lang/String;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addModified()V
    .locals 6

    const-string v1, "modified"

    sget-object v2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedProperty()Ljava/util/Optional;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getModifiedPropertyString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dcterms:W3CDTF"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addRevision()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getRevisionProperty()Ljava/util/Optional;

    move-result-object v1

    const-string/jumbo v2, "revision"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addSubject()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getSubjectProperty()Ljava/util/Optional;

    move-result-object v1

    const-string/jumbo v2, "subject"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addTitle()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getTitleProperty()Ljava/util/Optional;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private addVersion()V
    .locals 3

    sget-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->getVersionProperty()Ljava/util/Optional;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;

    return-void
.end method

.method private getQName(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;)Lorg/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p3, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method private setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;",
            "Ljava/util/Optional<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p3, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    .line 3
    invoke-interface {p3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p3

    .line 4
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    .line 5
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->getQName(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 6
    invoke-interface {p3, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 7
    :cond_1
    invoke-interface {v0, p4}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    return-object v0
.end method

.method private setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;",
            "Ljava/util/Optional<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Element;"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->setElementTextContent(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;Ljava/util/Optional;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceXSI:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    .line 9
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "type"

    invoke-direct {p0, p4, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->getQName(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p3, p0, p5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z
    .locals 2

    instance-of p2, p1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->propsPart:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-static {}, Lorg/apache/poi/ooxml/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceCoreProperties:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "coreProperties"

    invoke-direct {p0, v1, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->getQName(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/apache/poi/ooxml/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDC:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/apache/poi/ooxml/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceDcTerms:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/apache/poi/ooxml/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->namespaceXSI:Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/apache/poi/ooxml/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->xmlDoc:Lorg/w3c/dom/Document;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addCategory()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addContentStatus()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addContentType()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addCreated()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addCreator()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addDescription()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addIdentifier()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addKeywords()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addLanguage()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addLastModifiedBy()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addLastPrinted()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addModified()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addRevision()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addSubject()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addTitle()V

    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;->addVersion()V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\'part\' must be a PackagePropertiesPart instance, but had: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", check logs while reading."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
