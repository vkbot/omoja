.class public final Lorg/apache/poi/hssf/record/WindowOneRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final hidden:Lorg/apache/poi/util/BitField;

.field private static final hscroll:Lorg/apache/poi/util/BitField;

.field private static final iconic:Lorg/apache/poi/util/BitField;

.field private static final reserved:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x3ds

.field private static final tabs:Lorg/apache/poi/util/BitField;

.field private static final vscroll:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_h_hold:S

.field private field_2_v_hold:S

.field private field_3_width:S

.field private field_4_height:S

.field private field_5_options:S

.field private field_6_active_sheet:I

.field private field_7_first_visible_tab:I

.field private field_8_num_selected_tabs:S

.field private field_9_tab_width_ratio:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->reserved:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

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

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    .line 9
    iget v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    .line 10
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    .line 11
    iget-short p1, p1, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->copy()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->copy()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->copy()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/WindowOneRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/WindowOneRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;)V

    return-object v0
.end method

.method public getActiveSheetIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x12

    return p0
.end method

.method public getDisplayHorizontalScrollbar()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayTabs()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayVerticalScrollbar()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getFirstVisibleTab()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "horizontalHold"

    new-instance v2, Lorg/apache/poi/hssf/record/v3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/v3;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;I)V

    const-string/jumbo v4, "verticalHold"

    new-instance v5, Lorg/apache/poi/hssf/record/w3;

    invoke-direct {v5, v0, v3}, Lorg/apache/poi/hssf/record/w3;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;I)V

    const-string/jumbo v6, "width"

    new-instance v7, Lorg/apache/poi/hssf/record/x3;

    invoke-direct {v7, v0, v3}, Lorg/apache/poi/hssf/record/x3;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;I)V

    const-string/jumbo v8, "options"

    new-instance v9, Lorg/apache/poi/hssf/record/v3;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v10}, Lorg/apache/poi/hssf/record/v3;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;I)V

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/apache/poi/util/BitField;

    sget-object v12, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    aput-object v12, v11, v3

    sget-object v3, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    aput-object v3, v11, v10

    sget-object v3, Lorg/apache/poi/hssf/record/WindowOneRecord;->reserved:Lorg/apache/poi/util/BitField;

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v3, 0x3

    sget-object v13, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    aput-object v13, v11, v3

    const/4 v3, 0x4

    sget-object v13, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    aput-object v13, v11, v3

    const/4 v3, 0x5

    sget-object v13, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    aput-object v13, v11, v3

    const-string v14, "HIDDEN"

    const-string v15, "ICONIC"

    const-string v16, "RESERVED"

    const-string v17, "HSCROLL"

    const-string v18, "VSCROLL"

    const-string v19, "TABS"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v11, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v9

    const-string v11, "activeSheetIndex"

    new-instance v13, Lorg/apache/poi/hssf/record/w3;

    invoke-direct {v13, v0, v10}, Lorg/apache/poi/hssf/record/w3;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;I)V

    const-string v14, "firstVisibleTab"

    new-instance v15, Lorg/apache/poi/hssf/record/x3;

    invoke-direct {v15, v0, v10}, Lorg/apache/poi/hssf/record/x3;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;I)V

    const-string v16, "numSelectedTabs"

    new-instance v10, Lorg/apache/poi/hssf/record/v3;

    invoke-direct {v10, v0, v12}, Lorg/apache/poi/hssf/record/v3;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;I)V

    const-string/jumbo v17, "tabWidthRatio"

    new-instance v3, Lorg/apache/poi/hssf/record/w3;

    invoke-direct {v3, v0, v12}, Lorg/apache/poi/hssf/record/w3;-><init>(Lorg/apache/poi/hssf/record/WindowOneRecord;I)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v18, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v11

    move-object v9, v13

    move-object v13, v10

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    invoke-static/range {v0 .. v15}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->WINDOW_ONE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHeight()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    return p0
.end method

.method public getHidden()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getHorizontalHold()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    return p0
.end method

.method public getIconic()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getNumSelectedTabs()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    return p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x3d

    return p0
.end method

.method public getTabWidthRatio()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return p0
.end method

.method public getVerticalHold()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    return p0
.end method

.method public getWidth()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHorizontalHold()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getVerticalHold()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getWidth()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getNumSelectedTabs()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getTabWidthRatio()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setActiveSheetIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    return-void
.end method

.method public setDisplayHorizonalScrollbar(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setDisplayTabs(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setDisplayVerticalScrollbar(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    return-void
.end method

.method public setHeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setHorizontalHold(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    return-void
.end method

.method public setIconic(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setNumSelectedTabs(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setTabWidthRatio(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return-void
.end method

.method public setVerticalHold(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    return-void
.end method

.method public setWidth(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    return-void
.end method
