.class public final Lorg/apache/poi/hssf/record/LabelRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;


# static fields
.field private static final LOG:La5/d;

.field public static final sid:S = 0x204s


# instance fields
.field private field_1_row:I

.field private field_2_column:S

.field private field_3_xf_index:S

.field private field_4_string_len:S

.field private field_5_unicode_flag:B

.field private field_6_value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/LabelRecord;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/LabelRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/Record;-><init>(Lorg/apache/poi/hssf/record/Record;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    .line 7
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    .line 8
    iget-object p1, p1, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    if-lez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->isUnCompressedUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    .line 16
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    .line 17
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    .line 18
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p0

    if-lez p0, :cond_2

    sget-object p0, Lorg/apache/poi/hssf/record/LabelRecord;->LOG:La5/d;

    .line 19
    invoke-interface {p0}, La5/d;->f()La5/b;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LabelRecord data remains: {} : {}"

    invoke-interface {p0, v0, v1, p1}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->copy()Lorg/apache/poi/hssf/record/LabelRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/LabelRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LabelRecord;-><init>(Lorg/apache/poi/hssf/record/LabelRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->copy()Lorg/apache/poi/hssf/record/LabelRecord;

    move-result-object p0

    return-object p0
.end method

.method public getColumn()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "row"

    new-instance v1, Lorg/apache/poi/hssf/record/v1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/v1;-><init>(Lorg/apache/poi/hssf/record/LabelRecord;I)V

    const-string v3, "column"

    new-instance v4, Lorg/apache/poi/hssf/record/w1;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/w1;-><init>(Lorg/apache/poi/hssf/record/LabelRecord;I)V

    const-string/jumbo v5, "xfIndex"

    new-instance v6, Lorg/apache/poi/hssf/record/x1;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/x1;-><init>(Lorg/apache/poi/hssf/record/LabelRecord;I)V

    const-string/jumbo v7, "stringLen"

    new-instance v8, Lorg/apache/poi/hssf/record/v1;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/v1;-><init>(Lorg/apache/poi/hssf/record/LabelRecord;I)V

    const-string/jumbo v9, "unCompressedUnicode"

    new-instance v10, Lorg/apache/poi/hssf/record/w1;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/w1;-><init>(Lorg/apache/poi/hssf/record/LabelRecord;I)V

    const-string/jumbo v11, "value"

    new-instance v12, Lorg/apache/poi/hssf/record/x1;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/x1;-><init>(Lorg/apache/poi/hssf/record/LabelRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->LABEL:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRecordSize()I
    .locals 1

    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Label Records are supported READ ONLY...convert to LabelSST"

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x204

    return p0
.end method

.method public getStringLength()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    return-object p0
.end method

.method public getXFIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    return p0
.end method

.method public isUnCompressedUnicode()Z
    .locals 1

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(I[B)I
    .locals 0

    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Label Records are supported READ ONLY...convert to LabelSST"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setColumn(S)V
    .locals 0

    return-void
.end method

.method public setRow(I)V
    .locals 0

    return-void
.end method

.method public setXFIndex(S)V
    .locals 0

    return-void
.end method
