.class public final Lorg/apache/poi/ooxml/util/DocumentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/ooxml/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ooxml/util/DocumentHelper;->documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xmlns:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p0, v0, p1, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljavax/xml/stream/events/Namespace;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/ooxml/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createDocument()Lorg/w3c/dom/Document;
    .locals 1

    sget-object v0, Lorg/apache/poi/ooxml/util/DocumentHelper;->documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/ooxml/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/poi/ooxml/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method
