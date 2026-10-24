.class public final Lorg/apache/poi/hssf/record/EndSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"


# static fields
.field private static final ENCODED_SIZE:I

.field public static final sid:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    and-int/lit16 p0, p2, 0xff

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Unexpected size ("

    const-string p3, ")"

    .line 5
    invoke-static {p1, p2, p3}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EndSubRecord;->copy()Lorg/apache/poi/hssf/record/EndSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/EndSubRecord;
    .locals 0

    .line 3
    new-instance p0, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EndSubRecord;->copy()Lorg/apache/poi/hssf/record/EndSubRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EndSubRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->END:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTerminating()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
