.class public final Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/PageBreakRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Break"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# instance fields
.field private main:I

.field private subFrom:I

.field private subTo:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    iput p2, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    iput p3, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    iput v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    iput v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    .line 4
    iget p1, p1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    iput p1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    return p0
.end method

.method public static synthetic access$002(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    return p1
.end method

.method public static synthetic access$102(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    return p1
.end method

.method public static synthetic access$202(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    return p1
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

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

    const-string v0, "main"

    new-instance v1, Lorg/apache/poi/hssf/record/u1;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v2, "subFrom"

    new-instance v3, Lorg/apache/poi/hssf/record/q1;

    const/16 v4, 0xb

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo v4, "subTo"

    new-instance v5, Lorg/apache/poi/hssf/record/m2;

    const/4 v6, 0x6

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMain()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    return p0
.end method

.method public getSubFrom()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    return p0
.end method

.method public getSubTo()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
