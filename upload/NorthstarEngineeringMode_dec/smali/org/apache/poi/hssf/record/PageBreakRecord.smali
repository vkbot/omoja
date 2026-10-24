.class public abstract Lorg/apache/poi/hssf/record/PageBreakRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field private final _breakMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/record/PageBreakRecord$Break;",
            ">;"
        }
    .end annotation
.end field

.field private final _breaks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hssf/record/PageBreakRecord$Break;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/hssf/record/PageBreakRecord;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/PageBreakRecord;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    .line 7
    iget-object p1, p1, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->initMap()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    add-int/lit8 v2, v1, 0x2

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    .line 14
    new-instance v3, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->initMap()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/PageBreakRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->lambda$initMap$0(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)V

    return-void
.end method

.method private initMap()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/poi/hssf/record/n2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/n2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$initMap$0(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->access$000(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    return-void
.end method


# virtual methods
.method public addBreak(III)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;-><init>(III)V

    iget-object p1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->access$002(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;I)I

    invoke-static {v1, p2}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->access$102(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;I)I

    invoke-static {v1, p3}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->access$202(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;I)I

    :goto_0
    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->copy()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/hssf/record/PageBreakRecord;
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->copy()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->copy()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getBreak(I)Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    return-object p0
.end method

.method public final getBreaks()[I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_0
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-static {v3}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->access$000(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getBreaksIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/PageBreakRecord$Break;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final getBreaksSpliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/hssf/record/PageBreakRecord$Break;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x2

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

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/u1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/q1;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "numBreaks"

    const-string v2, "breaks"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumBreaks()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final removeBreak(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    return-void
.end method
