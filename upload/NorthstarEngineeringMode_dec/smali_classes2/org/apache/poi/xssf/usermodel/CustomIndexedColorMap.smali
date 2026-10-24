.class public Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# instance fields
.field private final colorIndex:[[B


# direct methods
.method private constructor <init>([[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;->colorIndex:[[B

    return-void
.end method

.method public static fromColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;)Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;
    .locals 3

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;->isSetIndexedColors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;->getIndexedColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;->getRgbColorList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRgbColor;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRgbColor;->getRgb()[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;-><init>([[B)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getRGB(I)[B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;->colorIndex:[[B

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
