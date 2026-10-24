.class public final enum Lorg/apache/poi/xddf/usermodel/text/TabAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/text/TabAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

.field public static final enum CENTER:Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

.field public static final enum DECIMAL:Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

.field public static final enum LEFT:Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

.field public static final enum RIGHT:Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;",
            "Lorg/apache/poi/xddf/usermodel/text/TabAlignment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    const-string v2, "CENTER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->CENTER:Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    const/4 v2, 0x1

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType;->DEC:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    const-string v5, "DECIMAL"

    invoke-direct {v1, v5, v2, v4}, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->DECIMAL:Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    const/4 v4, 0x2

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType;->L:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    const-string v6, "LEFT"

    invoke-direct {v2, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->LEFT:Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    const/4 v5, 0x3

    sget-object v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType;->R:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    const-string v7, "RIGHT"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->RIGHT:Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    filled-new-array {v0, v1, v2, v4}, [Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->values()[Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->reverse:Ljava/util/HashMap;

    iget-object v5, v2, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/TabAlignment;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTabAlignType$Enum;)Lorg/apache/poi/xddf/usermodel/text/TabAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/text/TabAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/text/TabAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/text/TabAlignment;

    return-object v0
.end method
