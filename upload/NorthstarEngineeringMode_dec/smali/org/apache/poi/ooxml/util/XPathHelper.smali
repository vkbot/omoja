.class public final Lorg/apache/poi/ooxml/util/XPathHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALTERNATE_CONTENT_TAG:Ljavax/xml/namespace/QName;

.field private static final LOG:La5/d;

.field private static final MAC_DML_NS:Ljava/lang/String; = "http://schemas.microsoft.com/office/mac/drawingml/2008/main"

.field private static final MC_NS:Ljava/lang/String; = "http://schemas.openxmlformats.org/markup-compatibility/2006"

.field private static final OSGI_ERROR:Ljava/lang/String; = "Schemas (*.xsb) for <CLASS> can\'t be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes - please either verify if the <XSB>.xsb is on the classpath or alternatively try to use the poi-ooxml-full-x.x.jar"

.field static final xpathFactory:Ljavax/xml/xpath/XPathFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/ooxml/util/XPathHelper;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ooxml/util/XPathHelper;->LOG:La5/d;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://schemas.openxmlformats.org/markup-compatibility/2006"

    const-string v2, "AlternateContent"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ooxml/util/XPathHelper;->ALTERNATE_CONTENT_TAG:Ljavax/xml/namespace/QName;

    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ooxml/util/XPathHelper;->xpathFactory:Ljavax/xml/xpath/XPathFactory;

    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ooxml/util/XPathHelper;->trySetFeature(Ljavax/xml/xpath/XPathFactory;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory()Ljavax/xml/xpath/XPathFactory;
    .locals 1

    sget-object v0, Lorg/apache/poi/ooxml/util/XPathHelper;->xpathFactory:Ljavax/xml/xpath/XPathFactory;

    return-object v0
.end method

.method private static selectProperty(Li5/p0;[[Ljavax/xml/namespace/QName;IZZ)Li5/p0;
    .locals 6

    .line 17
    aget-object v0, p1, p2

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 18
    invoke-interface {p0, v4}, Li5/p0;->Z0(Ljavax/xml/namespace/QName;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_2

    .line 19
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_0

    return-object p0

    .line 20
    :cond_0
    invoke-interface {p0}, Li5/p0;->A1()V

    add-int/lit8 v5, p2, 0x1

    .line 21
    invoke-static {p0, p1, v5, p3, v2}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Li5/p0;[[Ljavax/xml/namespace/QName;IZZ)Li5/p0;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    .line 22
    :cond_1
    invoke-interface {p0}, Li5/p0;->e0()Z

    .line 23
    invoke-interface {p0, v4}, Li5/p0;->B1(Ljavax/xml/namespace/QName;)Z

    move-result v5

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    if-nez p4, :cond_9

    sget-object p2, Lorg/apache/poi/ooxml/util/XPathHelper;->ALTERNATE_CONTENT_TAG:Ljavax/xml/namespace/QName;

    .line 24
    invoke-interface {p0, p2}, Li5/p0;->Z0(Ljavax/xml/namespace/QName;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    .line 25
    :cond_4
    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p2

    .line 26
    instance-of p4, p2, Lw2/a$a;

    if-eqz p4, :cond_5

    .line 27
    check-cast p2, Lw2/a$a;

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_8

    .line 28
    :try_start_0
    sget-object p2, Lw2/a;->K0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-interface {p0}, Li5/j2;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/schema/b;->e(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lw2/a;

    .line 29
    invoke-interface {p0}, Lw2/a;->w()Lw2/a$a;

    move-result-object p2
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_2
    invoke-interface {p2}, Lw2/a$a;->W()I

    move-result p0

    if-gtz p0, :cond_7

    .line 31
    invoke-interface {p2}, Lw2/a$a;->u1()Z

    move-result p0

    if-nez p0, :cond_6

    return-object p1

    .line 32
    :cond_6
    invoke-interface {p2}, Lw2/a$a;->P()Lw2/a$a$b;

    throw p1

    .line 33
    :cond_7
    invoke-interface {p2}, Lw2/a$a;->p()Lw2/a$a$a;

    .line 34
    throw p1

    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Li5/z0;

    const-string/jumbo p2, "unable to parse AlternateContent element"

    .line 36
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    throw p1

    .line 38
    :cond_8
    new-instance p0, Li5/z0;

    const-string p1, "AlternateContent"

    const-string p2, "Schemas (*.xsb) for <CLASS> can\'t be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes - please either verify if the <XSB>.xsb is on the classpath or alternatively try to use the poi-ooxml-full-x.x.jar"

    const-string p3, "<CLASS>"

    .line 39
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<XSB>"

    const-string p3, "alternatecontentelement"

    .line 40
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0

    :cond_9
    :goto_3
    return-object p1
.end method

.method public static varargs selectProperty(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/Class;Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;[[Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Lorg/apache/xmlbeans/XmlObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory<",
            "TT;>;[[",
            "Ljavax/xml/namespace/QName;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    :try_start_0
    invoke-static {p0, p3, v0, v1, v0}, Lorg/apache/poi/ooxml/util/XPathHelper;->selectProperty(Li5/p0;[[Ljavax/xml/namespace/QName;IZZ)Li5/p0;

    move-result-object p3

    if-nez p3, :cond_3

    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p3}, Li5/p0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Li5/p0;->close()V

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_3
    :try_start_1
    invoke-interface {p3}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/apache/xmlbeans/impl/values/g0;

    if-eqz v1, :cond_5

    const-string v0, "Schemas (*.xsb) for <CLASS> can\'t be loaded - usually this happens when OSGI loading is used and the thread context classloader has no reference to the xmlbeans classes - please either verify if the <XSB>.xsb is on the classpath or alternatively try to use the poi-ooxml-full-x.x.jar"

    const-string v1, "<CLASS>"

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<XSB>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p3}, Li5/j2;->newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape$ReparseFactory;->parse(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 9
    :cond_4
    new-instance p2, Li5/z0;

    .line 10
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :cond_5
    :goto_2
    :try_start_2
    invoke-interface {p3}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Li5/p0;->close()V

    :cond_6
    return-object v0

    .line 13
    :goto_3
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    .line 14
    :try_start_4
    invoke-interface {p3}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :goto_5
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_7

    .line 16
    :try_start_7
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw p2
.end method

.method private static trySetFeature(Ljavax/xml/xpath/XPathFactory;Ljava/lang/String;Z)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/xpath/XPathFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lorg/apache/poi/ooxml/util/XPathHelper;->LOG:La5/d;

    invoke-interface {p2}, La5/d;->g()La5/b;

    move-result-object p2

    invoke-interface {p2, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p2, "Cannot set XPathFactory feature ({}) because outdated XML parser in classpath"

    invoke-interface {p0, p1, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p2, Lorg/apache/poi/ooxml/util/XPathHelper;->LOG:La5/d;

    invoke-interface {p2}, La5/d;->g()La5/b;

    move-result-object p2

    invoke-interface {p2, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p2, "XPathFactory Feature ({}) unsupported"

    invoke-interface {p0, p1, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
