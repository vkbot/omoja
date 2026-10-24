.class public final Lorg/apache/poi/hssf/record/PaneRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final ACTIVE_PANE_LOWER_LEFT:S = 0x2s

.field public static final ACTIVE_PANE_LOWER_RIGHT:S = 0x0s

.field public static final ACTIVE_PANE_UPPER_LEFT:S = 0x3s

.field public static final ACTIVE_PANE_UPPER_RIGHT:S = 0x1s

.field public static final sid:S = 0x41s


# instance fields
.field private field_1_x:S

.field private field_2_y:S

.field private field_3_topRow:S

.field private field_4_leftColumn:S

.field private field_5_activePane:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/PaneRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    .line 7
    iget-short p1, p1, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->copy()Lorg/apache/poi/hssf/record/PaneRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/PaneRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>(Lorg/apache/poi/hssf/record/PaneRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->copy()Lorg/apache/poi/hssf/record/PaneRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->copy()Lorg/apache/poi/hssf/record/PaneRecord;

    move-result-object p0

    return-object p0
.end method

.method public getActivePane()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0xa

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

    const-string/jumbo v0, "x"

    new-instance v1, Lorg/apache/poi/hssf/record/u2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/u2;-><init>(Lorg/apache/poi/hssf/record/PaneRecord;I)V

    const-string/jumbo v3, "y"

    new-instance v4, Lorg/apache/poi/hssf/record/v2;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/v2;-><init>(Lorg/apache/poi/hssf/record/PaneRecord;I)V

    const-string/jumbo v5, "topRow"

    new-instance v6, Lorg/apache/poi/hssf/record/q1;

    const/16 v7, 0xd

    invoke-direct {v6, p0, v7}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "leftColumn"

    new-instance v8, Lorg/apache/poi/hssf/record/u2;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lorg/apache/poi/hssf/record/u2;-><init>(Lorg/apache/poi/hssf/record/PaneRecord;I)V

    const-string v10, "activePane"

    new-instance v11, Lorg/apache/poi/hssf/record/v2;

    invoke-direct {v11, p0, v9}, Lorg/apache/poi/hssf/record/v2;-><init>(Lorg/apache/poi/hssf/record/PaneRecord;I)V

    const/4 p0, 0x2

    const/4 v12, 0x3

    filled-new-array {v2, v9, p0, v12}, [I

    move-result-object p0

    const-string v2, "LOWER_LEFT"

    const-string v9, "UPPER_LEFT"

    const-string v12, "LOWER_RIGHT"

    const-string v13, "UPPER_RIGHT"

    filled-new-array {v12, v13, v2, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, p0, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v9

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->PANE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLeftColumn()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x41

    return p0
.end method

.method public getTopRow()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    return p0
.end method

.method public getX()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    return p0
.end method

.method public getY()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setActivePane(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    return-void
.end method

.method public setLeftColumn(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    return-void
.end method

.method public setTopRow(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    return-void
.end method

.method public setX(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    return-void
.end method

.method public setY(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    return-void
.end method
