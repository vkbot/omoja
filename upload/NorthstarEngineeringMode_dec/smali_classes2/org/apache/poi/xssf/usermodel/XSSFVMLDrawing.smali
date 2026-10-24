.class public final Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# static fields
.field private static final COMMENT_SHAPE_TYPE_ID:Ljava/lang/String; = "_x0000_t202"

.field public static final QNAME_VMLDRAWING:Ljavax/xml/namespace/QName;

.field private static final ptrn_shapeId:Ljava/util/regex/Pattern;


# instance fields
.field private _shapeId:I

.field private _shapeTypeId:Ljava/lang/String;

.field private root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "urn:schemas-poi-apache-org:vmldrawing"

    const-string v2, "xml"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_VMLDRAWING:Ljavax/xml/namespace/QName;

    const-string v0, "_x0000_s(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->ptrn_shapeId:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->newDrawing()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    const/16 p1, 0x400

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 8
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

.method private matchCommentShape(Lorg/apache/xmlbeans/XmlObject;II)Z
    .locals 0

    instance-of p0, p1, Ld3/e;

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    :cond_0
    check-cast p1, Ld3/e;

    invoke-interface {p1}, Ld3/e;->Q()I

    move-result p0

    if-nez p0, :cond_1

    return p2

    :cond_1
    invoke-interface {p1}, Ld3/e;->N0()Ly2/a;

    const/4 p0, 0x0

    throw p0
.end method

.method private newDrawing()V
    .locals 2

    sget-object v0, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {v0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->addNewXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/schemas/vmldrawing/CTXML;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    sget-object v0, Lz2/d;->X0:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lz2/d;

    invoke-interface {v0}, Lz2/d;->Y0()Lz2/a;

    sget-object v0, Ld3/g;->p:Li5/c0;

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
.end method


# virtual methods
.method public commit()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public findCommentShape(II)Ld3/e;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {v0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/schemas/vmldrawing/CTXML;->newCursor()Li5/p0;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Li5/p0;->o0()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->matchCommentShape(Lorg/apache/xmlbeans/XmlObject;II)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Ld3/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Li5/p0;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Li5/p0;->k0()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Li5/p0;->close()V

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method public getDocument()Lorg/apache/poi/schemas/vmldrawing/XmlDocument;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {p0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/schemas/vmldrawing/CTXML;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/p0;->o0()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Li5/p0;->k0()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Li5/p0;->close()V

    return-object v0

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
.end method

.method public newCommentShape()Ld3/e;
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    sget-object v0, Ld3/c;->n:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Ld3/c;

    invoke-interface {v0}, Ld3/c;->addNewShape()Ld3/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_x0000_s"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld3/e;->setId(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ld3/e;->setType(Ljava/lang/String;)V

    invoke-interface {v0}, Ld3/e;->s1()V

    invoke-interface {v0}, Ld3/e;->v()V

    sget-object p0, Lz2/c;->W0:Li5/c0;

    invoke-interface {v0}, Ld3/e;->t0()V

    invoke-interface {v0}, Ld3/e;->addNewFill()Ld3/a;

    const/4 p0, 0x0

    throw p0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 7

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_VMLDRAWING:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sget-object v3, Li5/z1$a;->w1:Li5/z1$a;

    iget-object v4, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->type:Li5/c0;

    sget-object v3, Li5/z1$a;->F1:Li5/z1$a;

    iget-object v4, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    new-instance v3, Lorg/apache/poi/util/ReplacingInputStream;

    new-instance v4, Lorg/apache/poi/util/ReplacingInputStream;

    const-string v5, "<br>"

    const-string v6, "<br/>"

    invoke-direct {v4, p1, v5, v6}, Lorg/apache/poi/util/ReplacingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, " xmlns=\"http://schemas.openxmlformats.org/spreadsheetml/2006/main\""

    invoke-direct {v3, v4, p1, v2}, Lorg/apache/poi/util/ReplacingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {p1}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/schemas/vmldrawing/CTXML;->newCursor()Li5/p0;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Li5/p0;->o0()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Ld3/f;

    if-eqz v1, :cond_0

    check-cast v0, Ld3/f;

    invoke-interface {v0}, Ld3/f;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    instance-of v1, v0, Ld3/e;

    if-eqz v1, :cond_1

    check-cast v0, Ld3/e;

    invoke-interface {v0}, Ld3/e;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->ptrn_shapeId:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    :cond_1
    :goto_1
    invoke-interface {p1}, Li5/p0;->k0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
.end method

.method public removeCommentShape(II)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {v0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->getXml()Lorg/apache/poi/schemas/vmldrawing/CTXML;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/schemas/vmldrawing/CTXML;->newCursor()Li5/p0;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Li5/p0;->o0()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->matchCommentShape(Lorg/apache/xmlbeans/XmlObject;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Li5/p0;->k1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Li5/p0;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Li5/p0;->k0()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Li5/p0;->close()V

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_VMLDRAWING:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Li5/z1$a;->d1:Li5/z1$a;

    iget-object v3, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->root:Lorg/apache/poi/schemas/vmldrawing/XmlDocument;

    invoke-interface {p0, p1, v0}, Lorg/apache/poi/schemas/vmldrawing/XmlDocument;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method
