.class public Lorg/apache/poi/ddf/DefaultEscherRecordFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ddf/EscherRecordFactory;


# static fields
.field private static final IS_CONTAINER:Lorg/apache/poi/util/BitField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->IS_CONTAINER:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->getConstructor(SS)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    return-object p0
.end method

.method public getConstructor(SS)Ljava/util/function/Supplier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS)",
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/poi/ddf/EscherRecordTypes;->forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->UNKNOWN:Lorg/apache/poi/ddf/EscherRecordTypes;

    const/4 v1, 0x7

    if-ne p0, v0, :cond_0

    sget-object v2, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->IS_CONTAINER:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, p1}, Lorg/apache/poi/util/BitField;->isAllSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/h;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    return-object p0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->constructor:Ljava/util/function/Supplier;

    if-eqz p1, :cond_1

    if-eq p0, v0, :cond_1

    return-object p1

    :cond_1
    sget-short p0, Lorg/apache/poi/ddf/EscherBlipRecord;->RECORD_ID_START:S

    if-gt p0, p2, :cond_2

    sget-short p0, Lorg/apache/poi/ddf/EscherBlipRecord;->RECORD_ID_END:S

    if-gt p2, p0, :cond_2

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/i;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/g;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/g;-><init>(I)V

    return-object p0
.end method
