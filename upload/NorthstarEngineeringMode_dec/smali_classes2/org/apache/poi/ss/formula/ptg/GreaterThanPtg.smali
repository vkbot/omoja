.class public final Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;
.super Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;
.source "SourceFile"


# static fields
.field private static final GREATERTHAN:Ljava/lang/String; = ">"

.field public static final instance:Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;

.field public static final sid:B = 0xdt


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->copy()Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->copy()Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfOperands()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
