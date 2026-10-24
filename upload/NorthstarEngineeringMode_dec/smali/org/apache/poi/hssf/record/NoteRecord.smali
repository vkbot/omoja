.class public final Lorg/apache/poi/hssf/record/NoteRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PADDING:Ljava/lang/Byte;

.field public static final EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

.field public static final NOTE_HIDDEN:S = 0x0s

.field public static final NOTE_VISIBLE:S = 0x2s

.field public static final sid:S = 0x1cs


# instance fields
.field private field_1_row:I

.field private field_2_col:I

.field private field_3_flags:S

.field private field_4_shapeid:I

.field private field_5_hasMultibyte:Z

.field private field_6_author:Ljava/lang/String;

.field private field_7_padding:Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/NoteRecord;

    sput-object v1, Lorg/apache/poi/hssf/record/NoteRecord;->EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/NoteRecord;->DEFAULT_PADDING:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    sget-object v0, Lorg/apache/poi/hssf/record/NoteRecord;->DEFAULT_PADDING:Ljava/lang/Byte;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/NoteRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    .line 7
    iget-boolean v0, p1, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    .line 8
    iget-object v0, p1, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    if-eqz v1, :cond_1

    .line 17
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    .line 19
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_3

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    .line 23
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public authorIsMultibyte()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    return p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NoteRecord;->copy()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>(Lorg/apache/poi/hssf/record/NoteRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NoteRecord;->copy()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NoteRecord;->copy()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object p0

    return-object p0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    return-object p0
.end method

.method public getColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    return p0
.end method

.method public getDataSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xb

    iget-object p0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public getFlags()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
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

    new-instance v1, Lorg/apache/poi/hssf/record/k2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/k2;-><init>(Lorg/apache/poi/hssf/record/NoteRecord;I)V

    const-string v3, "column"

    new-instance v4, Lorg/apache/poi/hssf/record/l2;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/l2;-><init>(Lorg/apache/poi/hssf/record/NoteRecord;I)V

    const-string v5, "flags"

    new-instance v6, Lorg/apache/poi/hssf/record/n0;

    const/16 v2, 0x1d

    invoke-direct {v6, v2, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v7, "shapeId"

    new-instance v8, Lorg/apache/poi/hssf/record/k2;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/k2;-><init>(Lorg/apache/poi/hssf/record/NoteRecord;I)V

    const-string v9, "author"

    new-instance v10, Lorg/apache/poi/hssf/record/l2;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/l2;-><init>(Lorg/apache/poi/hssf/record/NoteRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NoteRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->NOTE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    return p0
.end method

.method public getShapeId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Byte;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    :cond_1
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    return-void
.end method

.method public setColumn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    return-void
.end method

.method public setFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    return-void
.end method

.method public setRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    return-void
.end method

.method public setShapeId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    return-void
.end method
