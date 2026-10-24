.class Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final HEADER_FOOTER_HELPER:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;


# instance fields
.field private final headerFooterTypeLabel:Ljava/lang/String;

.field private final isHeader:Z

.field private rawString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->HEADER_FOOTER_HELPER:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->headerFooterTypeLabel:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->isHeader:Z

    return-void
.end method


# virtual methods
.method public getHeaderFooterTypeLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->headerFooterTypeLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getRawString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    return-object p0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->HEADER_FOOTER_HELPER:Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getLeftSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getCenterSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lorg/apache/poi/xssf/usermodel/helpers/HeaderFooterHelper;->getRightSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x20

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isHeader()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->isHeader:Z

    return p0
.end method

.method public setRawString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->rawString:Ljava/lang/String;

    return-void
.end method
