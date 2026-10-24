.class public final enum Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

.field public static final enum AUTO_ZERO:Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

.field public static final enum MAX:Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

.field public static final enum MIN:Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;",
            "Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->AUTO_ZERO:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    const-string v2, "AUTO_ZERO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->AUTO_ZERO:Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    const/4 v2, 0x1

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->MAX:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    const-string v5, "MAX"

    invoke-direct {v1, v5, v2, v4}, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->MAX:Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    const/4 v4, 0x2

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses;->MIN:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    const-string v6, "MIN"

    invoke-direct {v2, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->MIN:Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->$VALUES:[Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->values()[Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->reverse:Ljava/util/HashMap;

    iget-object v5, v2, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STCrosses$Enum;)Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->$VALUES:[Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/chart/AxisCrosses;

    return-object v0
.end method
