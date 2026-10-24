.class public final Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final BIT_MARKER:J = -0x1000000000000L

.field public static final BOOLEAN:I = 0x1

.field private static final DATA_INDEX:I = 0x2

.field public static final EMPTY:I = 0x3

.field public static final ERROR_CODE:I = 0x2

.field public static final STRING:I = 0x0

.field private static final VARIABLE_DATA_LENGTH:I = 0x6


# instance fields
.field private final _variableData:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->_variableData:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->_variableData:[B

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->_variableData:[B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getGenericValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static create(II)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [B

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    aput-byte v1, v0, p0

    const/4 p0, 0x2

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    const/4 p0, 0x3

    aput-byte v1, v0, p0

    const/4 p0, 0x4

    aput-byte v1, v0, p0

    const/4 p0, 0x5

    aput-byte v1, v0, p0

    .line 15
    new-instance p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;-><init>([B)V

    return-object p0
.end method

.method public static create(J)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;
    .locals 5

    const-wide/high16 v0, -0x1000000000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x6

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    long-to-int v4, p0

    int-to-byte v4, v4

    .line 1
    aput-byte v4, v1, v3

    const/16 v4, 0x8

    shr-long/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aget-byte p0, v1, v2

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bad special value code ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v1, v2

    const-string v1, ")"

    .line 3
    invoke-static {p1, v0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    :goto_1
    new-instance p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;-><init>([B)V

    return-object p0
.end method

.method public static createCachedBoolean(Z)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object p0

    return-object p0
.end method

.method public static createCachedEmptyValue()Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method public static createCachedErrorCode(I)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object p0

    return-object p0
.end method

.method public static createForString()Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method private formatValue()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getTypeCode()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    const-string p0, "#error(type="

    const-string v1, ")#"

    invoke-static {p0, v0, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "<empty>"

    return-object p0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getDataValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getDataValue()I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "FALSE"

    goto :goto_0

    :cond_3
    const-string p0, "TRUE"

    :goto_0
    return-object p0

    :cond_4
    const-string p0, "<string>"

    return-object p0
.end method

.method private getDataValue()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->_variableData:[B

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    return p0
.end method

.method private getGenericValue()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getTypeCode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected type id ("

    const-string v2, ")"

    invoke-static {v1, v0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getErrorValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getBooleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    const-string/jumbo p0, "string"

    return-object p0
.end method


# virtual methods
.method public formatDebugString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->_variableData:[B

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanValue()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getTypeCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getDataValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a boolean cached value - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getErrorValue()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getTypeCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getDataValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not an error cached value - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/o0;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/p0;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const/4 p0, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    filled-new-array {v3, v4, p0, v2}, [I

    move-result-object p0

    const-string v2, "ERROR_CODE"

    const-string v3, "EMPTY"

    const-string v4, "STRING"

    const-string v5, "BOOLEAN"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string/jumbo v1, "value"

    const-string/jumbo v2, "typeCode"

    invoke-static {v1, v0, v2, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getTypeCode()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->_variableData:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    return p0
.end method

.method public getValueType()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getTypeCode()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected type id ("

    const-string v2, ")"

    invoke-static {v1, p0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result p0

    return p0
.end method

.method public getValueTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->getTypeCode()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected type id ("

    const-string v2, ")"

    invoke-static {v1, p0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->_variableData:[B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    const p0, 0xffff

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaSpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
