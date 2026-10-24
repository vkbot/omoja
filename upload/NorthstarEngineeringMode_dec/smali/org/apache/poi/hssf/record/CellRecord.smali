.class public abstract Lorg/apache/poi/hssf/record/CellRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;


# instance fields
.field private _columnIndex:I

.field private _formatIndex:I

.field private _rowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/CellRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CellRecord;->getXFIndex()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->copy()Lorg/apache/poi/hssf/record/CellRecord;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/hssf/record/CellRecord;
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->copy()Lorg/apache/poi/hssf/record/CellRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->copy()Lorg/apache/poi/hssf/record/CellRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getColumn()S
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    int-to-short p0, p0

    return p0
.end method

.method public final getDataSize()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getValueDataSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 7
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

    new-instance v1, Lorg/apache/poi/hssf/record/o0;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v2, "col"

    new-instance v3, Lorg/apache/poi/hssf/record/p0;

    const/16 v4, 0xc

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v4, "xfIndex"

    new-instance v5, Lorg/apache/poi/hssf/record/n0;

    const/16 v6, 0x9

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public abstract getRecordName()Ljava/lang/String;
.end method

.method public final getRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    return p0
.end method

.method public abstract getValueDataSize()I
.end method

.method public final getXFIndex()S
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    int-to-short p0, p0

    return p0
.end method

.method public final serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getXFIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;->serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public abstract serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method

.method public final setColumn(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_columnIndex:I

    return-void
.end method

.method public final setRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_rowIndex:I

    return-void
.end method

.method public final setXFIndex(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CellRecord;->_formatIndex:I

    return-void
.end method
