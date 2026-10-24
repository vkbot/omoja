.class public final enum Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum AVERAGE:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum COUNT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum COUNT_NUMS:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum MAX:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum MIN:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum PRODUCT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum STD_DEV:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum STD_DEVP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum SUM:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum VAR:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum VARP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "Average"

    const-string v2, "AVERAGE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->AVERAGE:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v2, "COUNT"

    const/4 v3, 0x2

    const-string v5, "Count"

    invoke-direct {v1, v2, v4, v3, v5}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v4, "COUNT_NUMS"

    const/4 v6, 0x3

    invoke-direct {v2, v4, v3, v6, v5}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT_NUMS:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v3, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v4, "Max"

    const-string v5, "MAX"

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v7, v4}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MAX:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v4, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v5, "Min"

    const-string v6, "MIN"

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8, v5}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MIN:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v5, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v6, "Product"

    const-string v7, "PRODUCT"

    const/4 v9, 0x6

    invoke-direct {v5, v7, v8, v9, v6}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->PRODUCT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v6, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v7, "StdDev"

    const-string v8, "STD_DEV"

    const/4 v10, 0x7

    invoke-direct {v6, v8, v9, v10, v7}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEV:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v7, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v8, "StdDevp"

    const-string v9, "STD_DEVP"

    const/16 v11, 0x8

    invoke-direct {v7, v9, v10, v11, v8}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEVP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v8, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v9, "Sum"

    const-string v10, "SUM"

    const/16 v12, 0x9

    invoke-direct {v8, v10, v11, v12, v9}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->SUM:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v9, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v10, "Var"

    const-string v11, "VAR"

    const/16 v13, 0xa

    invoke-direct {v9, v11, v12, v13, v10}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VAR:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v10, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const/16 v11, 0xb

    const-string v12, "Varp"

    const-string v14, "VARP"

    invoke-direct {v10, v14, v13, v11, v12}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VARP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    filled-new-array/range {v0 .. v10}, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->$VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->value:I

    iput-object p4, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->$VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->value:I

    return p0
.end method
