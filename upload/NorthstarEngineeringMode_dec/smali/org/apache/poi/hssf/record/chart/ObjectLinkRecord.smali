.class public final Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final ANCHOR_ID_CHART_TITLE:S = 0x1s

.field public static final ANCHOR_ID_SERIES_OR_POINT:S = 0x4s

.field public static final ANCHOR_ID_X_AXIS:S = 0x3s

.field public static final ANCHOR_ID_Y_AXIS:S = 0x2s

.field public static final ANCHOR_ID_Z_AXIS:S = 0x7s

.field public static final sid:S = 0x1027s


# instance fields
.field private field_1_anchorId:S

.field private field_2_link1:S

.field private field_3_link2:S


# direct methods
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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    .line 5
    iget-short p1, p1, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->copy()Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->copy()Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->copy()Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;-><init>(Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;)V

    return-object v0
.end method

.method public getAnchorId()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x6

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

    const-string v0, "anchorId"

    new-instance v1, Lorg/apache/poi/hssf/record/chart/l0;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/chart/l0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x7

    filled-new-array {v2, v3, v4, v5, v6}, [I

    move-result-object v2

    const-string v3, "SERIES_OR_POINT"

    const-string v4, "Z_AXIS"

    const-string v5, "CHART_TITLE"

    const-string v7, "Y_AXIS"

    const-string v8, "X_AXIS"

    filled-new-array {v5, v7, v8, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "link1"

    new-instance v3, Lorg/apache/poi/hssf/record/chart/m0;

    invoke-direct {v3, p0, v6}, Lorg/apache/poi/hssf/record/chart/m0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v4, "link2"

    new-instance v5, Lorg/apache/poi/ddf/d;

    const/16 v6, 0x1b

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->OBJECT_LINK:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLink1()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    return p0
.end method

.method public getLink2()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1027

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAnchorId(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_1_anchorId:S

    return-void
.end method

.method public setLink1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_2_link1:S

    return-void
.end method

.method public setLink2(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ObjectLinkRecord;->field_3_link2:S

    return-void
.end method
