.class public final Lorg/apache/poi/hssf/record/StyleRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final isBuiltinFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x293s

.field private static final styleIndexMask:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_xf_index:I

.field private field_2_builtin_style:I

.field private field_3_outline_style_level:I

.field private field_3_stringHasMultibyte:Z

.field private field_4_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xfff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->styleIndexMask:Lorg/apache/poi/util/BitField;

    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    if-nez v0, :cond_1

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    goto :goto_1

    .line 16
    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Ran out of data reading style record"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    if-eqz v2, :cond_4

    .line 18
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    goto :goto_1

    .line 19
    :cond_4
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/StyleRecord;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    .line 7
    iget-boolean v0, p1, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    .line 8
    iget-object p1, p1, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/StyleRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/StyleRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/StyleRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "built-in"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "user-defined"

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->copy()Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->copy()Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->copy()Lorg/apache/poi/hssf/record/StyleRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/StyleRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/StyleRecord;-><init>(Lorg/apache/poi/hssf/record/StyleRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x5

    return v0
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

    const-string/jumbo v0, "xfIndex"

    new-instance v1, Lorg/apache/poi/hssf/record/h3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/h3;-><init>(Lorg/apache/poi/hssf/record/StyleRecord;I)V

    const-string/jumbo v3, "type"

    new-instance v4, Lorg/apache/poi/hssf/record/i3;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/i3;-><init>(Lorg/apache/poi/hssf/record/StyleRecord;I)V

    const-string v5, "builtin_style"

    new-instance v6, Lorg/apache/poi/hssf/record/u1;

    const/16 v2, 0x17

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v7, "outline_level"

    new-instance v8, Lorg/apache/poi/hssf/record/h3;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/h3;-><init>(Lorg/apache/poi/hssf/record/StyleRecord;I)V

    const-string v9, "name"

    new-instance v10, Lorg/apache/poi/hssf/record/i3;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/i3;-><init>(Lorg/apache/poi/hssf/record/StyleRecord;I)V

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
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->STYLE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x293

    return p0
.end method

.method public getXFIndex()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->styleIndexMask:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public isBuiltin()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    return-void
.end method

.method public setBuiltinStyle(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    sget-object p1, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    return-void
.end method

.method public setOutlineStyleLevel(I)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    return-void
.end method

.method public setXFIndex(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->styleIndexMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    return-void
.end method
