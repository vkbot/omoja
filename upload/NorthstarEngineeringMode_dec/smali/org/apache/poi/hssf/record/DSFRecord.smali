.class public final Lorg/apache/poi/hssf/record/DSFRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final biff5BookStreamFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x161s


# instance fields
.field private _options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/DSFRecord;->biff5BookStreamFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/DSFRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget p1, p1, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    iput p1, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(I)V

    sget-object v1, Lorg/apache/poi/hssf/record/DSFRecord;->biff5BookStreamFlag:Lorg/apache/poi/util/BitField;

    .line 5
    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/DSFRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/DSFRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DSFRecord;->copy()Lorg/apache/poi/hssf/record/DSFRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/DSFRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/DSFRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DSFRecord;-><init>(Lorg/apache/poi/hssf/record/DSFRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DSFRecord;->copy()Lorg/apache/poi/hssf/record/DSFRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DSFRecord;->copy()Lorg/apache/poi/hssf/record/DSFRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/o0;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/o0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/p0;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/p0;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo p0, "options"

    const-string v2, "biff5BookStreamPresent"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DSFRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DSF:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x161

    return p0
.end method

.method public isBiff5BookStreamPresent()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/DSFRecord;->biff5BookStreamFlag:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/DSFRecord;->_options:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
