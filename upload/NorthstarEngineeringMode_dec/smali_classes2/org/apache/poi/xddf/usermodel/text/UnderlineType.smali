.class public final enum Lorg/apache/poi/xddf/usermodel/text/UnderlineType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xddf/usermodel/text/UnderlineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DASH:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DASH_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DASH_LONG:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DASH_LONG_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DOTTED:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DOTTED_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DOT_DASH:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DOT_DASH_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DOT_DOT_DASH:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DOT_DOT_DASH_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum DOUBLE:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum NONE:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum SINGLE:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum WAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum WAVY_DOUBLE:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum WAVY_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field public static final enum WORDS:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

.field private static final reverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;",
            "Lorg/apache/poi/xddf/usermodel/text/UnderlineType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v0, v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v3, "DASH"

    const/4 v15, 0x0

    invoke-direct {v1, v3, v15, v2}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v1, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DASH:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v1, v2

    const/4 v3, 0x1

    sget-object v4, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v5, "DASH_HEAVY"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v2, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DASH_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v2, v3

    const/4 v4, 0x2

    sget-object v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH_LONG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v6, "DASH_LONG"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v3, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DASH_LONG:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v3, v4

    const/4 v5, 0x3

    sget-object v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH_LONG_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v7, "DASH_LONG_HEAVY"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v4, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DASH_LONG_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v5, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v4, v5

    const/4 v6, 0x4

    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v8, "DOUBLE"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v5, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DOUBLE:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v6, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v5, v6

    const/4 v7, 0x5

    sget-object v8, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v9, "DOT_DASH"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v6, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DOT_DASH:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v7, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v6, v7

    const/4 v8, 0x6

    sget-object v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v10, "DOT_DASH_HEAVY"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v7, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DOT_DASH_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v8, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v7, v8

    const/4 v9, 0x7

    sget-object v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v11, "DOT_DOT_DASH"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v8, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DOT_DOT_DASH:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v9, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v8, v9

    const/16 v10, 0x8

    sget-object v11, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v12, "DOT_DOT_DASH_HEAVY"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v9, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DOT_DOT_DASH_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v10, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v9, v10

    const/16 v11, 0x9

    sget-object v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOTTED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v13, "DOTTED"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v10, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DOTTED:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v11, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v10, v11

    const/16 v12, 0xa

    sget-object v13, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOTTED_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v14, "DOTTED_HEAVY"

    invoke-direct {v11, v14, v12, v13}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v11, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->DOTTED_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v12, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v11, v12

    const/16 v13, 0xb

    sget-object v14, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v15, "HEAVY"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v12, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v13, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v12, v13

    const/16 v14, 0xc

    sget-object v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-object/from16 v18, v0

    const-string v0, "NONE"

    invoke-direct {v13, v0, v14, v15}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v13, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->NONE:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v13, v0

    const/16 v14, 0xd

    sget-object v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-object/from16 v19, v1

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->SINGLE:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object v14, v0

    const/16 v1, 0xe

    sget-object v15, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-object/from16 v20, v2

    const-string v2, "WAVY"

    invoke-direct {v0, v2, v1, v15}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->WAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    const/16 v21, 0x0

    move-object v15, v0

    const/16 v1, 0xf

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WAVY_DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-object/from16 v22, v3

    const-string v3, "WAVY_DOUBLE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->WAVY_DOUBLE:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WAVY_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v3, "WAVY_HEAVY"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->WAVY_HEAVY:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WORDS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v3, "WORDS"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;-><init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->WORDS:Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    filled-new-array/range {v0 .. v17}, [Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->reverse:Ljava/util/HashMap;

    invoke-static {}, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->values()[Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v21

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    sget-object v3, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->reverse:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->underlying:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xddf/usermodel/text/UnderlineType;
    .locals 1

    const-class v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    return-object p0
.end method

.method public static valueOf(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)Lorg/apache/poi/xddf/usermodel/text/UnderlineType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->reverse:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xddf/usermodel/text/UnderlineType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->$VALUES:[Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    invoke-virtual {v0}, [Lorg/apache/poi/xddf/usermodel/text/UnderlineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xddf/usermodel/text/UnderlineType;

    return-object v0
.end method
