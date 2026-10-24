.class public Lorg/apache/poi/ddf/EscherTertiaryOptRecord;
.super Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_ID:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    sput-short v0, Lorg/apache/poi/ddf/EscherTertiaryOptRecord;->RECORD_ID:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherTertiaryOptRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;-><init>(Lorg/apache/poi/ddf/AbstractEscherOptRecord;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTertiaryOptRecord;->copy()Lorg/apache/poi/ddf/EscherTertiaryOptRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/ddf/EscherRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTertiaryOptRecord;->copy()Lorg/apache/poi/ddf/EscherTertiaryOptRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/ddf/EscherTertiaryOptRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherTertiaryOptRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherTertiaryOptRecord;-><init>(Lorg/apache/poi/ddf/EscherTertiaryOptRecord;)V

    return-object v0
.end method

.method public getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    return-object p0
.end method
