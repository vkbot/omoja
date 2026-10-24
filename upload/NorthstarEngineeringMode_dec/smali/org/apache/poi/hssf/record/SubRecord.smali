.class public abstract Lorg/apache/poi/hssf/record/SubRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;,
        Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static MAX_RECORD_LENGTH:I = 0xf4240


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/SubRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lorg/apache/poi/hssf/record/SubRecord;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;
    .locals 5

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    invoke-static {v0}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->forSID(I)Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object v2

    iget-object v3, v2, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->recordConstructor:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;

    sget-object v4, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->UNKNOWN:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    if-ne v2, v4, :cond_0

    move p1, v0

    :cond_0
    invoke-interface {v3, p0, v1, p1}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;->apply(Lorg/apache/poi/util/LittleEndianInput;II)Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hssf/record/SubRecord;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hssf/record/SubRecord;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord;->copy()Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/hssf/record/SubRecord;
.end method

.method public abstract getDataSize()I
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public abstract getGenericRecordType()Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
.end method

.method public isTerminating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method

.method public serialize()[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord;->getDataSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 2
    sget v1, Lorg/apache/commons/io/output/j;->c:I

    .line 3
    new-instance v1, Lorg/apache/commons/io/output/j$a;

    invoke-direct {v1}, Lorg/apache/commons/io/output/j$a;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Lj4/d;->j(I)V

    invoke-virtual {v1}, Lorg/apache/commons/io/output/j$a;->k()Lorg/apache/commons/io/output/j;

    move-result-object v1

    .line 5
    new-instance v2, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/SubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 6
    invoke-virtual {v1}, Lorg/apache/commons/io/output/j;->size()I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 7
    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "write size mismatch"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
