.class public final Lorg/apache/poi/hssf/record/BoolErrRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x205s


# instance fields
.field private _isError:Z

.field private _value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/BoolErrRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    iput v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    .line 4
    iget-boolean p1, p1, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, ") for BOOLERR record."

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    .line 11
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    goto :goto_1

    .line 12
    :cond_2
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Unexpected isError flag ("

    .line 13
    invoke-static {v0, p1, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    :goto_1
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/BoolErrRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/BoolErrRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/CellRecord;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->copy()Lorg/apache/poi/hssf/record/BoolErrRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/BoolErrRecord;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>(Lorg/apache/poi/hssf/record/BoolErrRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/CellRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->copy()Lorg/apache/poi/hssf/record/BoolErrRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->copy()Lorg/apache/poi/hssf/record/BoolErrRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->copy()Lorg/apache/poi/hssf/record/BoolErrRecord;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanValue()Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getErrorValue()B
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    int-to-byte p0, p0

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

    const-string v0, "base"

    new-instance v1, Lorg/apache/poi/hssf/record/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/f;-><init>(Lorg/apache/poi/hssf/record/BoolErrRecord;I)V

    const-string v3, "isBoolean"

    new-instance v4, Lorg/apache/poi/hssf/record/g;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/g;-><init>(Lorg/apache/poi/hssf/record/BoolErrRecord;I)V

    const-string v5, "booleanVal"

    new-instance v6, Lorg/apache/poi/hssf/record/h;

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/h;-><init>(Lorg/apache/poi/hssf/record/BoolErrRecord;I)V

    const-string v7, "isError"

    new-instance v8, Lorg/apache/poi/hssf/record/f;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/f;-><init>(Lorg/apache/poi/hssf/record/BoolErrRecord;I)V

    const-string v9, "errorVal"

    new-instance v10, Lorg/apache/poi/hssf/record/g;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/g;-><init>(Lorg/apache/poi/hssf/record/BoolErrRecord;I)V

    const-string v11, "errorTxt"

    new-instance v12, Lorg/apache/poi/hssf/record/h;

    invoke-direct {v12, p0, v2}, Lorg/apache/poi/hssf/record/h;-><init>(Lorg/apache/poi/hssf/record/BoolErrRecord;I)V

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

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->BOOL_ERR:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "BOOLERR"

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x205

    return p0
.end method

.method public getValueDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public isBoolean()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isError()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    return p0
.end method

.method public serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean p0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method

.method public setValue(B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    return-void
.end method

.method public setValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/poi/hssf/record/BoolErrRecord$1;->$SwitchMap$org$apache$poi$ss$usermodel$FormulaError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Value can only be 0,7,15,23,29,36 or 42. It cannot be "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(Z)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    return-void
.end method
