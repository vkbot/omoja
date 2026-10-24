.class public final enum Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

.field public static final enum LINE:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

.field public static final enum LINE_MARKER:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

.field public static final enum MARKER:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

.field public static final enum NONE:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

.field public static final enum SMOOTH:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

.field public static final enum SMOOTH_MARKER:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;",
            "Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->LINE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v2, "LINE"

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6, v1}, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->LINE:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    const/4 v2, 0x1

    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->LINE_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v4, "LINE_MARKER"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->LINE_MARKER:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    const/4 v3, 0x2

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v5, "MARKER"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->MARKER:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    const/4 v4, 0x3

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v7, "NONE"

    invoke-direct {v3, v7, v4, v5}, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)V

    sput-object v3, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->NONE:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    const/4 v5, 0x4

    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->SMOOTH:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v8, "SMOOTH"

    invoke-direct {v4, v8, v5, v7}, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->SMOOTH:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    const/4 v7, 0x5

    sget-object v8, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle;->SMOOTH_MARKER:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    const-string v9, "SMOOTH_MARKER"

    invoke-direct {v5, v9, v7, v8}, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)V

    sput-object v5, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->SMOOTH_MARKER:Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->$VALUES:[Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->values()[Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v2, v0, v6

    sget-object v3, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->reverse:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STScatterStyle$Enum;)Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->$VALUES:[Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/chart/ScatterStyle;

    return-object v0
.end method
