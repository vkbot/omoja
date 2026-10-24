.class public Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/LbsDataSubRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LbsDropData"
.end annotation


# static fields
.field public static final STYLE_COMBO_DROPDOWN:I = 0x0

.field public static final STYLE_COMBO_EDIT_DROPDOWN:I = 0x1

.field public static final STYLE_COMBO_SIMPLE_DROPDOWN:I = 0x2


# instance fields
.field private _cLine:I

.field private _dxMin:I

.field private final _str:Ljava/lang/String;

.field private _unused:Ljava/lang/Byte;

.field private _wStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_dxMin:I

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_dxMin:I

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_dxMin:I

    .line 13
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$002(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    return p1
.end method

.method public static synthetic access$102(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    return p1
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_dxMin:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->copy()Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x6

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    if-eqz p0, :cond_0

    add-int/lit8 v1, v0, 0x7

    :cond_0
    return v1
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "wStyle"

    new-instance v1, Lorg/apache/poi/hssf/record/b2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/b2;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)V

    const-string v3, "cLine"

    new-instance v4, Lorg/apache/poi/hssf/record/c2;

    invoke-direct {v4, p0, v2}, Lorg/apache/poi/hssf/record/c2;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)V

    const-string v5, "dxMin"

    new-instance v6, Lorg/apache/poi/hssf/record/u1;

    const/4 v2, 0x2

    invoke-direct {v6, p0, v2}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v7, "str"

    new-instance v8, Lorg/apache/poi/hssf/record/b2;

    const/4 v2, 0x1

    invoke-direct {v8, p0, v2}, Lorg/apache/poi/hssf/record/b2;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)V

    const-string/jumbo v9, "unused"

    new-instance v10, Lorg/apache/poi/hssf/record/c2;

    invoke-direct {v10, p0, v2}, Lorg/apache/poi/hssf/record/c2;-><init>(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_dxMin:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    :cond_0
    return-void
.end method

.method public setNumLines(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
