.class public final Lorg/apache/poi/hssf/record/WindowTwoRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final active:Lorg/apache/poi/util/BitField;

.field private static final arabic:Lorg/apache/poi/util/BitField;

.field private static final defaultHeader:Lorg/apache/poi/util/BitField;

.field private static final displayFormulas:Lorg/apache/poi/util/BitField;

.field private static final displayGridlines:Lorg/apache/poi/util/BitField;

.field private static final displayGuts:Lorg/apache/poi/util/BitField;

.field private static final displayRowColHeadings:Lorg/apache/poi/util/BitField;

.field private static final displayZeros:Lorg/apache/poi/util/BitField;

.field private static final freezePanes:Lorg/apache/poi/util/BitField;

.field private static final freezePanesNoSplit:Lorg/apache/poi/util/BitField;

.field private static final savedInPageBreakPreview:Lorg/apache/poi/util/BitField;

.field private static final selected:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x23es


# instance fields
.field private field_1_options:S

.field private field_2_top_row:S

.field private field_3_left_col:S

.field private field_4_header_color:I

.field private field_5_page_break_zoom:S

.field private field_6_normal_zoom:S

.field private field_7_reserved:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayFormulas:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGridlines:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayRowColHeadings:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanes:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayZeros:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->defaultHeader:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->arabic:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGuts:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanesNoSplit:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->selected:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x400

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->active:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x800

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->savedInPageBreakPreview:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    :cond_0
    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/WindowTwoRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    .line 8
    iget-short v0, p1, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    .line 9
    iget p1, p1, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->copy()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->copy()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->copy()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/WindowTwoRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;-><init>(Lorg/apache/poi/hssf/record/WindowTwoRecord;)V

    return-object v0
.end method

.method public getArabic()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->arabic:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x12

    return p0
.end method

.method public getDefaultHeader()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->defaultHeader:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayFormulas()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayFormulas:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayGridlines()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGridlines:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayGuts()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGuts:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayRowColHeadings()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayRowColHeadings:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getDisplayZeros()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayZeros:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getFreezePanes()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanes:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getFreezePanesNoSplit()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanesNoSplit:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 21
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

    const-string/jumbo v1, "options"

    new-instance v2, Lorg/apache/poi/hssf/record/y3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/y3;-><init>(Lorg/apache/poi/hssf/record/WindowTwoRecord;I)V

    const/16 v4, 0xc

    new-array v4, v4, [Lorg/apache/poi/util/BitField;

    sget-object v5, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayFormulas:Lorg/apache/poi/util/BitField;

    aput-object v5, v4, v3

    sget-object v5, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGridlines:Lorg/apache/poi/util/BitField;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayRowColHeadings:Lorg/apache/poi/util/BitField;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x3

    sget-object v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanes:Lorg/apache/poi/util/BitField;

    aput-object v8, v4, v5

    const/4 v5, 0x4

    sget-object v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayZeros:Lorg/apache/poi/util/BitField;

    aput-object v8, v4, v5

    const/4 v5, 0x5

    sget-object v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;->defaultHeader:Lorg/apache/poi/util/BitField;

    aput-object v8, v4, v5

    const/4 v5, 0x6

    sget-object v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;->arabic:Lorg/apache/poi/util/BitField;

    aput-object v8, v4, v5

    const/4 v5, 0x7

    sget-object v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGuts:Lorg/apache/poi/util/BitField;

    aput-object v8, v4, v5

    const/16 v5, 0x8

    sget-object v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanesNoSplit:Lorg/apache/poi/util/BitField;

    aput-object v8, v4, v5

    const/16 v5, 0x9

    sget-object v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;->selected:Lorg/apache/poi/util/BitField;

    aput-object v8, v4, v5

    const/16 v5, 0xa

    sget-object v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;->active:Lorg/apache/poi/util/BitField;

    aput-object v8, v4, v5

    const/16 v5, 0xb

    sget-object v8, Lorg/apache/poi/hssf/record/WindowTwoRecord;->savedInPageBreakPreview:Lorg/apache/poi/util/BitField;

    aput-object v8, v4, v5

    const-string v9, "DISPLAY_FORMULAS"

    const-string v10, "DISPLAY_GRIDLINES"

    const-string v11, "DISPLAY_ROW_COL_HEADINGS"

    const-string v12, "FREEZE_PANES"

    const-string v13, "DISPLAY_ZEROS"

    const-string v14, "DEFAULT_HEADER"

    const-string v15, "ARABIC"

    const-string v16, "DISPLAY_GUTS"

    const-string v17, "FREEZE_PANES_NO_SPLIT"

    const-string v18, "SELECTED"

    const-string v19, "ACTIVE"

    const-string v20, "SAVED_IN_PAGE_BREAK_PREVIEW"

    filled-new-array/range {v9 .. v20}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string/jumbo v4, "topRow"

    new-instance v5, Lorg/apache/poi/hssf/record/z3;

    invoke-direct {v5, v0, v3}, Lorg/apache/poi/hssf/record/z3;-><init>(Lorg/apache/poi/hssf/record/WindowTwoRecord;I)V

    const-string v8, "leftCol"

    new-instance v9, Lorg/apache/poi/hssf/record/a4;

    invoke-direct {v9, v0, v3}, Lorg/apache/poi/hssf/record/a4;-><init>(Lorg/apache/poi/hssf/record/WindowTwoRecord;I)V

    const-string v10, "headerColor"

    new-instance v11, Lorg/apache/poi/hssf/record/y3;

    invoke-direct {v11, v0, v6}, Lorg/apache/poi/hssf/record/y3;-><init>(Lorg/apache/poi/hssf/record/WindowTwoRecord;I)V

    const-string/jumbo v12, "pageBreakZoom"

    new-instance v13, Lorg/apache/poi/hssf/record/z3;

    invoke-direct {v13, v0, v6}, Lorg/apache/poi/hssf/record/z3;-><init>(Lorg/apache/poi/hssf/record/WindowTwoRecord;I)V

    const-string v14, "normalZoom"

    new-instance v15, Lorg/apache/poi/hssf/record/a4;

    invoke-direct {v15, v0, v6}, Lorg/apache/poi/hssf/record/a4;-><init>(Lorg/apache/poi/hssf/record/WindowTwoRecord;I)V

    const-string/jumbo v16, "reserved"

    new-instance v6, Lorg/apache/poi/hssf/record/y3;

    invoke-direct {v6, v0, v7}, Lorg/apache/poi/hssf/record/y3;-><init>(Lorg/apache/poi/hssf/record/WindowTwoRecord;I)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v8

    move-object v5, v9

    move-object/from16 v17, v6

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-static/range {v0 .. v13}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->WINDOW_TWO:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHeaderColor()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    return p0
.end method

.method public getLeftCol()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    return p0
.end method

.method public getNormalZoom()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    return p0
.end method

.method public getOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return p0
.end method

.method public getPageBreakZoom()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    return p0
.end method

.method public getReserved()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    return p0
.end method

.method public getSavedInPageBreakPreview()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->savedInPageBreakPreview:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getSelected()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->selected:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x23e

    return p0
.end method

.method public getTopRow()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    return p0
.end method

.method public isActive()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->active:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getTopRow()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getLeftCol()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getHeaderColor()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getPageBreakZoom()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getNormalZoom()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getReserved()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setActive(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->active:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setArabic(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->arabic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setDefaultHeader(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->defaultHeader:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayFormulas:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGridlines:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGuts:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayRowColHeadings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayZeros:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setFreezePanes(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanes:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setFreezePanesNoSplit(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanesNoSplit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setHeaderColor(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    return-void
.end method

.method public setLeftCol(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    return-void
.end method

.method public setNormalZoom(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setPageBreakZoom(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    return-void
.end method

.method public setReserved(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    return-void
.end method

.method public setSavedInPageBreakPreview(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->savedInPageBreakPreview:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->selected:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return-void
.end method

.method public setTopRow(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    return-void
.end method
