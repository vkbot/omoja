.class public final Lorg/apache/poi/ss/formula/ptg/ErrPtg;
.super Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;
.source "SourceFile"


# static fields
.field public static final DIV_ZERO:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final NAME_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final NULL_INTERSECTION:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final NUM_ERROR:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final N_A:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field private static final SIZE:I = 0x2

.field public static final VALUE_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

.field public static final sid:S = 0x1cs


# instance fields
.field private final field_1_error_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->DIV_ZERO:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->VALUE_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NAME_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NUM_ERROR:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->N_A:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->isValidCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->field_1_error_code:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid error code ("

    const-string v1, ")"

    invoke-static {v0, p1, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ErrPtg;
    .locals 0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;
    .locals 3

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg$1;->$SwitchMap$org$apache$poi$ss$usermodel$FormulaError:[I

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected error code ("

    const-string v2, ")"

    invoke-static {v1, p0, v2}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->VALUE_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NUM_ERROR:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->NAME_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->N_A:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->DIV_ZERO:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/ErrPtg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->field_1_error_code:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/h;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/formula/ptg/h;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V

    const-string p0, "errorCode"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->field_1_error_code:I

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget p0, p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->field_1_error_code:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method
