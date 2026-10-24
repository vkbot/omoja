.class Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/DVConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormulaValuePair"
.end annotation


# instance fields
.field private _formula:Ljava/lang/String;

.field private _value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/hssf/usermodel/DVConstraint$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_value:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_formula:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public formula()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_formula:Ljava/lang/String;

    return-object p0
.end method

.method public string()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_formula:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_value:Ljava/lang/String;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public value()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaValuePair;->_value:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
