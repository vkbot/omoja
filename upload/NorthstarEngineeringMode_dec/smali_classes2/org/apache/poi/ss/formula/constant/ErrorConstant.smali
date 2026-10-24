.class public final Lorg/apache/poi/ss/formula/constant/ErrorConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIV_0:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final LOG:La5/d;

.field private static final NA:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final NAME:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final NULL:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final NUM:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final REF:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

.field private static final VALUE:Lorg/apache/poi/ss/formula/constant/ErrorConstant;


# instance fields
.field private final _errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->LOG:La5/d;

    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NULL:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->DIV_0:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->VALUE:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->REF:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NAME:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NUM:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NA:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;
    .locals 3

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->isValidCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant$1;->$SwitchMap$org$apache$poi$ss$usermodel$FormulaError:[I

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NA:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NUM:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NAME:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->REF:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->VALUE:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->DIV_0:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->NULL:Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    return-object p0

    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-static {p0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Warning - unexpected error code ({})"

    invoke-interface {v0, v1, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;-><init>(I)V

    return-object v0

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
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->isValidCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown error code ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->_errorCode:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
