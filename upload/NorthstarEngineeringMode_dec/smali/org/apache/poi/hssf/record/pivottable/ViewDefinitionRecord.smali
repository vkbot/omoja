.class public final Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xb0s


# instance fields
.field private cCol:I

.field private cDim:I

.field private cDimCol:I

.field private cDimData:I

.field private cDimPg:I

.field private cDimRw:I

.field private cRw:I

.field private colFirst:I

.field private colFirstData:I

.field private colLast:I

.field private dataField:Ljava/lang/String;

.field private grbit:I

.field private iCache:I

.field private ipos4Data:I

.field private itblAutoFmt:I

.field private name:Ljava/lang/String;

.field private reserved:I

.field private rwFirst:I

.field private rwFirstData:I

.field private rwFirstHead:I

.field private rwLast:I

.field private sxaxis4Data:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 25
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirst:I

    .line 26
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwLast:I

    .line 27
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirst:I

    .line 28
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colLast:I

    .line 29
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstHead:I

    .line 30
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstData:I

    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirstData:I

    .line 32
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->iCache:I

    .line 33
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->reserved:I

    .line 34
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->sxaxis4Data:I

    .line 35
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->ipos4Data:I

    .line 36
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDim:I

    .line 37
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimRw:I

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimCol:I

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimPg:I

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimData:I

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cRw:I

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cCol:I

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->grbit:I

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->itblAutoFmt:I

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 47
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    .line 48
    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirst:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirst:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwLast:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwLast:I

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirst:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirst:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colLast:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colLast:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstHead:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstHead:I

    .line 7
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstData:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstData:I

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirstData:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirstData:I

    .line 9
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->iCache:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->iCache:I

    .line 10
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->reserved:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->reserved:I

    .line 11
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->sxaxis4Data:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->sxaxis4Data:I

    .line 12
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->ipos4Data:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->ipos4Data:I

    .line 13
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDim:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDim:I

    .line 14
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimRw:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimRw:I

    .line 15
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimCol:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimCol:I

    .line 16
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimPg:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimPg:I

    .line 17
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimData:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimData:I

    .line 18
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cRw:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cRw:I

    .line 19
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cCol:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cCol:I

    .line 20
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->grbit:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->grbit:I

    .line 21
    iget v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->itblAutoFmt:I

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->itblAutoFmt:I

    .line 22
    iget-object v0, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    .line 23
    iget-object p1, p1, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$12()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$19()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$21()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$11()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$8()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirst:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwLast:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$10()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->ipos4Data:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$11()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDim:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$12()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimRw:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$13()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimCol:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$14()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimPg:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$15()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimData:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$16()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cRw:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$17()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cCol:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$18()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->grbit:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$19()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->itblAutoFmt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirst:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$20()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$21()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colLast:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstHead:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstData:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirstData:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->iCache:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$8()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->reserved:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$9()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->sxaxis4Data:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$14()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$10()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$18()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$13()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$16()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$15()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$20()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->lambda$getGenericProperties$17()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

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

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/k;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string/jumbo v3, "rwFirst"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/m;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/pivottable/m;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string/jumbo v4, "rwLast"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/m;

    const/4 v4, 0x4

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/pivottable/m;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v5, "colFirst"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/k;

    const/4 v5, 0x5

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/hssf/record/pivottable/k;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v6, "colLast"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/l;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/hssf/record/pivottable/l;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string/jumbo v6, "rwFirstHead"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/m;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/hssf/record/pivottable/m;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string/jumbo v5, "rwFirstData"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/k;

    const/4 v5, 0x6

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/hssf/record/pivottable/k;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v6, "colFirstData"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/l;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/hssf/record/pivottable/l;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v6, "iCache"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/m;

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/hssf/record/pivottable/m;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string/jumbo v5, "reserved"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/k;

    const/4 v5, 0x7

    invoke-direct {v1, p0, v5}, Lorg/apache/poi/hssf/record/pivottable/k;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string/jumbo v5, "sxaxis4Data"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/l;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/l;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v5, "ipos4Data"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/m;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/m;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v2, "cDim"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/k;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v5, "cDimRw"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/l;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/l;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v5, "cDimCol"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/m;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/m;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v2, "cDimPg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/k;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v5, "cDimData"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/l;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/l;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v5, "cRw"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/m;

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/pivottable/m;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v2, "cCol"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/k;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/pivottable/k;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v2, "grbit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/l;

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/hssf/record/pivottable/l;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v2, "itblAutoFmt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/k;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/pivottable/k;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/hssf/record/pivottable/l;

    invoke-direct {v1, p0, v4}, Lorg/apache/poi/hssf/record/pivottable/l;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V

    const-string p0, "dataField"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->VIEW_DEFINITION:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xb0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirst:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwLast:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirst:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colLast:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstHead:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstData:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirstData:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->iCache:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->sxaxis4Data:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->ipos4Data:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDim:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimRw:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimPg:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimData:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cRw:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->grbit:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->itblAutoFmt:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeStringFlagAndData(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeStringFlagAndData(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    return-void
.end method
