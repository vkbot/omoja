.class public final Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final automatic:Lorg/apache/poi/util/BitField;

.field private static final invert:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x100as


# instance fields
.field private field_1_foregroundColor:I

.field private field_2_backgroundColor:I

.field private field_3_pattern:S

.field private field_4_formatFlags:S

.field private field_5_forecolorIndex:S

.field private field_6_backcolorIndex:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->automatic:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->invert:Lorg/apache/poi/util/BitField;

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

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 10
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    .line 11
    iget v0, p1, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    .line 12
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    .line 13
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    .line 14
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    .line 15
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->copy()Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;-><init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;)V

    return-object v0
.end method

.method public getBackcolorIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    return p0
.end method

.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getForecolorIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    return p0
.end method

.method public getForegroundColor()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    return p0
.end method

.method public getFormatFlags()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

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

    new-instance v1, Lorg/apache/poi/hssf/record/chart/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/a;-><init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;I)V

    const-string v3, "foregroundColor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/b;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/b;-><init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;I)V

    const-string v3, "backgroundColor"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/c;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/c;-><init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;I)V

    const-string/jumbo v2, "pattern"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/a;-><init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;I)V

    const-string v3, "inverted"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/b;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/b;-><init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;I)V

    const-string v3, "automatic"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/c;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/c;-><init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;I)V

    const-string v2, "formatFlags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/a;-><init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;I)V

    const-string v3, "forecolorIndex"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/chart/b;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/b;-><init>(Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;I)V

    const-string p0, "backcolorIndex"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->AREA_FORMAT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getPattern()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x100a

    return p0
.end method

.method public isAutomatic()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->automatic:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isInvert()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->invert:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAutomatic(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->automatic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public setBackcolorIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    return-void
.end method

.method public setForecolorIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public setInvert(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->invert:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public setPattern(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    return-void
.end method
