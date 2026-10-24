.class public abstract Lorg/apache/poi/hssf/record/HeaderFooterBase;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# instance fields
.field private field_2_hasMultibyte:Z

.field private field_3_text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/HeaderFooterBase;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 4
    iget-boolean v0, p1, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    .line 5
    iget-object p1, p1, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private getTextLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->copy()Lorg/apache/poi/hssf/record/HeaderFooterBase;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/hssf/record/HeaderFooterBase;
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->copy()Lorg/apache/poi/hssf/record/HeaderFooterBase;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->copy()Lorg/apache/poi/hssf/record/HeaderFooterBase;

    move-result-object p0

    return-object p0
.end method

.method public final getDataSize()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getTextLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getTextLength()I

    move-result v0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    :cond_1
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/n0;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string/jumbo p0, "text"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    return-object p0
.end method

.method public final serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getTextLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getTextLength()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    iput-object p1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getDataSize()I

    move-result p0

    const/16 p1, 0x2020

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Header/Footer string too long (limit is 8224 bytes)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "text must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
