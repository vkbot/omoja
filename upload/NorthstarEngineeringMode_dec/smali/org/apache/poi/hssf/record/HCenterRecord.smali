.class public final Lorg/apache/poi/hssf/record/HCenterRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x83s


# instance fields
.field private field_1_hcenter:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/HCenterRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short p1, p1, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HCenterRecord;->copy()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/HCenterRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HCenterRecord;-><init>(Lorg/apache/poi/hssf/record/HCenterRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HCenterRecord;->copy()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HCenterRecord;->copy()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
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

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string p0, "hcenter"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HCenterRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->H_CENTER:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHCenter()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x83

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setHCenter(Z)V
    .locals 0

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/HCenterRecord;->field_1_hcenter:S

    return-void
.end method
