.class public final enum Lorg/apache/poi/xddf/usermodel/PresetLineDash;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/PresetLineDash;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum DASH:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum DASH_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum LARGE_DASH:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum LARGE_DASH_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum LARGE_DASH_DOT_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum SOLID:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum SYSTEM_DASH:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum SYSTEM_DASH_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum SYSTEM_DASH_DOT_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field public static final enum SYSTEM_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;",
            "Lorg/apache/poi/xddf/usermodel/PresetLineDash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v2, "DASH"

    const/4 v11, 0x0

    invoke-direct {v0, v2, v11, v1}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->DASH:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/4 v2, 0x1

    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v4, "DASH_DOT"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->DASH_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/4 v3, 0x2

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v5, "DOT"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/4 v4, 0x3

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->LG_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v6, "LARGE_DASH"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v3, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->LARGE_DASH:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/4 v5, 0x4

    sget-object v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->LG_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v7, "LARGE_DASH_DOT"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->LARGE_DASH_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/4 v6, 0x5

    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->LG_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v8, "LARGE_DASH_DOT_DOT"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v5, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->LARGE_DASH_DOT_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v6, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/4 v7, 0x6

    sget-object v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SOLID:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v9, "SOLID"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v6, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->SOLID:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v7, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/4 v8, 0x7

    sget-object v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v10, "SYSTEM_DASH"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v7, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->SYSTEM_DASH:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v8, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/16 v9, 0x8

    sget-object v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v12, "SYSTEM_DASH_DOT"

    invoke-direct {v8, v12, v9, v10}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v8, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->SYSTEM_DASH_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v9, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/16 v10, 0x9

    sget-object v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v13, "SYSTEM_DASH_DOT_DOT"

    invoke-direct {v9, v13, v10, v12}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v9, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->SYSTEM_DASH_DOT_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v10, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    const/16 v12, 0xa

    sget-object v13, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v14, "SYSTEM_DOT"

    invoke-direct {v10, v14, v12, v13}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    sput-object v10, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->SYSTEM_DOT:Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    filled-new-array/range {v0 .. v10}, [Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->$VALUES:[Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->values()[Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v11, v1, :cond_0

    aget-object v2, v0, v11

    sget-object v3, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->reverse:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/PresetLineDash;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)Lorg/apache/poi/xddf/usermodel/PresetLineDash;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/PresetLineDash;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/PresetLineDash;->$VALUES:[Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/PresetLineDash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/PresetLineDash;

    return-object v0
.end method
