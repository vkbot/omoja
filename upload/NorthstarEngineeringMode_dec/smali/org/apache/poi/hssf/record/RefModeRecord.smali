.class public final Lorg/apache/poi/hssf/record/RefModeRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final USE_A1_MODE:S = 0x1s

.field public static final USE_R1C1_MODE:S = 0x0s

.field public static final sid:S = 0xfs


# instance fields
.field private field_1_mode:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RefModeRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 3
    iget-short p1, p1, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RefModeRecord;->copy()Lorg/apache/poi/hssf/record/RefModeRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RefModeRecord;->copy()Lorg/apache/poi/hssf/record/RefModeRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/RefModeRecord;
    .locals 0

    .line 4
    new-instance p0, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>()V

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RefModeRecord;->copy()Lorg/apache/poi/hssf/record/RefModeRecord;

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

    new-instance v0, Lorg/apache/poi/hssf/record/m2;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RefModeRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->REF_MODE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getMode()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RefModeRecord;->getMode()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setMode(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RefModeRecord;->field_1_mode:S

    return-void
.end method
