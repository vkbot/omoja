.class Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetRefLoader"
.end annotation


# instance fields
.field sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private addWorksheet([B)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->tryToAddWorksheet([B)V
    :try_end_0
    .catch Lorg/apache/poi/xssf/binary/XSSFBParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->tryOldFormat([B)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->access$300()La5/d;

    move-result-object p0

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "This file was written with a beta version of Excel. POI will try to parse the file as a regular xlsb."

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    throw v0
.end method

.method private tryOldFormat([B)Z
    .locals 5

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {p1, v2, v0}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    array-length p0, p1

    if-ne v4, p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "table id out of range: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private tryToAddWorksheet([B)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    const-wide/32 v3, 0xffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {p1, v3, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Lorg/apache/poi/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-direct {v0, v2, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "table id out of range: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getSheets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    return-object p0
.end method

.method public handleRecord(I[B)V
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBundleSh:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->addWorksheet([B)V

    :cond_0
    return-void
.end method
