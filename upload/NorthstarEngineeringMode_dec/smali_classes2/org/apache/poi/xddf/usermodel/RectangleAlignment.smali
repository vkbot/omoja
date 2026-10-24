.class public final enum Lorg/apache/poi/xddf/usermodel/RectangleAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/RectangleAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field public static final enum BOTTOM:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field public static final enum BOTTOM_LEFT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field public static final enum BOTTOM_RIGHT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field public static final enum CENTER:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field public static final enum LEFT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field public static final enum RIGHT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field public static final enum TOP:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field public static final enum TOP_LEFT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field public static final enum TOP_RIGHT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;",
            "Lorg/apache/poi/xddf/usermodel/RectangleAlignment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;->B:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    const-string v2, "BOTTOM"

    const/4 v9, 0x0

    invoke-direct {v0, v2, v9, v1}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->BOTTOM:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    const/4 v2, 0x1

    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;->BL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    const-string v4, "BOTTOM_LEFT"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->BOTTOM_LEFT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    const/4 v3, 0x2

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;->BR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    const-string v5, "BOTTOM_RIGHT"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->BOTTOM_RIGHT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    const/4 v4, 0x3

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    const-string v6, "CENTER"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    sput-object v3, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->CENTER:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    const/4 v5, 0x4

    sget-object v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;->L:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    const-string v7, "LEFT"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->LEFT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    const/4 v6, 0x5

    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;->R:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    const-string v8, "RIGHT"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    sput-object v5, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->RIGHT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    new-instance v6, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    const/4 v7, 0x6

    sget-object v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;->T:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    const-string v10, "TOP"

    invoke-direct {v6, v10, v7, v8}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    sput-object v6, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->TOP:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    new-instance v7, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    const/4 v8, 0x7

    sget-object v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;->TL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    const-string v11, "TOP_LEFT"

    invoke-direct {v7, v11, v8, v10}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    sput-object v7, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->TOP_LEFT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    new-instance v8, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    const/16 v10, 0x8

    sget-object v11, Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;->TR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    const-string v12, "TOP_RIGHT"

    invoke-direct {v8, v12, v10, v11}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V

    sput-object v8, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->TOP_RIGHT:Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    filled-new-array/range {v0 .. v8}, [Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->$VALUES:[Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->values()[Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v9, v1, :cond_0

    aget-object v2, v0, v9

    sget-object v3, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->reverse:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/RectangleAlignment;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)Lorg/apache/poi/xddf/usermodel/RectangleAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/RectangleAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->$VALUES:[Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/RectangleAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/RectangleAlignment;

    return-object v0
.end method
