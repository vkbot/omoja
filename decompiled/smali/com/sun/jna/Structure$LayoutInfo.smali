.class Lcom/sun/jna/Structure$LayoutInfo;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Structure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutInfo"
.end annotation


# instance fields
.field private alignType:I

.field private alignment:I

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/jna/Structure$StructField;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private typeMapper:Lcom/sun/jna/TypeMapper;

.field private variable:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sun/jna/Structure$LayoutInfo;->size:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignment:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/sun/jna/Structure$LayoutInfo;->fields:Ljava/util/Map;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignType:I

    .line 23
    .line 24
    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/jna/Structure$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sun/jna/Structure$LayoutInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/sun/jna/Structure$LayoutInfo;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->variable:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/sun/jna/Structure$LayoutInfo;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->variable:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/sun/jna/Structure$LayoutInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->size:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/sun/jna/Structure$LayoutInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->size:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/sun/jna/Structure$LayoutInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignType:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/sun/jna/Structure$LayoutInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignType:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/sun/jna/Structure$LayoutInfo;)Lcom/sun/jna/TypeMapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->typeMapper:Lcom/sun/jna/TypeMapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$502(Lcom/sun/jna/Structure$LayoutInfo;Lcom/sun/jna/TypeMapper;)Lcom/sun/jna/TypeMapper;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->typeMapper:Lcom/sun/jna/TypeMapper;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$600(Lcom/sun/jna/Structure$LayoutInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignment:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$602(Lcom/sun/jna/Structure$LayoutInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/sun/jna/Structure$LayoutInfo;->alignment:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$700(Lcom/sun/jna/Structure$LayoutInfo;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/jna/Structure$LayoutInfo;->fields:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method
