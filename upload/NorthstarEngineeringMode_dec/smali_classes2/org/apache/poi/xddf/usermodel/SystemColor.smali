.class public final enum Lorg/apache/poi/xddf/usermodel/SystemColor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/SystemColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum ACTIVE_BORDER:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum ACTIVE_CAPTION:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum APPLICATION_WORKSPACE:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum BACKGROUND:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum BUTTON_FACE:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum BUTTON_HIGHLIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum BUTTON_SHADOW:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum BUTTON_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum CAPTION_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum GRADIENT_ACTIVE_CAPTION:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum GRADIENT_INACTIVE_CAPTION:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum GRAY_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum HIGHLIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum HIGHLIGHT_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum HOT_LIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum INACTIVE_BORDER:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum INACTIVE_CAPTION:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum INACTIVE_CAPTION_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum INFO_BACKGROUND:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum INFO_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum MENU:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum MENU_BAR:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum MENU_HIGHLIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum MENU_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum SCROLL_BAR:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum WINDOW:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum WINDOW_FRAME:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum WINDOW_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum X_3D_DARK_SHADOW:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field public static final enum X_3D_LIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;",
            "Lorg/apache/poi/xddf/usermodel/SystemColor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v1, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v0, v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->ACTIVE_BORDER:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "ACTIVE_BORDER"

    const/4 v15, 0x0

    invoke-direct {v1, v3, v15, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/SystemColor;->ACTIVE_BORDER:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v1, v2

    const/4 v3, 0x1

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->ACTIVE_CAPTION:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v5, "ACTIVE_CAPTION"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/SystemColor;->ACTIVE_CAPTION:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v2, v3

    const/4 v4, 0x2

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->APP_WORKSPACE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v6, "APPLICATION_WORKSPACE"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v3, Lorg/apache/poi/xddf/usermodel/SystemColor;->APPLICATION_WORKSPACE:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v3, v4

    const/4 v5, 0x3

    sget-object v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->BACKGROUND:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v7, "BACKGROUND"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/SystemColor;->BACKGROUND:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v4, v5

    const/4 v6, 0x4

    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->BTN_FACE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v8, "BUTTON_FACE"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v5, Lorg/apache/poi/xddf/usermodel/SystemColor;->BUTTON_FACE:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v6, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v5, v6

    const/4 v7, 0x5

    sget-object v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->BTN_HIGHLIGHT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v9, "BUTTON_HIGHLIGHT"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v6, Lorg/apache/poi/xddf/usermodel/SystemColor;->BUTTON_HIGHLIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v7, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v6, v7

    const/4 v8, 0x6

    sget-object v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->BTN_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v10, "BUTTON_SHADOW"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v7, Lorg/apache/poi/xddf/usermodel/SystemColor;->BUTTON_SHADOW:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v8, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v7, v8

    const/4 v9, 0x7

    sget-object v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->BTN_TEXT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v11, "BUTTON_TEXT"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v8, Lorg/apache/poi/xddf/usermodel/SystemColor;->BUTTON_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v9, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v8, v9

    const/16 v10, 0x8

    sget-object v11, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->CAPTION_TEXT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v12, "CAPTION_TEXT"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v9, Lorg/apache/poi/xddf/usermodel/SystemColor;->CAPTION_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v10, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v9, v10

    const/16 v11, 0x9

    sget-object v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->GRADIENT_ACTIVE_CAPTION:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v13, "GRADIENT_ACTIVE_CAPTION"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v10, Lorg/apache/poi/xddf/usermodel/SystemColor;->GRADIENT_ACTIVE_CAPTION:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v11, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v10, v11

    const/16 v12, 0xa

    sget-object v13, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->GRADIENT_INACTIVE_CAPTION:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v14, "GRADIENT_INACTIVE_CAPTION"

    invoke-direct {v11, v14, v12, v13}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v11, Lorg/apache/poi/xddf/usermodel/SystemColor;->GRADIENT_INACTIVE_CAPTION:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v12, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v11, v12

    const/16 v13, 0xb

    sget-object v14, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->GRAY_TEXT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v15, "GRAY_TEXT"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v12, Lorg/apache/poi/xddf/usermodel/SystemColor;->GRAY_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v13, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v12, v13

    const/16 v14, 0xc

    sget-object v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->HIGHLIGHT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    move-object/from16 v30, v0

    const-string v0, "HIGHLIGHT"

    invoke-direct {v13, v0, v14, v15}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v13, Lorg/apache/poi/xddf/usermodel/SystemColor;->HIGHLIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v13, v0

    const/16 v14, 0xd

    sget-object v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->HIGHLIGHT_TEXT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    move-object/from16 v31, v1

    const-string v1, "HIGHLIGHT_TEXT"

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->HIGHLIGHT_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object v14, v0

    const/16 v1, 0xe

    sget-object v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->HOT_LIGHT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    move-object/from16 v32, v2

    const-string v2, "HOT_LIGHT"

    invoke-direct {v0, v2, v1, v15}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->HOT_LIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    const/16 v33, 0x0

    move-object v15, v0

    const/16 v1, 0xf

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->INACTIVE_BORDER:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    move-object/from16 v34, v3

    const-string v3, "INACTIVE_BORDER"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->INACTIVE_BORDER:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->INACTIVE_CAPTION:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "INACTIVE_CAPTION"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->INACTIVE_CAPTION:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->INACTIVE_CAPTION_TEXT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "INACTIVE_CAPTION_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->INACTIVE_CAPTION_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->INFO_BK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "INFO_BACKGROUND"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->INFO_BACKGROUND:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->INFO_TEXT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "INFO_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->INFO_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->MENU:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "MENU"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->MENU:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->MENU_BAR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "MENU_BAR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->MENU_BAR:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->MENU_HIGHLIGHT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "MENU_HIGHLIGHT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->MENU_HIGHLIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->MENU_TEXT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "MENU_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->MENU_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->SCROLL_BAR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "SCROLL_BAR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->SCROLL_BAR:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->WINDOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "WINDOW"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->WINDOW:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->WINDOW_FRAME:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "WINDOW_FRAME"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->WINDOW_FRAME:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->WINDOW_TEXT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "WINDOW_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->WINDOW_TEXT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->X_3_D_DK_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "X_3D_DARK_SHADOW"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->X_3D_DARK_SHADOW:Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;->X_3_D_LIGHT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    const-string v3, "X_3D_LIGHT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/SystemColor;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->X_3D_LIGHT:Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    filled-new-array/range {v0 .. v29}, [Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->$VALUES:[Lorg/apache/poi/xddf/usermodel/SystemColor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/SystemColor;->values()[Lorg/apache/poi/xddf/usermodel/SystemColor;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v33

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    sget-object v3, Lorg/apache/poi/xddf/usermodel/SystemColor;->reverse:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/apache/poi/xddf/usermodel/SystemColor;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/SystemColor;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/SystemColor;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)Lorg/apache/poi/xddf/usermodel/SystemColor;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/SystemColor;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/SystemColor;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/SystemColor;->$VALUES:[Lorg/apache/poi/xddf/usermodel/SystemColor;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/SystemColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/SystemColor;

    return-object v0
.end method
