.class Lorg/apache/poi/sl/draw/geom/PresetParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:La5/d;


# instance fields
.field private customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

.field private final geom:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/sl/draw/geom/CustomGeometry;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

.field private path:Lorg/apache/poi/sl/draw/geom/Path;

.field private useAdjustValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/geom/PresetParser;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->geom:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    sget-object v1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->SHAPE:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    if-ne p1, v1, :cond_0

    new-instance p1, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-direct {p1}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    const-string p0, "custom"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->lambda$addXY$1(Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->updatePath(Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->updatePathLst(Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->updateCxnList(Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->updateAhList(Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->updateGuideList(Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic access$500(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->updateShape(Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic access$600(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->updateShapeList(Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic access$700(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->updateFile(Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private addPolar(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addAdjustHandle(Lorg/apache/poi/sl/draw/geom/AdjustHandle;)V

    new-instance v1, Lorg/apache/poi/sl/draw/geom/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/sl/draw/geom/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAttributes(Ljavax/xml/stream/XMLStreamReader;Ljava/util/function/BiConsumer;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePosPoint(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->setPos(Lorg/apache/poi/sl/draw/geom/AdjustPoint;)V

    return-void
.end method

.method private addRectangle(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/sl/draw/geom/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAttributes(Ljavax/xml/stream/XMLStreamReader;Ljava/util/function/BiConsumer;)V

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    aget-object v1, v0, v2

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->setTextBounds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->nextTag(Ljavax/xml/stream/XMLStreamReader;)I

    return-void
.end method

.method private addXY(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addAdjustHandle(Lorg/apache/poi/sl/draw/geom/AdjustHandle;)V

    new-instance v1, Lorg/apache/poi/sl/draw/geom/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/sl/draw/geom/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAttributes(Ljavax/xml/stream/XMLStreamReader;Ljava/util/function/BiConsumer;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePosPoint(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->setPos(Lorg/apache/poi/sl/draw/geom/AdjustPoint;)V

    return-void
.end method

.method private arcTo(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/sl/draw/geom/ArcToCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    new-instance v1, Lorg/apache/poi/sl/draw/geom/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/sl/draw/geom/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAttributes(Ljavax/xml/stream/XMLStreamReader;Ljava/util/function/BiConsumer;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->nextTag(Ljavax/xml/stream/XMLStreamReader;)I

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/sl/draw/geom/AdjustPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->lambda$parseAdjPoint$7(Lorg/apache/poi/sl/draw/geom/AdjustPoint;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->lambda$addPolar$2(Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private closePath(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    new-instance v0, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/ClosePathCommand;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->nextTag(Ljavax/xml/stream/XMLStreamReader;)I

    return-void
.end method

.method private static collapseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/sl/draw/geom/PresetParser;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v2, v0, :cond_3

    return-object p0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x20

    if-eqz v2, :cond_5

    :goto_2
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v1, 0x1

    add-int/2addr v2, v1

    move v5, v1

    :goto_3
    if-ge v2, v0, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/sl/draw/geom/PresetParser;->isWhiteSpace(C)Z

    move-result v7

    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    move v6, v4

    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v7

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_9

    sub-int/2addr p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_9

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cubicBezTo(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/sl/draw/geom/CurveToCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePtPoint(Ljavax/xml/stream/XMLStreamReader;Z)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePtPoint(Ljavax/xml/stream/XMLStreamReader;Z)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePtPoint(Ljavax/xml/stream/XMLStreamReader;Z)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    invoke-virtual {v0, v2}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->setPt1(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->setPt2(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/CurveToCommand;->setPt3(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    return-void
.end method

.method public static synthetic d(Lorg/apache/poi/sl/draw/geom/ArcToCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->lambda$arcTo$5(Lorg/apache/poi/sl/draw/geom/ArcToCommand;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lorg/apache/poi/sl/draw/geom/Guide;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->lambda$updateGuideList$0(Lorg/apache/poi/sl/draw/geom/Guide;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private endContext()V
    .locals 2

    sget-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser$1;->$SwitchMap$org$apache$poi$sl$draw$geom$PresetParser$Mode:[I

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    sget-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->PATH_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->useAdjustValue:Z

    iput-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    sget-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->SHAPE:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->SHAPE_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->FILE:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic f(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->lambda$updatePathLst$4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lorg/apache/poi/sl/draw/geom/ConnectionSite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->lambda$updateCxnList$3(Lorg/apache/poi/sl/draw/geom/ConnectionSite;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->lambda$addRectangle$6([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static isWhiteSpace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$addPolar$2(Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "gdRefAng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "minR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "maxR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "minAng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "maxAng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "gdRefR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->collapseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->setGdRefAng(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->setMinR(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->setMaxR(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->setMinAng(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->setMaxAng(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->collapseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/PolarAdjustHandle;->setGdRefR(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a94db64 -> :sswitch_5
        -0x40714e2a -> :sswitch_4
        -0x40051dd8 -> :sswitch_3
        0x33076e -> :sswitch_2
        0x332440 -> :sswitch_1
        0x7343b84 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$addRectangle$6([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "l"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    aput-object p2, p0, v3

    goto :goto_1

    :pswitch_1
    aput-object p2, p0, v2

    goto :goto_1

    :pswitch_2
    aput-object p2, p0, v4

    goto :goto_1

    :pswitch_3
    aput-object p2, p0, v1

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_3
        0x6c -> :sswitch_2
        0x72 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$addXY$1(Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "minY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "minX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "maxY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "maxX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "gdRefY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "gdRefX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->setMinY(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->setMinX(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->setMaxY(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->setMaxX(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-static {p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->collapseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->setGdRefY(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->collapseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/XYAdjustHandle;->setGdRefX(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a94db5e -> :sswitch_5
        -0x4a94db5d -> :sswitch_4
        0x330774 -> :sswitch_3
        0x330775 -> :sswitch_2
        0x332446 -> :sswitch_1
        0x332447 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$arcTo$5(Lorg/apache/poi/sl/draw/geom/ArcToCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "swAng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "stAng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "wR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "hR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->setSwAng(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->setStAng(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->setWR(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/ArcToCommand;->setHR(Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0xcea -> :sswitch_3
        0xebb -> :sswitch_2
        0x68a4bb9 -> :sswitch_1
        0x68ba8d6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$parseAdjPoint$7(Lorg/apache/poi/sl/draw/geom/AdjustPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setY(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;->setX(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateCxnList$3(Lorg/apache/poi/sl/draw/geom/ConnectionSite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ang"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->setAng(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateGuideList$0(Lorg/apache/poi/sl/draw/geom/Guide;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "fmla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->collapseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/poi/sl/draw/geom/Guide;->setFmla(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updatePathLst$4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "w"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "stroke"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "extrusionOk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {p2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->mapFill(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Path;->setFill(Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/Path;->setW(J)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/sl/draw/geom/Path;->setH(J)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Path;->setStroke(Z)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Path;->setExtrusionOk(Z)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x569e076b -> :sswitch_4
        -0x352a89c8 -> :sswitch_3
        0x68 -> :sswitch_2
        0x77 -> :sswitch_1
        0x2ff583 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lineTo(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/sl/draw/geom/LineToCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/LineToCommand;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePtPoint(Ljavax/xml/stream/XMLStreamReader;Z)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/LineToCommand;->setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    return-void
.end method

.method private static mapFill(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x3

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "lighten"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v5

    goto :goto_1

    :sswitch_1
    const-string v0, "norm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "darken"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "darkenLess"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "lightenLess"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eq p0, v4, :cond_5

    if-eq p0, v5, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NONE:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :cond_5
    sget-object p0, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->NORM:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7783cd88 -> :sswitch_5
        -0x54555b28 -> :sswitch_4
        -0x4fcf0961 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x33afbc -> :sswitch_1
        0xa2a543f -> :sswitch_0
    .end sparse-switch
.end method

.method private moveTo(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/sl/draw/geom/MoveToCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePtPoint(Ljavax/xml/stream/XMLStreamReader;Z)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/MoveToCommand;->setPt(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    return-void
.end method

.method private static nextTag(Ljavax/xml/stream/XMLStreamReader;)I
    .locals 2

    :cond_0
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    :cond_1
    return v0
.end method

.method private parseAdjPoint(Ljavax/xml/stream/XMLStreamReader;ZLjava/lang/String;)Lorg/apache/poi/sl/draw/geom/AdjustPoint;
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->nextTag(Ljavax/xml/stream/XMLStreamReader;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p3, Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    invoke-direct {p3}, Lorg/apache/poi/sl/draw/geom/AdjustPoint;-><init>()V

    new-instance v0, Lorg/apache/poi/sl/draw/geom/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3}, Lorg/apache/poi/sl/draw/geom/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAttributes(Ljavax/xml/stream/XMLStreamReader;Ljava/util/function/BiConsumer;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->nextTag(Ljavax/xml/stream/XMLStreamReader;)I

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->nextTag(Ljavax/xml/stream/XMLStreamReader;)I

    :cond_1
    return-object p3
.end method

.method private parseAttributes(Ljavax/xml/stream/XMLStreamReader;Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/stream/XMLStreamReader;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-interface {p1, p0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parsePosPoint(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/poi/sl/draw/geom/AdjustPoint;
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "pos"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAdjPoint(Ljavax/xml/stream/XMLStreamReader;ZLjava/lang/String;)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    return-object p0
.end method

.method private parsePtPoint(Ljavax/xml/stream/XMLStreamReader;Z)Lorg/apache/poi/sl/draw/geom/AdjustPoint;
    .locals 1

    const-string/jumbo v0, "pt"

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAdjPoint(Ljavax/xml/stream/XMLStreamReader;ZLjava/lang/String;)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    return-object p0
.end method

.method private quadBezTo(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/sl/draw/geom/QuadToCommand;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/QuadToCommand;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/Path;->addCommand(Lorg/apache/poi/sl/draw/geom/PathCommand;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePtPoint(Ljavax/xml/stream/XMLStreamReader;Z)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePtPoint(Ljavax/xml/stream/XMLStreamReader;Z)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->setPt1(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/QuadToCommand;->setPt2(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    return-void
.end method

.method private updateAhList(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ahPolar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ahXY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->addXY(Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->addPolar(Ljavax/xml/stream/XMLStreamReader;)V

    :goto_0
    return-void
.end method

.method private updateCxnList(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/sl/draw/geom/ConnectionSite;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/ConnectionSite;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addConnectionSite(Lorg/apache/poi/sl/draw/geom/ConnectionSiteIf;)V

    new-instance v1, Lorg/apache/poi/sl/draw/geom/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/sl/draw/geom/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAttributes(Ljavax/xml/stream/XMLStreamReader;Ljava/util/function/BiConsumer;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parsePosPoint(Ljavax/xml/stream/XMLStreamReader;)Lorg/apache/poi/sl/draw/geom/AdjustPoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/geom/ConnectionSite;->setPos(Lorg/apache/poi/sl/draw/geom/AdjustPointIf;)V

    return-void
.end method

.method private updateFile(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    sget-object p1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->SHAPE_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    return-void
.end method

.method private updateGuideList(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    iget-boolean v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->useAdjustValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/AdjustValue;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/geom/AdjustValue;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addAdjustGuide(Lorg/apache/poi/sl/draw/geom/AdjustValueIf;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-direct {v1}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addGeomGuide(Lorg/apache/poi/sl/draw/geom/GuideIf;)V

    :goto_0
    new-instance v0, Lorg/apache/poi/sl/draw/geom/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/sl/draw/geom/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAttributes(Ljavax/xml/stream/XMLStreamReader;Ljava/util/function/BiConsumer;)V

    invoke-static {p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->nextTag(Ljavax/xml/stream/XMLStreamReader;)I

    return-void
.end method

.method private updatePath(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "cubicBezTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "arcTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "lnTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "moveTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "quadBezTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->cubicBezTo(Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->closePath(Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->arcTo(Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->lineTo(Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->moveTo(Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->quadBezTo(Ljavax/xml/stream/XMLStreamReader;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5a2e9f95 -> :sswitch_5
        -0x3fac69d4 -> :sswitch_4
        0x32bf9d -> :sswitch_3
        0x58c386d -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x5f108848 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePathLst(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->path:Lorg/apache/poi/sl/draw/geom/Path;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->addPath(Lorg/apache/poi/sl/draw/geom/PathIf;)V

    new-instance v0, Lorg/apache/poi/sl/draw/geom/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/sl/draw/geom/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/sl/draw/geom/PresetParser;->parseAttributes(Ljavax/xml/stream/XMLStreamReader;Ljava/util/function/BiConsumer;)V

    sget-object p1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->PATH:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    return-void
.end method

.method private updateShape(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "gdLst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "avLst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "ahLst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "rect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "pathLst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_0

    :sswitch_5
    const-string v1, "cxnLst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean v3, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->useAdjustValue:Z

    sget-object p1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->GUIDE_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    goto :goto_1

    :pswitch_1
    iput-boolean v2, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->useAdjustValue:Z

    sget-object p1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->GUIDE_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->AH_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->addRectangle(Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_1

    :pswitch_4
    sget-object p1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->PATH_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    goto :goto_1

    :pswitch_5
    sget-object p1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->CXN_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5042098c -> :sswitch_5
        -0x2f2ce698 -> :sswitch_4
        0x3559e4 -> :sswitch_3
        0x5875a26 -> :sswitch_2
        0x58db758 -> :sswitch_1
        0x5da15b0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateShapeList(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->geom:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Duplicate definition of {}"

    invoke-interface {v0, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->geom:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->customGeometry:Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->SHAPE:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    return-void
.end method


# virtual methods
.method public getGeom()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/sl/draw/geom/CustomGeometry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->geom:Ljava/util/Map;

    return-object p0
.end method

.method public parse(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 2

    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/PresetParser;->endContext()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/PresetParser;->mode:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    iget-object v0, v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->handler:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;->update(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_0

    :cond_3
    return-void
.end method
