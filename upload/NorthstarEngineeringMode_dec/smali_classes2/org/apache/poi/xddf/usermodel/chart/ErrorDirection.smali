.class public final enum Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

.field public static final enum X:Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

.field public static final enum Y:Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;",
            "Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir;->X:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;

    const-string v2, "X"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->X:Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    const/4 v2, 0x1

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir;->Y:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;

    const-string v5, "Y"

    invoke-direct {v1, v5, v2, v4}, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->Y:Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    filled-new-array {v0, v1}, [Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->$VALUES:[Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->values()[Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->reverse:Ljava/util/HashMap;

    iget-object v5, v2, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/chart/STErrDir$Enum;)Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->$VALUES:[Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/chart/ErrorDirection;

    return-object v0
.end method
