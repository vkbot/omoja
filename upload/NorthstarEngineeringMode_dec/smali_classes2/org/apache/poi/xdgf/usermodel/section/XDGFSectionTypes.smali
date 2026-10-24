.class final enum Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum ACTIONS:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum ACTION_TAG:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum ANNOTATION:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum CHARACTER:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum CONNECTION:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum CONNECTION_ABCD:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum CONTROL:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum FIELD:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum FILL_GRADIENT:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum GEOMETRY:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum HYPERLINK:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum LAYER:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum LINE_GRADIENT:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PARAGRAPH:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum PROPERTY:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum REVIEWER:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum SCRATCH:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum TABS:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

.field public static final enum USER:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;


# instance fields
.field private final constructor:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "La3/n;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFSheet;",
            "+",
            "Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;",
            ">;"
        }
    .end annotation
.end field

.field private final sectionType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v0, v1

    new-instance v2, Lorg/apache/poi/ddf/a0;

    const/4 v15, 0x2

    invoke-direct {v2, v15}, Lorg/apache/poi/ddf/a0;-><init>(I)V

    const-string v3, "LINE_GRADIENT"

    const/4 v14, 0x0

    const-string v4, "LineGradient"

    invoke-direct {v1, v3, v14, v4, v2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->LINE_GRADIENT:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v2, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v1, v2

    new-instance v3, Lorg/apache/poi/xdgf/usermodel/section/c;

    const/4 v13, 0x3

    invoke-direct {v3, v13}, Lorg/apache/poi/xdgf/usermodel/section/c;-><init>(I)V

    const-string v4, "FILL_GRADIENT"

    const/4 v12, 0x1

    const-string v5, "FillGradient"

    invoke-direct {v2, v4, v12, v5, v3}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v2, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->FILL_GRADIENT:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v3, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v2, v3

    new-instance v4, Lorg/apache/poi/ddf/a0;

    const/4 v7, 0x6

    invoke-direct {v4, v7}, Lorg/apache/poi/ddf/a0;-><init>(I)V

    const-string v5, "CHARACTER"

    const-string v6, "Character"

    invoke-direct {v3, v5, v15, v6, v4}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v3, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->CHARACTER:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v4, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v3, v4

    new-instance v5, Lorg/apache/poi/xdgf/usermodel/section/b;

    invoke-direct {v5, v13}, Lorg/apache/poi/xdgf/usermodel/section/b;-><init>(I)V

    const-string v6, "PARAGRAPH"

    const-string v8, "Paragraph"

    invoke-direct {v4, v6, v13, v8, v5}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v4, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->PARAGRAPH:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v5, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v4, v5

    new-instance v6, Lorg/apache/poi/xdgf/usermodel/section/c;

    const/4 v11, 0x4

    invoke-direct {v6, v11}, Lorg/apache/poi/xdgf/usermodel/section/c;-><init>(I)V

    const-string v8, "TABS"

    const-string v9, "Tabs"

    invoke-direct {v5, v8, v11, v9, v6}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v5, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->TABS:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v6, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v5, v6

    new-instance v8, Lorg/apache/poi/ddf/a0;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Lorg/apache/poi/ddf/a0;-><init>(I)V

    const-string v10, "SCRATCH"

    const/4 v13, 0x5

    const-string v12, "Scratch"

    invoke-direct {v6, v10, v13, v12, v8}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v6, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->SCRATCH:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v8, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v6, v8

    new-instance v10, Lorg/apache/poi/xdgf/usermodel/section/b;

    invoke-direct {v10, v11}, Lorg/apache/poi/xdgf/usermodel/section/b;-><init>(I)V

    const-string v12, "CONNECTION"

    const-string v11, "Connection"

    invoke-direct {v8, v12, v7, v11, v10}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v8, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->CONNECTION:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v8, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v7, v8

    new-instance v10, Lorg/apache/poi/xdgf/usermodel/section/c;

    invoke-direct {v10, v13}, Lorg/apache/poi/xdgf/usermodel/section/c;-><init>(I)V

    const-string v11, "CONNECTION_ABCD"

    const-string v12, "ConnectionABCD"

    invoke-direct {v8, v11, v9, v12, v10}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v8, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->CONNECTION_ABCD:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v9, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v8, v9

    new-instance v10, Lorg/apache/poi/ddf/a0;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Lorg/apache/poi/ddf/a0;-><init>(I)V

    const-string v12, "FIELD"

    const-string v15, "Field"

    invoke-direct {v9, v12, v11, v15, v10}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v9, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->FIELD:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v10, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v9, v10

    new-instance v11, Lorg/apache/poi/xdgf/usermodel/section/b;

    invoke-direct {v11, v13}, Lorg/apache/poi/xdgf/usermodel/section/b;-><init>(I)V

    const-string v12, "CONTROL"

    const/16 v15, 0x9

    const-string v13, "Control"

    invoke-direct {v10, v12, v15, v13, v11}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v10, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->CONTROL:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v11, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object v10, v11

    new-instance v12, Lorg/apache/poi/xdgf/usermodel/section/b;

    invoke-direct {v12, v14}, Lorg/apache/poi/xdgf/usermodel/section/b;-><init>(I)V

    const-string v13, "GEOMETRY"

    const/16 v15, 0xa

    const-string v14, "Geometry"

    invoke-direct {v11, v13, v15, v14, v12}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v11, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->GEOMETRY:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v12, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    const/4 v15, 0x4

    move-object v11, v12

    new-instance v13, Lorg/apache/poi/xdgf/usermodel/section/c;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lorg/apache/poi/xdgf/usermodel/section/c;-><init>(I)V

    const-string v14, "ACTIONS"

    const/16 v15, 0xb

    move-object/from16 v19, v0

    const-string v0, "Actions"

    invoke-direct {v12, v14, v15, v0, v13}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v12, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->ACTIONS:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    const/4 v15, 0x1

    move-object v12, v0

    new-instance v13, Lorg/apache/poi/ddf/a0;

    const/4 v14, 0x3

    invoke-direct {v13, v14}, Lorg/apache/poi/ddf/a0;-><init>(I)V

    const-string v14, "LAYER"

    const/16 v15, 0xc

    move-object/from16 v20, v1

    const-string v1, "Layer"

    invoke-direct {v0, v14, v15, v1, v13}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->LAYER:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    const/4 v1, 0x5

    move-object v13, v0

    new-instance v14, Lorg/apache/poi/xdgf/usermodel/section/b;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lorg/apache/poi/xdgf/usermodel/section/b;-><init>(I)V

    const-string v1, "USER"

    const/16 v15, 0xd

    move-object/from16 v21, v2

    const-string v2, "User"

    invoke-direct {v0, v1, v15, v2, v14}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->USER:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    const/4 v1, 0x0

    move-object v14, v0

    new-instance v2, Lorg/apache/poi/xdgf/usermodel/section/c;

    const/4 v15, 0x1

    invoke-direct {v2, v15}, Lorg/apache/poi/xdgf/usermodel/section/c;-><init>(I)V

    const-string v15, "PROPERTY"

    const/16 v1, 0xe

    move-object/from16 v22, v3

    const-string v3, "Property"

    invoke-direct {v0, v15, v1, v3, v2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->PROPERTY:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v15, v0

    new-instance v3, Lorg/apache/poi/ddf/a0;

    invoke-direct {v3, v2}, Lorg/apache/poi/ddf/a0;-><init>(I)V

    const-string v2, "HYPERLINK"

    const/16 v1, 0xf

    move-object/from16 v23, v4

    const-string v4, "Hyperlink"

    invoke-direct {v0, v2, v1, v4, v3}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->HYPERLINK:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object/from16 v16, v0

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/b;-><init>(I)V

    const-string v3, "REVIEWER"

    const/16 v4, 0x10

    const-string v2, "Reviewer"

    invoke-direct {v0, v3, v4, v2, v1}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->REVIEWER:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object/from16 v17, v0

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/c;-><init>(I)V

    const-string v2, "ANNOTATION"

    const/16 v3, 0x11

    const-string v4, "Annotation"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->ANNOTATION:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object/from16 v18, v0

    new-instance v1, Lorg/apache/poi/ddf/a0;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/a0;-><init>(I)V

    const-string v2, "ACTION_TAG"

    const/16 v3, 0x12

    const-string v4, "ActionTag"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->ACTION_TAG:Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    filled-new-array/range {v0 .. v18}, [Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->$VALUES:[Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    invoke-static {}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->values()[Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/d;-><init>(I)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->LOOKUP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "La3/n;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFSheet;",
            "+",
            "Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->sectionType:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->constructor:Ljava/util/function/BiFunction;

    return-void
.end method

.method public static load(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    .locals 3

    invoke-interface {p0}, La3/n;->getN()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->LOOKUP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->constructor:Ljava/util/function/BiFunction;

    invoke-interface {v0, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' name \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;
    .locals 1

    const-class v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;
    .locals 1

    sget-object v0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->$VALUES:[Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    invoke-virtual {v0}, [Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;

    return-object v0
.end method


# virtual methods
.method public getSectionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->sectionType:Ljava/lang/String;

    return-object p0
.end method
