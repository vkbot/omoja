.class public final enum Lorg/apache/poi/xddf/usermodel/SchemeColor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/SchemeColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum ACCENT_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum ACCENT_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum ACCENT_3:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum ACCENT_4:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum ACCENT_5:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum ACCENT_6:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum BACKGROUND_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum BACKGROUND_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum DARK_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum DARK_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum FOLLOWED_LINK:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum LIGHT_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum LIGHT_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum LINK:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum PLACEHOLDER:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum TEXT_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field public static final enum TEXT_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;",
            "Lorg/apache/poi/xddf/usermodel/SchemeColor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v1, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v0, v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v3, "ACCENT_1"

    const/4 v15, 0x0

    invoke-direct {v1, v3, v15, v2}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/SchemeColor;->ACCENT_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v1, v2

    const/4 v3, 0x1

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v5, "ACCENT_2"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/SchemeColor;->ACCENT_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v2, v3

    const/4 v4, 0x2

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_3:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v6, "ACCENT_3"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v3, Lorg/apache/poi/xddf/usermodel/SchemeColor;->ACCENT_3:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v3, v4

    const/4 v5, 0x3

    sget-object v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_4:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v7, "ACCENT_4"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/SchemeColor;->ACCENT_4:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v4, v5

    const/4 v6, 0x4

    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_5:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v8, "ACCENT_5"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v5, Lorg/apache/poi/xddf/usermodel/SchemeColor;->ACCENT_5:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v6, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v5, v6

    const/4 v7, 0x5

    sget-object v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->ACCENT_6:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v9, "ACCENT_6"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v6, Lorg/apache/poi/xddf/usermodel/SchemeColor;->ACCENT_6:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v7, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v6, v7

    const/4 v8, 0x6

    sget-object v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->BG_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v10, "BACKGROUND_1"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v7, Lorg/apache/poi/xddf/usermodel/SchemeColor;->BACKGROUND_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v8, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v7, v8

    const/4 v9, 0x7

    sget-object v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->BG_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v11, "BACKGROUND_2"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v8, Lorg/apache/poi/xddf/usermodel/SchemeColor;->BACKGROUND_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v9, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v8, v9

    const/16 v10, 0x8

    sget-object v11, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->DK_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v12, "DARK_1"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v9, Lorg/apache/poi/xddf/usermodel/SchemeColor;->DARK_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v10, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v9, v10

    const/16 v11, 0x9

    sget-object v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->DK_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v13, "DARK_2"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v10, Lorg/apache/poi/xddf/usermodel/SchemeColor;->DARK_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v11, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v10, v11

    const/16 v12, 0xa

    sget-object v13, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->FOL_HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v14, "FOLLOWED_LINK"

    invoke-direct {v11, v14, v12, v13}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v11, Lorg/apache/poi/xddf/usermodel/SchemeColor;->FOLLOWED_LINK:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v12, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v11, v12

    const/16 v13, 0xb

    sget-object v14, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v15, "LINK"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v12, Lorg/apache/poi/xddf/usermodel/SchemeColor;->LINK:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v13, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v12, v13

    const/16 v14, 0xc

    sget-object v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->LT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-object/from16 v17, v0

    const-string v0, "LIGHT_1"

    invoke-direct {v13, v0, v14, v15}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v13, Lorg/apache/poi/xddf/usermodel/SchemeColor;->LIGHT_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v13, v0

    const/16 v14, 0xd

    sget-object v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->LT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-object/from16 v18, v1

    const-string v1, "LIGHT_2"

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;->LIGHT_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object v14, v0

    const/16 v1, 0xe

    sget-object v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->PH_CLR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-object/from16 v19, v2

    const-string v2, "PLACEHOLDER"

    invoke-direct {v0, v2, v1, v15}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;->PLACEHOLDER:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    const/16 v20, 0x0

    move-object v15, v0

    const/16 v1, 0xf

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->TX_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    move-object/from16 v21, v3

    const-string v3, "TEXT_1"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;->TEXT_1:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal;->TX_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    const-string v3, "TEXT_2"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SchemeColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;->TEXT_2:Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    filled-new-array/range {v0 .. v16}, [Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;->$VALUES:[Lorg/apache/poi/xddf/usermodel/SchemeColor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/SchemeColor;->values()[Lorg/apache/poi/xddf/usermodel/SchemeColor;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v20

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    sget-object v3, Lorg/apache/poi/xddf/usermodel/SchemeColor;->reverse:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/apache/poi/xddf/usermodel/SchemeColor;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/SchemeColor;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/SchemeColor;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSchemeColorVal$Enum;)Lorg/apache/poi/xddf/usermodel/SchemeColor;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/SchemeColor;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/SchemeColor;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/SchemeColor;->$VALUES:[Lorg/apache/poi/xddf/usermodel/SchemeColor;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/SchemeColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/SchemeColor;

    return-object v0
.end method
