.class public final Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "SourceFile"


# static fields
.field public static final PLAIN_TOKEN_SIZE:I = 0x8

.field private static final RESERVED_FIELD_LEN:I = 0x7

.field public static final sid:B = 0x20t


# instance fields
.field private final _arrayValues:[Ljava/lang/Object;

.field private final _nColumns:I

.field private final _nRows:I

.field private final _reserved0Int:I

.field private final _reserved1Short:I

.field private final _reserved2Byte:I


# direct methods
.method public constructor <init>(IIIII[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    iput p3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    iput p4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    iput p5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    .line 2
    invoke-virtual {p6}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    .line 4
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    .line 5
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    .line 6
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    .line 7
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    .line 8
    iget v0, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    .line 9
    iget-object p1, p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([[Ljava/lang/Object;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    const/4 v0, 0x0

    .line 11
    aget-object v1, p1, v0

    array-length v1, v1

    .line 12
    array-length v2, p1

    int-to-short v3, v1

    iput v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    int-to-short v4, v2

    iput v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    mul-int/2addr v3, v4

    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 14
    aget-object v5, p1, v4

    move v6, v0

    :goto_1
    if-ge v6, v1, :cond_0

    .line 15
    invoke-virtual {p0, v6, v4}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v7

    aget-object v8, v5, v6

    aput-object v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getConstantText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "TRUE"

    goto :goto_0

    :cond_2
    const-string p0, "FALSE"

    :goto_0
    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected constant class ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Array item cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string p0, "#values#uninitialised#"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->toFormulaString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    move-result-object p0

    return-object p0
.end method

.method public getColumnCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    return p0
.end method

.method public getDefaultOperandClass()B
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "reserved0"

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ss/formula/ptg/j;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;I)V

    const-string v3, "reserved1"

    new-instance v4, Lorg/apache/poi/ss/formula/ptg/k;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/ss/formula/ptg/k;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;I)V

    const-string v5, "reserved2"

    new-instance v6, Lorg/apache/poi/ss/formula/ptg/l;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/ss/formula/ptg/l;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;I)V

    const-string v7, "columnCount"

    new-instance v8, Lorg/apache/poi/ss/formula/ptg/j;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/ss/formula/ptg/j;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;I)V

    const-string v9, "rowCount"

    new-instance v10, Lorg/apache/poi/ss/formula/ptg/k;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/ss/formula/ptg/k;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;I)V

    const-string v11, "arrayValues"

    new-instance v12, Lorg/apache/poi/ss/formula/ptg/l;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/ss/formula/ptg/l;-><init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRowCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0xb

    return p0
.end method

.method public getTokenArrayValues()[[Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    move v4, v1

    :goto_1
    iget v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "array values not read yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValueIndex(II)I
    .locals 4

    const-string v0, ")"

    const-string v1, ") is outside the allowed range (0.."

    if-ltz p1, :cond_1

    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge p1, v2, :cond_1

    if-ltz p2, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge p2, v3, :cond_0

    mul-int/2addr p2, v2

    add-int/2addr p2, p1

    return p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified rowIx ("

    invoke-static {v2, p2, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified colIx ("

    invoke-static {v2, p1, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isBaseToken()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v3, v1

    :goto_1
    iget v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge v3, v4, :cond_2

    if-lez v3, :cond_1

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getConstantText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method

.method public writeTokenValueBytes(Lorg/apache/poi/util/LittleEndianOutput;)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x3

    return p0
.end method
