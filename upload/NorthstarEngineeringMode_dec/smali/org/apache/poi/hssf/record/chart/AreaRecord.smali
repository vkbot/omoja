.class public final Lorg/apache/poi/hssf/record/chart/AreaRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final displayAsPercentage:Lorg/apache/poi/util/BitField;

.field private static final shadow:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x101as

.field private static final stacked:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->stacked:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->shadow:Lorg/apache/poi/util/BitField;

    return-void
.end method

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

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/AreaRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->copy()Lorg/apache/poi/hssf/record/chart/AreaRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->copy()Lorg/apache/poi/hssf/record/chart/AreaRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->copy()Lorg/apache/poi/hssf/record/chart/AreaRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/AreaRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;-><init>(Lorg/apache/poi/hssf/record/chart/AreaRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getFormatFlags()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "formatFlags"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/d;-><init>(Lorg/apache/poi/hssf/record/chart/AreaRecord;I)V

    const-string/jumbo v2, "stacked"

    new-instance v3, Lorg/apache/poi/ddf/d;

    const/16 v4, 0x12

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v4, "displayAsPercentage"

    new-instance v5, Lorg/apache/poi/hssf/record/chart/l0;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/hssf/record/chart/l0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v7, "shadow"

    new-instance v8, Lorg/apache/poi/hssf/record/chart/d;

    invoke-direct {v8, p0, v6}, Lorg/apache/poi/hssf/record/chart/d;-><init>(Lorg/apache/poi/hssf/record/chart/AreaRecord;I)V

    move-object v6, v7

    move-object v7, v8

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->AREA:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x101a

    return p0
.end method

.method public isDisplayAsPercentage()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isShadow()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->shadow:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isStacked()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->stacked:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setDisplayAsPercentage(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    return-void
.end method

.method public setShadow(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->shadow:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    return-void
.end method

.method public setStacked(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->stacked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    return-void
.end method
