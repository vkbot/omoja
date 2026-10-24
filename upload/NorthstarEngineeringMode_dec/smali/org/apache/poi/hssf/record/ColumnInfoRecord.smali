.class public final Lorg/apache/poi/hssf/record/ColumnInfoRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final collapsed:Lorg/apache/poi/util/BitField;

.field private static final hidden:Lorg/apache/poi/util/BitField;

.field private static final outlevel:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x7ds


# instance fields
.field private _colWidth:I

.field private _firstCol:I

.field private _lastCol:I

.field private _options:I

.field private _xfIndex:I

.field private field_6_reserved:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->hidden:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x700

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->outlevel:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->collapsed:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/16 v0, 0x8e3

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setColumnWidth(I)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    const/16 v1, 0xf

    iput v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    .line 9
    iget p1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unusual record size remaining=("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    :goto_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public containsColumn(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    if-gt v0, p1, :cond_0

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->copy()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->copy()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->copy()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p0

    return-object p0
.end method

.method public formatMatches(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    iget v1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    iget v1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    iget p1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    if-ne p0, p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public getCollapsed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->collapsed:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getColumnWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getFirstColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 18
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

    const-string v1, "firstColumn"

    new-instance v2, Lorg/apache/poi/hssf/record/v;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/hssf/record/v;-><init>(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    const-string v4, "lastColumn"

    new-instance v5, Lorg/apache/poi/hssf/record/w;

    invoke-direct {v5, v3, v0}, Lorg/apache/poi/hssf/record/w;-><init>(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    const-string v6, "columnWidth"

    new-instance v7, Lorg/apache/poi/hssf/record/x;

    invoke-direct {v7, v3, v0}, Lorg/apache/poi/hssf/record/x;-><init>(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    const-string/jumbo v8, "xfIndex"

    new-instance v9, Lorg/apache/poi/hssf/record/v;

    const/4 v3, 0x1

    invoke-direct {v9, v3, v0}, Lorg/apache/poi/hssf/record/v;-><init>(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    const-string/jumbo v10, "options"

    new-instance v11, Lorg/apache/poi/hssf/record/w;

    invoke-direct {v11, v3, v0}, Lorg/apache/poi/hssf/record/w;-><init>(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    const-string v12, "hidden"

    new-instance v13, Lorg/apache/poi/hssf/record/x;

    invoke-direct {v13, v3, v0}, Lorg/apache/poi/hssf/record/x;-><init>(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    const-string/jumbo v14, "outlineLevel"

    new-instance v15, Lorg/apache/poi/hssf/record/v;

    const/4 v3, 0x2

    invoke-direct {v15, v3, v0}, Lorg/apache/poi/hssf/record/v;-><init>(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    const-string v16, "collapsed"

    move-object/from16 v17, v15

    new-instance v15, Lorg/apache/poi/hssf/record/w;

    invoke-direct {v15, v3, v0}, Lorg/apache/poi/hssf/record/w;-><init>(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, v17

    move-object/from16 v14, v16

    invoke-static/range {v0 .. v15}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->COLUMN_INFO:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getHidden()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getLastColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    return p0
.end method

.method public getOutlineLevel()I
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->outlevel:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x7d

    return p0
.end method

.method public getXFIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    return p0
.end method

.method public isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    iget p1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setCollapsed(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->collapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    return-void
.end method

.method public setFirstColumn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    return-void
.end method

.method public setLastColumn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    return-void
.end method

.method public setOutlineLevel(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->outlevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    return-void
.end method

.method public setXFIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    return-void
.end method
