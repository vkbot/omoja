.class public final Lorg/apache/poi/hssf/record/MulBlankRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xbes


# instance fields
.field private final _firstCol:I

.field private final _lastCol:I

.field private final _row:I

.field private final _xfs:[S


# direct methods
.method public constructor <init>(II[S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_row:I

    iput p2, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

    iput-object p3, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    .line 2
    array-length p1, p3

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_row:I

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

    .line 6
    invoke-static {p1}, Lorg/apache/poi/hssf/record/MulBlankRecord;->parseXFs(Lorg/apache/poi/hssf/record/RecordInputStream;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/MulBlankRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    return-object p0
.end method

.method private static parseXFs(Lorg/apache/poi/hssf/record/RecordInputStream;)[S
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->copy()Lorg/apache/poi/hssf/record/MulBlankRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/MulBlankRecord;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->copy()Lorg/apache/poi/hssf/record/MulBlankRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->copy()Lorg/apache/poi/hssf/record/MulBlankRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public getFirstColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

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

    const-string/jumbo v0, "row"

    new-instance v1, Lorg/apache/poi/hssf/record/d2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/d2;-><init>(Lorg/apache/poi/hssf/record/MulBlankRecord;I)V

    const-string v2, "firstColumn"

    new-instance v3, Lorg/apache/poi/hssf/record/n0;

    const/16 v4, 0x1c

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string v4, "lastColumn"

    new-instance v5, Lorg/apache/poi/hssf/record/u1;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v6, "xf"

    new-instance v7, Lorg/apache/poi/hssf/record/d2;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/hssf/record/d2;-><init>(Lorg/apache/poi/hssf/record/MulBlankRecord;I)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->MUL_BLANK:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getLastColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    return p0
.end method

.method public getNumColumns()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    iget p0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRow()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_row:I

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xbe

    return p0
.end method

.method public getXFAt(I)S
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    aget-short p0, p0, p1

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4

    iget v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_firstCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_xfs:[S

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, v0, v2

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/apache/poi/hssf/record/MulBlankRecord;->_lastCol:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
