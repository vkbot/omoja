.class public final enum Lorg/apache/poi/xddf/usermodel/text/FontAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/text/FontAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

.field public static final enum AUTOMATIC:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

.field public static final enum BASELINE:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

.field public static final enum BOTTOM:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

.field public static final enum CENTER:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

.field public static final enum TOP:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;",
            "Lorg/apache/poi/xddf/usermodel/text/FontAlignment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->AUTO:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    const-string v2, "AUTOMATIC"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->AUTOMATIC:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    const/4 v2, 0x1

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->B:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    const-string v5, "BOTTOM"

    invoke-direct {v1, v5, v2, v4}, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->BOTTOM:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    const/4 v4, 0x2

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->BASE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    const-string v6, "BASELINE"

    invoke-direct {v2, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->BASELINE:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    const/4 v5, 0x3

    sget-object v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->CTR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    const-string v7, "CENTER"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->CENTER:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    const/4 v6, 0x4

    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType;->T:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    const-string v8, "TOP"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    sput-object v5, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->TOP:Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    filled-new-array {v0, v1, v2, v4, v5}, [Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->values()[Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->reverse:Ljava/util/HashMap;

    iget-object v5, v2, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/FontAlignment;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)Lorg/apache/poi/xddf/usermodel/text/FontAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/text/FontAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/text/FontAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/text/FontAlignment;

    return-object v0
.end method
