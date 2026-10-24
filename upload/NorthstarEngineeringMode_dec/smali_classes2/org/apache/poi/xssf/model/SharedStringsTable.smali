.class public Lorg/apache/poi/xssf/model/SharedStringsTable;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/model/SharedStrings;
.implements Ljava/io/Closeable;


# static fields
.field private static final options:Li5/z1;


# instance fields
.field private _sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

.field protected count:I

.field private final stmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;",
            ">;"
        }
    .end annotation
.end field

.field protected uniqueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li5/z1;

    invoke-direct {v0}, Li5/z1;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/model/SharedStringsTable;->options:Li5/z1;

    sget-object v1, Li5/z1$a;->i1:Li5/z1$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Li5/z1$a;->b1:Li5/z1$a;

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Li5/z1$a;->c1:Li5/z1$a;

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    const-string v1, ""

    const-string v2, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Li5/z1$a;->d1:Li5/z1$a;

    iget-object v0, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    .line 4
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    .line 5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->addNewSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 13
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
.method public addEntry(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)I
    .locals 4
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->xmlText(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    iget v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->getSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->addNewSi()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    iget-object p1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public addSharedStringItem(Lorg/apache/poi/ss/usermodel/RichTextString;)I
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/SharedStringsTable;->addEntry(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only XSSFRichTextString argument is supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public commit()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;->writeTo(Ljava/io/OutputStream;)V
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

.method public getCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    return p0
.end method

.method public getItemAt(I)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object p0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    return-object v0
.end method

.method public getSharedStringItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/RichTextString;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUniqueCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    return p0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 7

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/b;->c(Ljava/io/InputStream;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    iput-object p1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->getSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->getCount()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->getUniqueCount()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->getSiArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    iget-object v4, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->stmap:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/model/SharedStringsTable;->xmlText(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unable to parse shared strings table"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Li5/z1;

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Li5/z1;

    invoke-direct {v0, v1}, Li5/z1;-><init>(Li5/z1;)V

    sget-object v1, Li5/z1$a;->m1:Li5/z1$a;

    const v2, 0xf4240

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Li5/z1$a;->n1:Li5/z1$a;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->getSst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->count:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->setCount(J)V

    iget v2, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->uniqueCount:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSst;->setUniqueCount(J)V

    iget-object p0, p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->_sstDoc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;

    invoke-interface {p0, p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/SstDocument;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method

.method public xmlText(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/xssf/model/SharedStringsTable;->options:Li5/z1;

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->xmlText(Li5/z1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
