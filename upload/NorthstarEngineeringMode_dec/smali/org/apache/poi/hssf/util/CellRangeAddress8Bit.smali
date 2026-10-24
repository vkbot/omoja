.class public final Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
.super Lorg/apache/poi/ss/util/CellRangeAddressBase;
.source "SourceFile"


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/util/CellRangeAddressBase;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 3

    .line 2
    invoke-static {p1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->readUShortAndCheck(Lorg/apache/poi/util/LittleEndianInput;)I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;-><init>(IIII)V

    return-void
.end method

.method public static getEncodedSize(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x6

    return p0
.end method

.method private static readUShortAndCheck(Lorg/apache/poi/util/LittleEndianInput;)I
    .locals 3

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->available()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ran out of data reading CellRangeAddress, available: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->available()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->copy()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method
