.class public final Lorg/apache/poi/hssf/record/UseSelFSRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x160s

.field private static final useNaturalLanguageFormulasFlag:Lorg/apache/poi/util/BitField;


# instance fields
.field private _options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->useNaturalLanguageFormulasFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/UseSelFSRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget p1, p1, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    iput p1, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(I)V

    sget-object v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->useNaturalLanguageFormulasFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    .line 6
    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/UseSelFSRecord;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;->copy()Lorg/apache/poi/hssf/record/UseSelFSRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;->copy()Lorg/apache/poi/hssf/record/UseSelFSRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;->copy()Lorg/apache/poi/hssf/record/UseSelFSRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/UseSelFSRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;-><init>(Lorg/apache/poi/hssf/record/UseSelFSRecord;)V

    return-object v0
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

    new-instance v0, Lorg/apache/poi/hssf/record/u1;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const/4 p0, 0x1

    new-array p0, p0, [Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/hssf/record/UseSelFSRecord;->useNaturalLanguageFormulasFlag:Lorg/apache/poi/util/BitField;

    aput-object v2, p0, v1

    const-string v1, "USE_NATURAL_LANGUAGE_FORMULAS_FLAG"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string/jumbo v0, "options"

    invoke-static {v0, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->USE_SEL_FS:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x160

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;->_options:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
