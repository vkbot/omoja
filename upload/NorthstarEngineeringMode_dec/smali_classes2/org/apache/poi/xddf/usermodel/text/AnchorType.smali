.class public final enum Lorg/apache/poi/xddf/usermodel/text/AnchorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/text/AnchorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/text/AnchorType;

.field public static final enum BOTTOM:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

.field public static final enum CENTER:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

.field public static final enum DISTRIBUTED:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

.field public static final enum JUSTIFIED:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

.field public static final enum TOP:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;",
            "Lorg/apache/poi/xddf/usermodel/text/AnchorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;->B:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    const-string v2, "BOTTOM"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/xddf/usermodel/text/AnchorType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->BOTTOM:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    const/4 v2, 0x1

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    const-string v5, "CENTER"

    invoke-direct {v1, v5, v2, v4}, Lorg/apache/poi/xddf/usermodel/text/AnchorType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->CENTER:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    const/4 v4, 0x2

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;->DIST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    const-string v6, "DISTRIBUTED"

    invoke-direct {v2, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/text/AnchorType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->DISTRIBUTED:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    const/4 v5, 0x3

    sget-object v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;->JUST:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    const-string v7, "JUSTIFIED"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/xddf/usermodel/text/AnchorType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->JUSTIFIED:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    const/4 v6, 0x4

    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;->T:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    const-string v8, "TOP"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/xddf/usermodel/text/AnchorType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    sput-object v5, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->TOP:Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    filled-new-array {v0, v1, v2, v4, v5}, [Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->values()[Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->reverse:Ljava/util/HashMap;

    iget-object v5, v2, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/AnchorType;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)Lorg/apache/poi/xddf/usermodel/text/AnchorType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/text/AnchorType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/AnchorType;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/text/AnchorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/text/AnchorType;

    return-object v0
.end method
