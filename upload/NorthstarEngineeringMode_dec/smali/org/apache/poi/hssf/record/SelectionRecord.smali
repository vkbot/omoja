.class public final Lorg/apache/poi/hssf/record/SelectionRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1ds


# instance fields
.field private field_1_pane:B

.field private field_2_row_active_cell:I

.field private field_3_col_active_cell:I

.field private field_4_active_cell_ref_index:I

.field private field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    iput p2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    .line 11
    new-instance v0, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-direct {v0, p1, p1, p2, p2}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    filled-new-array {v0}, [Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 18
    new-array v0, v0, [Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 19
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 20
    new-instance v2, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/SelectionRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    iput v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/ddf/f0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/record/e3;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/SelectionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->lambda$new$0(I)[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    return-object p0
.end method

.method private resetField6()V
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    iget v1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    iget v2, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    invoke-direct {v0, v1, v1, v2, v2}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    filled-new-array {v0}, [Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->copy()Lorg/apache/poi/hssf/record/SelectionRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->copy()Lorg/apache/poi/hssf/record/SelectionRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/SelectionRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SelectionRecord;-><init>(Lorg/apache/poi/hssf/record/SelectionRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->copy()Lorg/apache/poi/hssf/record/SelectionRecord;

    move-result-object p0

    return-object p0
.end method

.method public getActiveCellCol()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    return p0
.end method

.method public getActiveCellRef()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    return p0
.end method

.method public getActiveCellRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    return p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length p0, p0

    invoke-static {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->getEncodedSize(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x9

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "pane"

    new-instance v1, Lorg/apache/poi/hssf/record/f3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/f3;-><init>(Lorg/apache/poi/hssf/record/SelectionRecord;I)V

    const-string v3, "activeCellRow"

    new-instance v4, Lorg/apache/poi/hssf/record/g3;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/g3;-><init>(Lorg/apache/poi/hssf/record/SelectionRecord;I)V

    const-string v5, "activeCellCol"

    new-instance v6, Lorg/apache/poi/hssf/record/m2;

    const/16 v2, 0x11

    invoke-direct {v6, v2, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const-string v7, "activeCellRef"

    new-instance v8, Lorg/apache/poi/hssf/record/f3;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/f3;-><init>(Lorg/apache/poi/hssf/record/SelectionRecord;I)V

    const-string/jumbo v9, "refs"

    new-instance v10, Lorg/apache/poi/hssf/record/g3;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/g3;-><init>(Lorg/apache/poi/hssf/record/SelectionRecord;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->SELECTION:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getPane()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1d

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getPane()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellCol()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRef()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_6_refs:[Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActiveCellCol(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_3_col_active_cell:I

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->resetField6()V

    return-void
.end method

.method public setActiveCellRef(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_4_active_cell_ref_index:I

    return-void
.end method

.method public setActiveCellRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_2_row_active_cell:I

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->resetField6()V

    return-void
.end method

.method public setPane(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/SelectionRecord;->field_1_pane:B

    return-void
.end method
