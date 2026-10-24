.class public final enum Lorg/apache/poi/ss/usermodel/ConditionFilterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/ConditionFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum ABOVE_AVERAGE:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum BEGINS_WITH:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum CONTAINS_BLANKS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum CONTAINS_ERRORS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum CONTAINS_TEXT:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum DUPLICATE_VALUES:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum ENDS_WITH:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum FILTER:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum NOT_CONTAINS_BLANKS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum NOT_CONTAINS_ERRORS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum NOT_CONTAINS_TEXT:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum TIME_PERIOD:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum TOP_10:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

.field public static final enum UNIQUE_VALUES:Lorg/apache/poi/ss/usermodel/ConditionFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v1, "FILTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v1, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v2, "TOP_10"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->TOP_10:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v3, "UNIQUE_VALUES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->UNIQUE_VALUES:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v3, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v4, "DUPLICATE_VALUES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->DUPLICATE_VALUES:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v4, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v5, "CONTAINS_TEXT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->CONTAINS_TEXT:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v5, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v6, "NOT_CONTAINS_TEXT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->NOT_CONTAINS_TEXT:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v6, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v7, "BEGINS_WITH"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->BEGINS_WITH:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v7, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v8, "ENDS_WITH"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->ENDS_WITH:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v8, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v9, "CONTAINS_BLANKS"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->CONTAINS_BLANKS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v9, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v10, "NOT_CONTAINS_BLANKS"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->NOT_CONTAINS_BLANKS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v10, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v11, "CONTAINS_ERRORS"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->CONTAINS_ERRORS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v11, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v12, "NOT_CONTAINS_ERRORS"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->NOT_CONTAINS_ERRORS:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v12, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v13, "TIME_PERIOD"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->TIME_PERIOD:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    new-instance v13, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    const-string v14, "ABOVE_AVERAGE"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lorg/apache/poi/ss/usermodel/ConditionFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->ABOVE_AVERAGE:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    filled-new-array/range {v0 .. v13}, [Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->$VALUES:[Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionFilterType;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/ConditionFilterType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->$VALUES:[Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/ConditionFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    return-object v0
.end method
