.class public final Lorg/apache/poi/hssf/record/PaletteRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLORS:[I

.field public static final FIRST_COLOR_INDEX:S = 0x8s

.field public static final STANDARD_PALETTE_SIZE:B = 0x38t

.field public static final sid:S = 0x92s


# instance fields
.field private final _colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hssf/record/PaletteRecord$PColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hssf/record/PaletteRecord;->DEFAULT_COLORS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xffffff
        0xff0000
        0xff00
        0xff
        0xffff00
        0xff00ff
        0xffff
        0x800000
        0x8000
        0x80
        0x808000
        0x800080
        0x8080
        0xc0c0c0
        0x808080
        0x9999ff
        0x993366
        0xffffcc
        0xccffff
        0x660066
        0xff8080
        0x66cc
        0xccccff
        0x80
        0xff00ff
        0xffff00
        0xffff
        0x800080
        0x800000
        0x8080
        0xff
        0xccff
        0xccffff
        0xccffcc
        0xffff99
        0x99ccff
        0xff99cc
        0xcc99ff
        0xffcc99
        0x3366ff
        0x33cccc
        0x99cc00
        0xffcc00
        0xff9900
        0xff6600
        0x666699
        0x969696
        0x3366
        0x339966
        0x3300
        0x333300
        0x993300
        0x993366
        0x333399
        0x333333
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    sget-object p0, Lorg/apache/poi/hssf/record/PaletteRecord;->DEFAULT_COLORS:[I

    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lorg/apache/poi/hssf/record/s2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/s2;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lorg/apache/poi/hssf/record/t2;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/hssf/record/t2;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    .line 6
    iget-object p0, p1, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 7
    iget-object p0, p1, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/hssf/record/w0;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lorg/apache/poi/hssf/record/w0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/hssf/record/x0;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hssf/record/x0;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    .line 12
    new-instance v3, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/PaletteRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PaletteRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaletteRecord;->copy()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/PaletteRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/PaletteRecord;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaletteRecord;->copy()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaletteRecord;->copy()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object p0

    return-object p0
.end method

.method public getColor(I)[B
    .locals 1

    add-int/lit8 p1, p1, -0x8

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->getTriplet()[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/q1;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "colors"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaletteRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->PALETTE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x92

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColor(SBBB)V
    .locals 3

    add-int/lit8 p1, p1, -0x8

    if-ltz p1, :cond_2

    const/16 v0, 0x38

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(III)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord;->_colors:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
