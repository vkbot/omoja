.class public Lorg/apache/poi/xwpf/usermodel/XWPFTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/IBodyElement;
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;,
        Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_PERCENTAGE_WIDTH:Ljava/lang/String; = "100%"

.field public static final REGEX_PERCENTAGE:Ljava/lang/String; = "[0-9]+(\\.[0-9]+)?%"

.field public static final REGEX_WIDTH_VALUE:Ljava/lang/String; = "auto|[0-9]+|[0-9]+(\\.[0-9]+)?%"

.field private static final stBorderTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;",
            ">;"
        }
    .end annotation
.end field

.field private static final xwpfBorderTypeMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

.field protected part:Lorg/apache/poi/xwpf/usermodel/IBody;

.field protected final tableRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;",
            ">;"
        }
    .end annotation
.end field

.field protected text:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->NIL:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->NONE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->SINGLE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->SINGLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THICK:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v5, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THICK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DOUBLE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v6, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->DOUBLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DOTTED:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v7, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->DOTTED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DASHED:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v8, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->DASHED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DOT_DASH:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v9, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DOT_DOT_DASH:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v10, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->DOT_DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v9, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->TRIPLE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v11, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->TRIPLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v10, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THIN_THICK_SMALL_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v12, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THIN_THICK_SMALL_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v11, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THICK_THIN_SMALL_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v13, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THICK_THIN_SMALL_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v12, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THIN_THICK_THIN_SMALL_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THIN_THICK_THIN_SMALL_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THIN_THICK_MEDIUM_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    sget-object v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THIN_THICK_MEDIUM_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v14, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THICK_THIN_MEDIUM_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v16, v14

    sget-object v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THICK_THIN_MEDIUM_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v15, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THIN_THICK_THIN_MEDIUM_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v17, v15

    sget-object v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THIN_THICK_THIN_MEDIUM_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v14, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THIN_THICK_LARGE_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v18, v14

    sget-object v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THIN_THICK_LARGE_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v15, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THICK_THIN_LARGE_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v19, v15

    sget-object v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THICK_THIN_LARGE_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v14, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THIN_THICK_THIN_LARGE_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v20, v14

    sget-object v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THIN_THICK_THIN_LARGE_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v15, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->WAVE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v21, v15

    sget-object v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->WAVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v14, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DOUBLE_WAVE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v22, v14

    sget-object v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->DOUBLE_WAVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v15, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DASH_SMALL_GAP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v23, v15

    sget-object v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->DASH_SMALL_GAP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v14, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->DASH_DOT_STROKED:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v24, v14

    sget-object v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->DASH_DOT_STROKED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v15, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THREE_D_EMBOSS:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v25, v15

    sget-object v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THREE_D_EMBOSS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v14, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->THREE_D_ENGRAVE:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v26, v14

    sget-object v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->THREE_D_ENGRAVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v15, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->OUTSET:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v27, v15

    sget-object v15, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->OUTSET:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v14, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;->INSET:Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-object/from16 v28, v14

    sget-object v14, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->INSET:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-virtual {v0, v15, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, p3, :cond_3

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->createRow()Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v0

    :goto_1
    move v1, p1

    :goto_2
    if-ge v1, p4, :cond_2

    .line 3
    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCell(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->createCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;Z)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->text:Ljava/lang/StringBuilder;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz p3, :cond_0

    .line 9
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result p3

    if-nez p3, :cond_0

    .line 10
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->createEmptyTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)V

    .line 11
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTrList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-direct {v1, p3, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {p3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->getTcList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    .line 16
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->getPList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    .line 17
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v3, v2, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/16 v2, 0x9

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_1

    iget-object p3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->text:Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->text:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 23
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    return-void
.end method

.method private addColumn(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;I)V
    .locals 0

    if-lez p2, :cond_0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->createCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cleanupTblBorders()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideH()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetInsideV()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetTop()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetBottom()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetLeft()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetRight()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->unsetTblBorders()V

    :cond_0
    return-void
.end method

.method private createEmptyTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)V
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->addNewTc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder;->SINGLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewInsideH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewInsideV()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    return-void
.end method

.method private getBorderColor(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblBorder(ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->isSetColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->xgetColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;->getStringValue()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getBorderSize(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblBorder(ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->isSetSz()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getSz()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method private getBorderSpace(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblBorder(ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->isSetSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getSpace()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method private getBorderType(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblBorder(ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->stBorderTypeMap:Ljava/util/HashMap;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getCellMargin(Ljava/util/function/Function;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTblBorder(ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 4

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance p2, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v1, 0x11

    invoke-direct {p2, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/e;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    goto :goto_0

    :pswitch_1
    new-instance p2, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v1, 0x10

    invoke-direct {p2, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/e;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance p2, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v1, 0x1b

    invoke-direct {p2, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/e;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    goto :goto_0

    :pswitch_3
    new-instance p2, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v1, 0x1a

    invoke-direct {p2, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    goto :goto_0

    :pswitch_4
    new-instance p2, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v1, 0x19

    invoke-direct {p2, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/e;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    goto :goto_0

    :pswitch_5
    new-instance p2, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v1, 0xf

    invoke-direct {p2, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/e;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblBorders(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    :cond_2
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTblBorders(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    return-object p0
.end method

.method private getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getWidthDecimal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D
    .locals 4

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->DXA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->NIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->PCT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    if-ne v0, v1, :cond_2

    .line 5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    div-double v2, v0, v2

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    add-double/2addr v2, v0

    :cond_2
    :goto_1
    return-wide v2
.end method

.method public static getWidthType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)Lorg/apache/poi/xwpf/usermodel/TableWidthType;
    .locals 1

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->NIL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    .line 4
    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Li5/h0;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    .line 6
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->AUTO:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->DXA:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->PCT:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    return-object p0

    .line 9
    :cond_3
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->NIL:Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    return-object p0
.end method

.method private removeBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)V
    .locals 4

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFTable$Border:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance p1, Lorg/apache/poi/xwpf/usermodel/e;

    invoke-direct {p1, v3}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v0, Lg1/j;

    invoke-direct {v0, v2}, Lg1/j;-><init>(I)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lorg/apache/poi/xwpf/usermodel/e;

    invoke-direct {p1, v2}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v0, Lg1/j;

    invoke-direct {v0, v1}, Lg1/j;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v0, 0x15

    invoke-direct {p1, v0}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    new-instance v0, Lw0/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lw0/b;-><init>(I)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v1, 0xe

    invoke-direct {p1, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v1, Lx1/b;

    invoke-direct {v1, v0}, Lx1/b;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :pswitch_4
    new-instance p1, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v0, Lw0/b;

    invoke-direct {v0, v1}, Lw0/b;-><init>(I)V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lorg/apache/poi/xwpf/usermodel/e;

    invoke-direct {p1, v0}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v0, Lg1/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg1/j;-><init>(I)V

    :goto_0
    invoke-direct {p0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblBorders(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->cleanupTblBorders()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblBorder(ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->xwpfBorderTypeMap:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBorder$Enum;)V

    int-to-long p1, p3

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setSz(Ljava/math/BigInteger;)V

    int-to-long p1, p4

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setSpace(Ljava/math/BigInteger;)V

    invoke-interface {p0, p5}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->setColor(Ljava/lang/Object;)V

    return-void
.end method

.method private setCellMargin(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Consumer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;",
            ">;I)V"
        }
    .end annotation

    if-nez p6, :cond_0

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p4

    :goto_0
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->DXA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    int-to-long p1, p6

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setWidthPercentage(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->PCT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    const-string v0, "[0-9]+(\\.[0-9]+)?%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "[0-9]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setWidthPercentage(): Width value must be a percentage (\"33.3%\" or an integer, was \""

    const-string v1, "\""

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setWidthType(Lorg/apache/poi/xwpf/usermodel/TableWidthType;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getWidthType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/TableWidthType;->getStWidthType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    move-result-object p0

    .line 5
    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    .line 6
    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "100%"

    .line 7
    invoke-static {p1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setWidthPercentage(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setWidthValue(Ljava/lang/String;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
    .locals 2

    const-string v0, "auto|[0-9]+|[0-9]+(\\.[0-9]+)?%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "[0-9]+(\\.[0-9]+)?%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setWidthPercentage(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/lang/Object;)V

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->DXA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    invoke-interface {p1, p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Table width value \""

    const-string v1, "\" must match regular expression \"auto|[0-9]+|[0-9]+(\\.[0-9]+)?%\"."

    invoke-static {v0, p0, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addNewCol()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->createRow()Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->createCell()Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addRow(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getNumberOfRows()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->setTrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRow(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;I)Z
    .locals 2

    if-ltz p2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 5
    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->insertNewTr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->setTrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    .line 7
    invoke-interface {p0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public createRow()Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->sizeOfTcArray()I

    move-result v1

    :cond_0
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->addColumn(Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;I)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getBody()Lorg/apache/poi/xwpf/usermodel/IBody;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    return-object p0
.end method

.method public getBottomBorderColor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderColor(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBottomBorderSize()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSize(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getBottomBorderSpace()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSpace(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getBottomBorderType()Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderType(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-result-object p0

    return-object p0
.end method

.method public getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    return-object p0
.end method

.method public getCellMarginBottom()I
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCellMargin(Ljava/util/function/Function;)I

    move-result p0

    return p0
.end method

.method public getCellMarginLeft()I
    .locals 2

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCellMargin(Ljava/util/function/Function;)I

    move-result p0

    return p0
.end method

.method public getCellMarginRight()I
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCellMargin(Ljava/util/function/Function;)I

    move-result p0

    return p0
.end method

.method public getCellMarginTop()I
    .locals 2

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCellMargin(Ljava/util/function/Function;)I

    move-result p0

    return p0
.end method

.method public getColBandSize()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblStyleColBandSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyleColBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;
    .locals 0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->TABLE:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    return-object p0
.end method

.method public getInsideHBorderColor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_H:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderColor(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInsideHBorderSize()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_H:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSize(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getInsideHBorderSpace()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_H:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSpace(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getInsideHBorderType()Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_H:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderType(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-result-object p0

    return-object p0
.end method

.method public getInsideVBorderColor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_V:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderColor(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInsideVBorderSize()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_V:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSize(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getInsideVBorderSpace()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_V:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSpace(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getInsideVBorderType()Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_V:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderType(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-result-object p0

    return-object p0
.end method

.method public getLeftBorderColor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->LEFT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderColor(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLeftBorderSize()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->LEFT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSize(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getLeftBorderSpace()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->LEFT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSpace(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getLeftBorderType()Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->LEFT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderType(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfRows()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result p0

    return p0
.end method

.method public getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->part:Lorg/apache/poi/xwpf/usermodel/IBody;

    invoke-interface {p0}, Lorg/apache/poi/xwpf/usermodel/IBody;->getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;

    move-result-object p0

    return-object p0
.end method

.method public getRightBorderColor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->RIGHT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderColor(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRightBorderSize()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->RIGHT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSize(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getRightBorderSpace()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->RIGHT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSpace(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getRightBorderType()Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->RIGHT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderType(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-result-object p0

    return-object p0
.end method

.method public getRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    .line 1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 2

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRowBandSize()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblStyleRowBandSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyleRowBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->getVal()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRows()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStyleID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->getVal()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTableAlignment()Lorg/apache/poi/xwpf/usermodel/TableRowAlign;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetJc()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJcTable$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/TableRowAlign;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/TableRowAlign;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->text:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTopBorderColor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderColor(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTopBorderSize()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSize(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getTopBorderSpace()I
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderSpace(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)I

    move-result p0

    return p0
.end method

.method public getTopBorderType()Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getBorderType(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getWidthDecimal()D
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getWidthDecimal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWidthType()Lorg/apache/poi/xwpf/usermodel/TableWidthType;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getWidthType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)Lorg/apache/poi/xwpf/usermodel/TableWidthType;

    move-result-object p0

    return-object p0
.end method

.method public insertNewTableRow(I)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->insertNewTr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {p0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeBorders()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->unsetTblBorders()V

    :cond_0
    return-void
.end method

.method public removeBottomBorder()V
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->removeBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)V

    return-void
.end method

.method public removeInsideHBorder()V
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_H:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->removeBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)V

    return-void
.end method

.method public removeInsideVBorder()V
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_V:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->removeBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)V

    return-void
.end method

.method public removeLeftBorder()V
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->LEFT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->removeBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)V

    return-void
.end method

.method public removeRightBorder()V
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->RIGHT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->removeBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)V

    return-void
.end method

.method public removeRow(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->sizeOfTrArray()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->ctTbl:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->removeTr(I)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->tableRows:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public removeTableAlignment()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetJc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->unsetJc()V

    :cond_0
    return-void
.end method

.method public removeTopBorder()V
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->removeBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)V

    return-void
.end method

.method public setBottomBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V
    .locals 6

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->BOTTOM:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V

    return-void
.end method

.method public setCellMargins(IIII)V
    .locals 8

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblCellMar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object v0

    :goto_0
    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 v1, 0x15

    invoke-direct {v3, v1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 v1, 0xb

    invoke-direct {v4, v1}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v5, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v1, 0x1d

    invoke-direct {v5, v1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    new-instance v6, Lw0/b;

    const/4 v1, 0x7

    invoke-direct {v6, v1}, Lw0/b;-><init>(I)V

    move-object v1, p0

    move-object v2, v0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setCellMargin(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Consumer;I)V

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 p1, 0xc

    invoke-direct {v3, p1}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/f;

    const/4 p1, 0x0

    invoke-direct {v4, p1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    new-instance v5, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 p1, 0x17

    invoke-direct {v5, p1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v6, Lx1/b;

    const/4 p1, 0x2

    invoke-direct {v6, p1}, Lx1/b;-><init>(I)V

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setCellMargin(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Consumer;I)V

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/f;

    const/4 p1, 0x1

    invoke-direct {v3, p1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    new-instance v4, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 p1, 0x18

    invoke-direct {v4, p1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v5, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 p1, 0x9

    invoke-direct {v5, p1}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v6, Lg1/j;

    const/4 p1, 0x5

    invoke-direct {v6, p1}, Lg1/j;-><init>(I)V

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setCellMargin(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Consumer;I)V

    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/k;

    const/16 p1, 0x16

    invoke-direct {v3, p1}, Lorg/apache/poi/xddf/usermodel/text/k;-><init>(I)V

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/e;

    const/16 p1, 0xa

    invoke-direct {v4, p1}, Lorg/apache/poi/xwpf/usermodel/e;-><init>(I)V

    new-instance v5, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 p1, 0x1c

    invoke-direct {v5, p1}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    new-instance v6, Lw0/b;

    const/4 p1, 0x6

    invoke-direct {v6, p1}, Lw0/b;-><init>(I)V

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setCellMargin(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public setColBandSize(I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblStyleColBandSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyleColBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblStyleColBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    :goto_0
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setInsideHBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V
    .locals 6

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_H:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V

    return-void
.end method

.method public setInsideVBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V
    .locals 6

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->INSIDE_V:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V

    return-void
.end method

.method public setLeftBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V
    .locals 6

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->LEFT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V

    return-void
.end method

.method public setRightBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V
    .locals 6

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->RIGHT:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V

    return-void
.end method

.method public setRowBandSize(I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblStyleRowBandSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyleRowBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblStyleRowBandSize()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    :goto_0
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    return-void
.end method

.method public setStyleID(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    return-void
.end method

.method public setTableAlignment(Lorg/apache/poi/xwpf/usermodel/TableRowAlign;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetJc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewJc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/TableRowAlign;->getValue()I

    move-result p1

    invoke-static {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJcTable$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJcTable$Enum;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTJcTable;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STJcTable$Enum;)V

    return-void
.end method

.method public setTopBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V
    .locals 6

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;->TOP:Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;Lorg/apache/poi/xwpf/usermodel/XWPFTable$XWPFBorderType;IILjava/lang/String;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->addNewTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    .line 3
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setW(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;->DXA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setWidthValue(Ljava/lang/String;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V

    return-void
.end method

.method public setWidthType(Lorg/apache/poi/xwpf/usermodel/TableWidthType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->setWidthType(Lorg/apache/poi/xwpf/usermodel/TableWidthType;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V

    return-void
.end method
