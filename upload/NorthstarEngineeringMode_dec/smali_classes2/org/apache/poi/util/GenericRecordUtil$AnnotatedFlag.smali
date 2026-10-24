.class public Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/GenericRecordUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotatedFlag"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final exactMatch:Z

.field private final masks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final value:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;[I[Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Number;",
            ">;[I[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->masks:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->value:Ljava/util/function/Supplier;

    iput-boolean p4, p0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->exactMatch:Z

    const/4 p1, 0x0

    :goto_0
    array-length p4, p2

    if-ge p1, p4, :cond_0

    iget-object p4, p0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->masks:Ljava/util/Map;

    aget v0, p2, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-object v1, p3, p1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;ILjava/util/Map$Entry;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->lambda$getDescription$0(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getDescription$0(ILjava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->match(II)Z

    move-result p0

    return p0
.end method

.method private match(II)Z
    .locals 2

    iget-boolean p0, p0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->exactMatch:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    if-ne p1, p2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    and-int p0, p1, p2

    if-ne p0, p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->value:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->masks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/util/l;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/util/l;-><init>(Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lg5/l;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lg5/l;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, " | "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/util/function/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->value:Ljava/util/function/Supplier;

    return-object p0
.end method
