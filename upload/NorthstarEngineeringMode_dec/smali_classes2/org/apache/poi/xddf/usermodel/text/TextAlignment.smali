.class public final enum Lorg/apache/poi/xddf/usermodel/text/TextAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/text/TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

.field public static final enum CENTER:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

.field public static final enum DISTRIBUTED:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

.field public static final enum JUSTIFIED:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

.field public static final enum JUSTIFIED_LOW:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

.field public static final enum LEFT:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

.field public static final enum RIGHT:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

.field public static final enum THAI_DISTRIBUTED:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;",
            "Lorg/apache/poi/xddf/usermodel/text/TextAlignment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v2, "CENTER"

    const/4 v7, 0x0

    invoke-direct {v0, v2, v7, v1}, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->CENTER:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    const/4 v2, 0x1

    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->DIST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v4, "DISTRIBUTED"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->DISTRIBUTED:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    const/4 v3, 0x2

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->JUST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v5, "JUSTIFIED"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->JUSTIFIED:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    const/4 v4, 0x3

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->JUST_LOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v6, "JUSTIFIED_LOW"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    sput-object v3, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->JUSTIFIED_LOW:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    const/4 v5, 0x4

    sget-object v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->L:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v8, "LEFT"

    invoke-direct {v4, v8, v5, v6}, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->LEFT:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    const/4 v6, 0x5

    sget-object v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->R:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v9, "RIGHT"

    invoke-direct {v5, v9, v6, v8}, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    sput-object v5, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->RIGHT:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    new-instance v6, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    const/4 v8, 0x6

    sget-object v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->THAI_DIST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    const-string v10, "THAI_DISTRIBUTED"

    invoke-direct {v6, v10, v8, v9}, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    sput-object v6, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->THAI_DISTRIBUTED:Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    filled-new-array/range {v0 .. v6}, [Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->values()[Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v7, v1, :cond_0

    aget-object v2, v0, v7

    sget-object v3, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->reverse:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/TextAlignment;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)Lorg/apache/poi/xddf/usermodel/text/TextAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/text/TextAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/text/TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/text/TextAlignment;

    return-object v0
.end method
