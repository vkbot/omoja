.class public final Lorg/apache/poi/hssf/record/BoundSheetRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final hiddenFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x85s

.field private static final veryHiddenFlag:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_position_of_BOF:I

.field private field_2_option_flags:I

.field private field_4_isMultibyteUnicode:I

.field private field_5_sheetname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->hiddenFlag:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->veryHiddenFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setSheetname(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/BoundSheetRecord;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    .line 7
    iget-object p1, p1, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readPlain([BII)V

    .line 10
    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    .line 14
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/BoundSheetRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/BoundSheetRecord;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->compareRecords(Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/BoundSheetRecord;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/BoundSheetRecord;)Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result p0

    return p0
.end method

.method private static compareRecords(Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/BoundSheetRecord;)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getPositionOfBof()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getPositionOfBof()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private isMultibyte()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static orderByBofPosition(Ljava/util/List;)[Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;)[",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p0, Lorg/apache/poi/hssf/record/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->copy()Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;-><init>(Lorg/apache/poi/hssf/record/BoundSheetRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->copy()Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->copy()Lorg/apache/poi/hssf/record/BoundSheetRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x8

    return v0
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

    const-string v0, "bof"

    new-instance v1, Lorg/apache/poi/hssf/record/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/j;-><init>(Lorg/apache/poi/hssf/record/BoundSheetRecord;I)V

    const-string/jumbo v3, "optionFlags"

    new-instance v4, Lorg/apache/poi/hssf/record/k;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/k;-><init>(Lorg/apache/poi/hssf/record/BoundSheetRecord;I)V

    const-string v5, "multiByte"

    new-instance v6, Lorg/apache/poi/hssf/record/l;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/l;-><init>(Lorg/apache/poi/hssf/record/BoundSheetRecord;I)V

    const-string/jumbo v7, "sheetName"

    new-instance v8, Lorg/apache/poi/hssf/record/j;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/j;-><init>(Lorg/apache/poi/hssf/record/BoundSheetRecord;I)V

    const-string v9, "hidden"

    new-instance v10, Lorg/apache/poi/hssf/record/k;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/k;-><init>(Lorg/apache/poi/hssf/record/BoundSheetRecord;I)V

    const-string/jumbo v11, "veryHidden"

    new-instance v12, Lorg/apache/poi/hssf/record/l;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/l;-><init>(Lorg/apache/poi/hssf/record/BoundSheetRecord;I)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->BOUND_SHEET:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getPositionOfBof()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    return p0
.end method

.method public getSheetname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x85

    return p0
.end method

.method public isHidden()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->hiddenFlag:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isVeryHidden()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->veryHiddenFlag:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getPositionOfBof()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->hiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    return-void
.end method

.method public setPositionOfBof(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    return-void
.end method

.method public setSheetname(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetName(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    return-void
.end method

.method public setVeryHidden(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->veryHiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    return-void
.end method
