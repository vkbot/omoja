.class public final Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;
.super Lorg/apache/poi/ss/formula/ptg/ControlPtg;
.source "SourceFile"


# static fields
.field private static final SIZE:I = 0x1

.field public static final instance:Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

.field public static final sid:B = 0x15t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->copy()Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0x15

    return p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "()"

    return-object p0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v0, ")"

    .line 3
    invoke-static {p0, p1, v0}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result p0

    add-int/lit8 p0, p0, 0x15

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method
