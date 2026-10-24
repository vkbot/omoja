.class public Lorg/apache/poi/xssf/usermodel/XSSFPictureData;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PictureData;


# static fields
.field private static final DEFAULT_MAX_IMAGE_SIZE:I = 0x5f5e100

.field private static MAX_IMAGE_SIZE:I = 0x5f5e100

.field protected static final RELATIONS:[Lorg/apache/poi/ooxml/POIXMLRelation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lorg/apache/poi/ooxml/POIXMLRelation;

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/ooxml/POIXMLRelation;

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PICT:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_JPEG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PNG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_DIB:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_GIF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_TIFF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EPS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_BMP:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WPG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public static getMaxImageSize()I
    .locals 1

    sget v0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->MAX_IMAGE_SIZE:I

    return v0
.end method

.method public static setMaxImageSize(I)V
    .locals 0

    sput p0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->MAX_IMAGE_SIZE:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->getMaxImageSize()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->toByteArrayWithMaxLength(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    new-instance v0, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureType()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/ooxml/POIXMLRelation;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public prepareForCommit()V
    .locals 0

    return-void
.end method

.method public suggestFileExtension()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getExtension()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
