.class public final Lorg/apache/poi/ss/formula/ptg/PercentPtg;
.super Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;
.source "SourceFile"


# static fields
.field private static final PERCENT:Ljava/lang/String; = "%"

.field public static final SIZE:I = 0x1

.field public static final instance:Lorg/apache/poi/ss/formula/ptg/PercentPtg;

.field public static final sid:B = 0x14t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/PercentPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/PercentPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/PercentPtg;

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
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->copy()Lorg/apache/poi/ss/formula/ptg/PercentPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/PercentPtg;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/PercentPtg;

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->copy()Lorg/apache/poi/ss/formula/ptg/PercentPtg;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfOperands()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v0, "%"

    invoke-static {p0, p1, v0}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
