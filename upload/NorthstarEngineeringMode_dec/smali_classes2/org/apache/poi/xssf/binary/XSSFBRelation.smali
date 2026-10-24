.class public Lorg/apache/poi/xssf/binary/XSSFBRelation;
.super Lorg/apache/poi/ooxml/POIXMLRelation;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final SHARED_STRINGS_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

.field public static final STYLES_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/sharedStrings"

    const-string v2, "/xl/sharedStrings.bin"

    const-string v3, "application/vnd.ms-excel.sharedStrings"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;->SHARED_STRINGS_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles"

    const-string v2, "/xl/styles.bin"

    const-string v3, "application/vnd.ms-excel.styles"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;->STYLES_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
