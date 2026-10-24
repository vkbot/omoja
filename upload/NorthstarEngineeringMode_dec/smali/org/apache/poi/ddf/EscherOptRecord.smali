.class public Lorg/apache/poi/ddf/EscherOptRecord;
.super Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String;

.field public static final RECORD_ID:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->OPT:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v1, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v1, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_ID:S

    iget-object v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->description:Ljava/lang/String;

    sput-object v0, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_DESCRIPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherOptRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;-><init>(Lorg/apache/poi/ddf/AbstractEscherOptRecord;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->copy()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherOptRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>(Lorg/apache/poi/ddf/EscherOptRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->copy()Lorg/apache/poi/ddf/EscherOptRecord;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->OPT:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getInstance()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setInstance(S)V

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getInstance()S

    move-result p0

    return p0
.end method

.method public getOptions()S
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getInstance()S

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getVersion()S

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result p0

    return p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->OPT:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()S
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherOptRecord;->setVersion(S)V

    invoke-super {p0}, Lorg/apache/poi/ddf/EscherRecord;->getVersion()S

    move-result p0

    return p0
.end method

.method public setVersion(S)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;->setVersion(S)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_DESCRIPTION:Ljava/lang/String;

    const-string v1, " can have only \'0x3\' version"

    invoke-static {p1, v0, v1}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
