.class public final enum Lorg/apache/poi/xddf/usermodel/text/StrikeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/text/StrikeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/text/StrikeType;

.field public static final enum DOUBLE_STRIKE:Lorg/apache/poi/xddf/usermodel/text/StrikeType;

.field public static final enum NO_STRIKE:Lorg/apache/poi/xddf/usermodel/text/StrikeType;

.field public static final enum SINGLE_STRIKE:Lorg/apache/poi/xddf/usermodel/text/StrikeType;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;",
            "Lorg/apache/poi/xddf/usermodel/text/StrikeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->DBL_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    const-string v2, "DOUBLE_STRIKE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/xddf/usermodel/text/StrikeType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->DOUBLE_STRIKE:Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    const/4 v2, 0x1

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->NO_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    const-string v5, "NO_STRIKE"

    invoke-direct {v1, v5, v2, v4}, Lorg/apache/poi/xddf/usermodel/text/StrikeType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->NO_STRIKE:Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    const/4 v4, 0x2

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType;->SNG_STRIKE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    const-string v6, "SINGLE_STRIKE"

    invoke-direct {v2, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/text/StrikeType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->SINGLE_STRIKE:Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->values()[Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->reverse:Ljava/util/HashMap;

    iget-object v5, v2, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/StrikeType;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)Lorg/apache/poi/xddf/usermodel/text/StrikeType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/text/StrikeType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/StrikeType;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/text/StrikeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/text/StrikeType;

    return-object v0
.end method
