.class final enum Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/geom/PresetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

.field public static final enum AH_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

.field public static final enum CXN_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

.field public static final enum FILE:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

.field public static final enum GUIDE_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

.field public static final enum PATH:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

.field public static final enum PATH_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

.field public static final enum SHAPE:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

.field public static final enum SHAPE_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;


# instance fields
.field final handler:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/sl/draw/geom/d;-><init>(I)V

    const-string v3, "FILE"

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;-><init>(Ljava/lang/String;ILorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;)V

    sput-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->FILE:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v3, Lorg/apache/poi/sl/draw/geom/e;

    invoke-direct {v3, v2}, Lorg/apache/poi/sl/draw/geom/e;-><init>(I)V

    const-string v4, "SHAPE_LST"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;-><init>(Ljava/lang/String;ILorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;)V

    sput-object v1, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->SHAPE_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v3, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v4, Lorg/apache/poi/sl/draw/geom/f;

    invoke-direct {v4, v2}, Lorg/apache/poi/sl/draw/geom/f;-><init>(I)V

    const-string v2, "SHAPE"

    const/4 v6, 0x2

    invoke-direct {v3, v2, v6, v4}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;-><init>(Ljava/lang/String;ILorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;)V

    sput-object v3, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->SHAPE:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v4, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v2, Lorg/apache/poi/sl/draw/geom/d;

    invoke-direct {v2, v5}, Lorg/apache/poi/sl/draw/geom/d;-><init>(I)V

    const-string v7, "GUIDE_LST"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v2}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;-><init>(Ljava/lang/String;ILorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;)V

    sput-object v4, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->GUIDE_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v7, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v2, Lorg/apache/poi/sl/draw/geom/e;

    invoke-direct {v2, v5}, Lorg/apache/poi/sl/draw/geom/e;-><init>(I)V

    const-string v8, "AH_LST"

    const/4 v9, 0x4

    invoke-direct {v7, v8, v9, v2}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;-><init>(Ljava/lang/String;ILorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;)V

    sput-object v7, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->AH_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v8, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v2, Lorg/apache/poi/sl/draw/geom/f;

    invoke-direct {v2, v5}, Lorg/apache/poi/sl/draw/geom/f;-><init>(I)V

    const-string v5, "CXN_LST"

    const/4 v9, 0x5

    invoke-direct {v8, v5, v9, v2}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;-><init>(Ljava/lang/String;ILorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;)V

    sput-object v8, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->CXN_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v9, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v2, Lorg/apache/poi/sl/draw/geom/d;

    invoke-direct {v2, v6}, Lorg/apache/poi/sl/draw/geom/d;-><init>(I)V

    const-string v5, "PATH_LST"

    const/4 v10, 0x6

    invoke-direct {v9, v5, v10, v2}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;-><init>(Ljava/lang/String;ILorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;)V

    sput-object v9, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->PATH_LST:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v10, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    new-instance v2, Lorg/apache/poi/sl/draw/geom/e;

    invoke-direct {v2, v6}, Lorg/apache/poi/sl/draw/geom/e;-><init>(I)V

    const-string v5, "PATH"

    const/4 v6, 0x7

    invoke-direct {v10, v5, v6, v2}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;-><init>(Ljava/lang/String;ILorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;)V

    sput-object v10, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->PATH:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->$VALUES:[Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->handler:Lorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->lambda$static$0(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->lambda$static$7(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->lambda$static$3(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic d(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->lambda$static$2(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic e(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->lambda$static$4(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic f(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->lambda$static$6(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic g(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->lambda$static$1(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static synthetic h(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->lambda$static$5(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->access$700(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private static synthetic lambda$static$1(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->access$600(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private static synthetic lambda$static$2(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->access$500(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private static synthetic lambda$static$3(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->access$400(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private static synthetic lambda$static$4(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->access$300(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private static synthetic lambda$static$5(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->access$200(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private static synthetic lambda$static$6(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->access$100(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method private static synthetic lambda$static$7(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/sl/draw/geom/PresetParser;->access$000(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->$VALUES:[Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;

    return-object v0
.end method
