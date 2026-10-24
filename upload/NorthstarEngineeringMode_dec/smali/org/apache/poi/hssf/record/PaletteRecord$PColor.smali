.class final Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/PaletteRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PColor"
.end annotation


# static fields
.field public static final ENCODED_SIZE:S = 0x4s


# instance fields
.field private final _blue:I

.field private final _green:I

.field private final _red:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    iput p2, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    iput p3, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/PaletteRecord$PColor;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    .line 6
    iget p1, p1, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    iput p1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/PaletteRecord$PColor;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/PaletteRecord$PColor;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/PaletteRecord$PColor;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "red"

    new-instance v1, Lorg/apache/poi/hssf/record/n0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/n0;-><init>(ILjava/lang/Object;)V

    const-string v2, "green"

    new-instance v3, Lorg/apache/poi/hssf/record/o0;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v5, "blue"

    new-instance v6, Lorg/apache/poi/hssf/record/p0;

    invoke-direct {v6, p0, v4}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getTriplet()[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    iget v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    int-to-byte p0, p0

    const/4 v1, 0x2

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method
