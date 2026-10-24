.class public final Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"


# static fields
.field public static final OBJECT_TYPE_ARC:S = 0x4s

.field public static final OBJECT_TYPE_BUTTON:S = 0x7s

.field public static final OBJECT_TYPE_CHART:S = 0x5s

.field public static final OBJECT_TYPE_CHECKBOX:S = 0xbs

.field public static final OBJECT_TYPE_COMBO_BOX:S = 0x14s

.field public static final OBJECT_TYPE_COMMENT:S = 0x19s

.field public static final OBJECT_TYPE_DIALOG_BOX:S = 0xfs

.field public static final OBJECT_TYPE_EDIT_BOX:S = 0xds

.field public static final OBJECT_TYPE_GROUP:S = 0x0s

.field public static final OBJECT_TYPE_GROUP_BOX:S = 0x13s

.field public static final OBJECT_TYPE_LABEL:S = 0xes

.field public static final OBJECT_TYPE_LINE:S = 0x1s

.field public static final OBJECT_TYPE_LIST_BOX:S = 0x12s

.field public static final OBJECT_TYPE_MICROSOFT_OFFICE_DRAWING:S = 0x1es

.field public static final OBJECT_TYPE_OPTION_BUTTON:S = 0xcs

.field public static final OBJECT_TYPE_OVAL:S = 0x3s

.field public static final OBJECT_TYPE_PICTURE:S = 0x8s

.field public static final OBJECT_TYPE_POLYGON:S = 0x9s

.field public static final OBJECT_TYPE_RECTANGLE:S = 0x2s

.field public static final OBJECT_TYPE_RESERVED1:S = 0xas

.field public static final OBJECT_TYPE_RESERVED2:S = 0x15s

.field public static final OBJECT_TYPE_RESERVED3:S = 0x16s

.field public static final OBJECT_TYPE_RESERVED4:S = 0x17s

.field public static final OBJECT_TYPE_RESERVED5:S = 0x18s

.field public static final OBJECT_TYPE_RESERVED6:S = 0x1as

.field public static final OBJECT_TYPE_RESERVED7:S = 0x1bs

.field public static final OBJECT_TYPE_RESERVED8:S = 0x1cs

.field public static final OBJECT_TYPE_RESERVED9:S = 0x1ds

.field public static final OBJECT_TYPE_SCROLL_BAR:S = 0x11s

.field public static final OBJECT_TYPE_SPINNER:S = 0x10s

.field public static final OBJECT_TYPE_TEXT:S = 0x6s

.field private static final autofill:Lorg/apache/poi/util/BitField;

.field private static final autoline:Lorg/apache/poi/util/BitField;

.field private static final locked:Lorg/apache/poi/util/BitField;

.field private static final printable:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x15s


# instance fields
.field private field_1_objectType:S

.field private field_2_objectId:I

.field private field_3_option:S

.field private field_4_reserved1:I

.field private field_5_reserved2:I

.field private field_6_reserved3:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SubRecord;-><init>(Lorg/apache/poi/hssf/record/SubRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    .line 8
    iget p1, p1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 1

    const/4 v0, -0x1

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/16 p3, 0x12

    if-ne p2, p3, :cond_0

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    .line 14
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    .line 16
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    return-void

    .line 17
    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Expected size 18 but got ("

    const-string p3, ")"

    .line 18
    invoke-static {p1, p2, p3}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->copy()Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>(Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->copy()Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x12

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "objectType"

    new-instance v1, Lorg/apache/poi/hssf/record/y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/y;-><init>(Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;I)V

    const-string v3, "objectId"

    new-instance v4, Lorg/apache/poi/hssf/record/z;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/z;-><init>(Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;I)V

    const-string/jumbo v5, "option"

    new-instance v6, Lorg/apache/poi/hssf/record/a0;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/a0;-><init>(Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;I)V

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/poi/util/BitField;

    sget-object v8, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    aput-object v8, v7, v2

    sget-object v2, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    sget-object v9, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    aput-object v9, v7, v2

    const/4 v2, 0x3

    sget-object v9, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    aput-object v9, v7, v2

    const-string v2, "AUTOFILL"

    const-string v9, "AUTOLINE"

    const-string v10, "LOCKED"

    const-string v11, "PRINTABLE"

    filled-new-array {v10, v11, v2, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v6

    const-string/jumbo v7, "reserved1"

    new-instance v9, Lorg/apache/poi/hssf/record/y;

    invoke-direct {v9, p0, v8}, Lorg/apache/poi/hssf/record/y;-><init>(Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;I)V

    const-string/jumbo v10, "reserved2"

    new-instance v11, Lorg/apache/poi/hssf/record/z;

    invoke-direct {v11, p0, v8}, Lorg/apache/poi/hssf/record/z;-><init>(Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;I)V

    const-string/jumbo v12, "reserved3"

    new-instance v13, Lorg/apache/poi/hssf/record/a0;

    invoke-direct {v13, p0, v8}, Lorg/apache/poi/hssf/record/a0;-><init>(Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->COMMON_OBJECT_DATA:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object p0
.end method

.method public getObjectId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    return p0
.end method

.method public getObjectType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    return p0
.end method

.method public getOption()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return p0
.end method

.method public getReserved1()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    return p0
.end method

.method public getReserved2()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    return p0
.end method

.method public getReserved3()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x15

    return p0
.end method

.method public isAutofill()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isAutoline()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isLocked()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isPrintable()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getDataSize()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setAutofill(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setAutoline(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setObjectId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    return-void
.end method

.method public setObjectType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    return-void
.end method

.method public setOption(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setPrintable(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return-void
.end method

.method public setReserved1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    return-void
.end method

.method public setReserved2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    return-void
.end method

.method public setReserved3(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    return-void
.end method
