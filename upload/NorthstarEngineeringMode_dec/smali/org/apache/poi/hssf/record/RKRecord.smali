.class public final Lorg/apache/poi/hssf/record/RKRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "SourceFile"


# static fields
.field public static final RK_IEEE_NUMBER:S = 0x0s

.field public static final RK_IEEE_NUMBER_TIMES_100:S = 0x1s

.field public static final RK_INTEGER:S = 0x2s

.field public static final RK_INTEGER_TIMES_100:S = 0x3s

.field public static final sid:S = 0x27es


# instance fields
.field private final field_4_rk_number:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RKRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 2
    iget p1, p1, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    iput p1, p0, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/RKRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RKRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->copy()Lorg/apache/poi/hssf/record/RKRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/CellRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->copy()Lorg/apache/poi/hssf/record/RKRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/RKRecord;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RKRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->copy()Lorg/apache/poi/hssf/record/RKRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->copy()Lorg/apache/poi/hssf/record/RKRecord;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/u1;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v2, Lorg/apache/poi/hssf/record/q1;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "base"

    const-string/jumbo v1, "rkNumber"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->RK:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRKNumber()D
    .locals 2

    iget p0, p0, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    invoke-static {p0}, Lorg/apache/poi/hssf/util/RKUtil;->decodeNumber(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "RK"

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x27e

    return p0
.end method

.method public getValueDataSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/RKRecord;->field_4_rk_number:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method
