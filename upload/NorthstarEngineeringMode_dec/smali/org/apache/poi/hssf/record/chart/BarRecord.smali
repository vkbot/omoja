.class public final Lorg/apache/poi/hssf/record/chart/BarRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final displayAsPercentage:Lorg/apache/poi/util/BitField;

.field private static final horizontal:Lorg/apache/poi/util/BitField;

.field private static final shadow:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1017s

.field private static final stacked:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_barSpace:S

.field private field_2_categorySpace:S

.field private field_3_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->horizontal:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->stacked:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->shadow:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/BarRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    .line 5
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->copy()Lorg/apache/poi/hssf/record/chart/BarRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->copy()Lorg/apache/poi/hssf/record/chart/BarRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->copy()Lorg/apache/poi/hssf/record/chart/BarRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/BarRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BarRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;-><init>(Lorg/apache/poi/hssf/record/chart/BarRecord;)V

    return-object v0
.end method

.method public getBarSpace()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    return p0
.end method

.method public getCategorySpace()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getFormatFlags()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/hssf/record/chart/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/l;-><init>(Lorg/apache/poi/hssf/record/chart/BarRecord;I)V

    const-string v3, "barSpace"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/m;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/m;-><init>(Lorg/apache/poi/hssf/record/chart/BarRecord;I)V

    const-string v3, "categorySpace"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/n;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/n;-><init>(Lorg/apache/poi/hssf/record/chart/BarRecord;I)V

    const-string v2, "formatFlags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/l;-><init>(Lorg/apache/poi/hssf/record/chart/BarRecord;I)V

    const-string v3, "horizontal"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/m;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/m;-><init>(Lorg/apache/poi/hssf/record/chart/BarRecord;I)V

    const-string/jumbo v3, "stacked"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/n;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/n;-><init>(Lorg/apache/poi/hssf/record/chart/BarRecord;I)V

    const-string v2, "displayAsPercentage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/l;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/l;-><init>(Lorg/apache/poi/hssf/record/chart/BarRecord;I)V

    const-string/jumbo p0, "shadow"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->BAR:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1017

    return p0
.end method

.method public isDisplayAsPercentage()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isHorizontal()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->horizontal:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isShadow()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->shadow:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isStacked()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->stacked:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setBarSpace(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    return-void
.end method

.method public setCategorySpace(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    return-void
.end method

.method public setDisplayAsPercentage(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    return-void
.end method

.method public setHorizontal(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->horizontal:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    return-void
.end method

.method public setShadow(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->shadow:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    return-void
.end method

.method public setStacked(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->stacked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    return-void
.end method
