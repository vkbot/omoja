.class public final Lorg/apache/poi/openxml4j/opc/StreamHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static saveXmlInStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    new-instance v3, Lorg/apache/poi/openxml4j/opc/StreamHelper$1;

    invoke-direct {v3, p1}, Lorg/apache/poi/openxml4j/opc/StreamHelper$1;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    const-string p1, "encoding"

    const-string v3, "UTF-8"

    invoke-virtual {v1, p1, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "indent"

    const-string v3, "no"

    invoke-virtual {v1, p1, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "standalone"

    const-string/jumbo v3, "yes"

    invoke-virtual {v1, p1, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
