.class public abstract Lorg/apache/poi/hssf/record/CFHeaderBase;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# instance fields
.field private field_1_numcf:I

.field private field_2_need_recalculation_and_id:I

.field private field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/CFHeaderBase;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    .line 5
    iget-object v0, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->copy()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 8
    invoke-static {p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    iput p2, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->copy()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/hssf/record/CFHeaderBase;
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->copy()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->copy()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object p0

    return-object p0
.end method

.method public createEmpty()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method public getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p0
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

    const-string v0, "id"

    new-instance v1, Lorg/apache/poi/hssf/record/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/m;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;I)V

    const-string v3, "numCF"

    new-instance v4, Lorg/apache/poi/hssf/record/n;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/n;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;I)V

    const-string v5, "needRecalculationAndId"

    new-instance v6, Lorg/apache/poi/hssf/record/p0;

    const/16 v2, 0x8

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "enclosingCellRange"

    new-instance v8, Lorg/apache/poi/hssf/record/m;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/m;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;I)V

    const-string v9, "cfRanges"

    new-instance v10, Lorg/apache/poi/hssf/record/n;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/n;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;I)V

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

.method public getID()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getNeedRecalculation()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNumberOfConditionalFormats()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    return p0
.end method

.method public abstract getRecordName()Ljava/lang/String;
.end method

.method public read(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 5

    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-static {v4, v2}, Lorg/apache/poi/ss/util/CellRangeUtil;->createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    invoke-virtual {v0, v4}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cellRanges must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public setID(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNeedRecalculation()Z

    move-result v0

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    :cond_0
    return-void
.end method

.method public setNeedRecalculation(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNeedRecalculation()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_2_need_recalculation_and_id:I

    :goto_0
    return-void
.end method

.method public setNumberOfConditionalFormats(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderBase;->field_1_numcf:I

    return-void
.end method
