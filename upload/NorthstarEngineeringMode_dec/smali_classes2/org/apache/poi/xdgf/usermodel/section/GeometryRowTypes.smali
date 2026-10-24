.class final enum Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum ELLIPSE:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum ELLIPTICAL_ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum INFINITE_LINE:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum LINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MOVE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum NURBS_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum POLYLINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_CUB_BEZ_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_ELLIPTICAL_ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_LINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_MOVE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum REL_QUAD_BEZ_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum SPLINE_KNOT:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

.field public static final enum SPLINE_START:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;


# instance fields
.field private final constructor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "La3/m;",
            "+",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;"
        }
    .end annotation
.end field

.field private final rowType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/a;-><init>(I)V

    const-string v3, "ARC_TO"

    const/4 v15, 0x0

    const-string v4, "ArcTo"

    invoke-direct {v0, v3, v15, v4, v1}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v3, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    const-string v5, "ELLIPSE"

    const-string v6, "Ellipse"

    invoke-direct {v1, v5, v2, v6, v3}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->ELLIPSE:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v3, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v5, Lorg/apache/poi/xdgf/usermodel/section/d;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lorg/apache/poi/xdgf/usermodel/section/d;-><init>(I)V

    const-string v7, "ELLIPTICAL_ARC_TO"

    const/4 v8, 0x2

    const-string v9, "EllipticalArcTo"

    invoke-direct {v3, v7, v8, v9, v5}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v3, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->ELLIPTICAL_ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v5, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v7, Lorg/apache/poi/xdgf/usermodel/section/a;

    invoke-direct {v7, v6}, Lorg/apache/poi/xdgf/usermodel/section/a;-><init>(I)V

    const-string v9, "INFINITE_LINE"

    const-string v10, "InfiniteLine"

    invoke-direct {v5, v9, v6, v10, v7}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v5, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->INFINITE_LINE:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v6, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v7, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v9, 0xd

    invoke-direct {v7, v9}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    const-string v10, "LINE_TO"

    const/4 v11, 0x4

    const-string v12, "LineTo"

    invoke-direct {v6, v10, v11, v12, v7}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v6, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->LINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v7, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v10, Lorg/apache/poi/xdgf/usermodel/section/d;

    invoke-direct {v10, v11}, Lorg/apache/poi/xdgf/usermodel/section/d;-><init>(I)V

    const-string v12, "MOVE_TO"

    const/4 v13, 0x5

    const-string v14, "MoveTo"

    invoke-direct {v7, v12, v13, v14, v10}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v7, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->MOVE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v10, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v12, Lorg/apache/poi/xdgf/usermodel/section/a;

    invoke-direct {v12, v11}, Lorg/apache/poi/xdgf/usermodel/section/a;-><init>(I)V

    const-string v11, "NURBS_TO"

    const/4 v14, 0x6

    const-string v15, "NURBSTo"

    invoke-direct {v10, v11, v14, v15, v12}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v10, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->NURBS_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v11, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v12, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v14, 0xe

    invoke-direct {v12, v14}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    const-string v15, "POLYLINE_TO"

    const/4 v14, 0x7

    const-string v9, "PolylineTo"

    invoke-direct {v11, v15, v14, v9, v12}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v11, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->POLYLINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v9, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v12, Lorg/apache/poi/xdgf/usermodel/section/d;

    invoke-direct {v12, v13}, Lorg/apache/poi/xdgf/usermodel/section/d;-><init>(I)V

    const-string v14, "REL_CUB_BEZ_TO"

    const/16 v15, 0x8

    const-string v4, "RelCubBezTo"

    invoke-direct {v9, v14, v15, v4, v12}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v9, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_CUB_BEZ_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v12, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v4, Lorg/apache/poi/xdgf/usermodel/section/a;

    invoke-direct {v4, v13}, Lorg/apache/poi/xdgf/usermodel/section/a;-><init>(I)V

    const-string v13, "REL_ELLIPTICAL_ARC_TO"

    const/16 v14, 0x9

    const-string v15, "RelEllipticalArcTo"

    invoke-direct {v12, v13, v14, v15, v4}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v12, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_ELLIPTICAL_ARC_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v13, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v4, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v14, 0xa

    invoke-direct {v4, v14}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    const-string v15, "REL_LINE_TO"

    const-string v8, "RelLineTo"

    invoke-direct {v13, v15, v14, v8, v4}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v13, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_LINE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v14, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v4, Lorg/apache/poi/xdgf/usermodel/section/d;

    invoke-direct {v4, v2}, Lorg/apache/poi/xdgf/usermodel/section/d;-><init>(I)V

    const-string v2, "REL_MOVE_TO"

    const/16 v8, 0xb

    const-string v15, "RelMoveTo"

    invoke-direct {v14, v2, v8, v15, v4}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v14, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_MOVE_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v15, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v2, Lorg/apache/poi/xdgf/usermodel/section/a;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lorg/apache/poi/xdgf/usermodel/section/a;-><init>(I)V

    const-string v4, "REL_QUAD_BEZ_TO"

    const-string v8, "RelQuadBezTo"

    move-object/from16 v18, v14

    const/16 v14, 0xc

    invoke-direct {v15, v4, v14, v8, v2}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v15, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->REL_QUAD_BEZ_TO:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v14, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v2, Lorg/apache/poi/xddf/usermodel/text/j;

    const/16 v4, 0xb

    invoke-direct {v2, v4}, Lorg/apache/poi/xddf/usermodel/text/j;-><init>(I)V

    const-string v4, "SPLINE_KNOT"

    const-string v8, "SplineKnot"

    move-object/from16 v17, v15

    const/16 v15, 0xd

    invoke-direct {v14, v4, v15, v8, v2}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v14, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->SPLINE_KNOT:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v15, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    new-instance v2, Lorg/apache/poi/xdgf/usermodel/section/d;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lorg/apache/poi/xdgf/usermodel/section/d;-><init>(I)V

    const-string v4, "SPLINE_START"

    const-string v8, "SplineStart"

    move-object/from16 v16, v14

    const/16 v14, 0xe

    invoke-direct {v15, v4, v14, v8, v2}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V

    sput-object v15, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->SPLINE_START:Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    move-object v8, v9

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    move-object v14, v15

    filled-new-array/range {v0 .. v14}, [Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->$VALUES:[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    invoke-static {}, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->values()[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/section/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/xdgf/usermodel/section/a;-><init>(I)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->LOOKUP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "La3/m;",
            "+",
            "Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->rowType:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->constructor:Ljava/util/function/Function;

    return-void
.end method

.method public static load(La3/m;)Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;
    .locals 4

    invoke-interface {p0}, La3/m;->getT()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->LOOKUP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->constructor:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/GeometryRow;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' name \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;
    .locals 1

    const-class v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;
    .locals 1

    sget-object v0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->$VALUES:[Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    invoke-virtual {v0}, [Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;

    return-object v0
.end method


# virtual methods
.method public getRowType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/GeometryRowTypes;->rowType:Ljava/lang/String;

    return-object p0
.end method
