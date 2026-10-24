.class public Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/model/SharedStrings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private count:I

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueCount:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    .line 3
    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;->SHARED_STRINGS_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->readFrom(Ljava/io/InputStream;)V
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
    move-exception v0

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
    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 15
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->readFrom(Ljava/io/InputStream;)V
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
    move-exception v0

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
    throw v0
.end method

.method public static synthetic access$000(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->count:I

    return p1
.end method

.method public static synthetic access$202(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->uniqueCount:I

    return p1
.end method

.method private readFrom(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;-><init>(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->count:I

    return p0
.end method

.method public getItemAt(I)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->strings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUniqueCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->uniqueCount:I

    return p0
.end method
