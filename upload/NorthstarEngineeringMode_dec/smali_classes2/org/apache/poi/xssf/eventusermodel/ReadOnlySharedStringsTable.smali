.class public Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/model/SharedStrings;


# instance fields
.field private characters:Ljava/lang/StringBuilder;

.field protected count:I

.field private inRPh:Z

.field protected final includePhoneticRuns:Z

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tIsOpen:Z

.field protected uniqueCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    .line 21
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    .line 3
    sget-object p2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .line 4
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_0

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->readFrom(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 18
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
    throw p2
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->tIsOpen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->inRPh:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p3, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "si"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "t"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->tIsOpen:Z

    goto :goto_0

    :cond_2
    const-string p1, "rPh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->inRPh:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->count:I

    return p0
.end method

.method public getItemAt(I)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get item at "

    const-string v2, " with strings: "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUniqueCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->uniqueCount:I

    return p0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/XMLHelper;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SAX parser appears to be broken - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p3, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "sst"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "count"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->count:I

    :cond_1
    const-string p1, "uniqueCount"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->uniqueCount:I

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->uniqueCount:I

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->strings:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, "si"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_6

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_4
    const-string p1, "t"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_5

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->tIsOpen:Z

    goto :goto_0

    :cond_5
    const-string p1, "rPh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean p3, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->inRPh:Z

    iget-boolean p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->includePhoneticRuns:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;->characters:Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_0
    return-void
.end method
