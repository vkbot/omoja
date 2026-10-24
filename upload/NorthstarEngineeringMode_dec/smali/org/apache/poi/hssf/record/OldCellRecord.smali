.class public abstract Lorg/apache/poi/hssf/record/OldCellRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# instance fields
.field private final field_1_row:I

.field private final field_2_column:S

.field private field_3_cell_attrs:I

.field private field_3_xf_index:S

.field private final isBiff2:Z

.field private final sid:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->sid:S

    iput-boolean p2, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2:Z

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_1_row:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_2_column:S

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_cell_attrs:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_cell_attrs:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_xf_index:S

    :goto_0
    return-void
.end method


# virtual methods
.method public getCellAttrs()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_cell_attrs:I

    return p0
.end method

.method public final getColumn()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_2_column:S

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

    const-string/jumbo v0, "row"

    new-instance v1, Lorg/apache/poi/hssf/record/o2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/o2;-><init>(Lorg/apache/poi/hssf/record/OldCellRecord;I)V

    const-string v3, "column"

    new-instance v4, Lorg/apache/poi/hssf/record/p2;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/p2;-><init>(Lorg/apache/poi/hssf/record/OldCellRecord;I)V

    const-string v5, "biff2"

    new-instance v6, Lorg/apache/poi/hssf/record/u1;

    const/16 v2, 0xa

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v7, "biff2CellAttrs"

    new-instance v8, Lorg/apache/poi/hssf/record/o2;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/o2;-><init>(Lorg/apache/poi/hssf/record/OldCellRecord;I)V

    const-string/jumbo v9, "xfIndex"

    new-instance v10, Lorg/apache/poi/hssf/record/p2;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/p2;-><init>(Lorg/apache/poi/hssf/record/OldCellRecord;I)V

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

.method public final getRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_1_row:I

    return p0
.end method

.method public getSid()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->sid:S

    return p0
.end method

.method public final getXFIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_xf_index:S

    return p0
.end method

.method public isBiff2()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
