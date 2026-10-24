.class public final Lorg/apache/poi/openxml4j/opc/PackagePartCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x22e72f7e31cd51bdL


# instance fields
.field private final packagePartLookup:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation
.end field

.field private final registerPartNameStr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->registerPartNameStr:Ljava/util/Set;

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->packagePartLookup:Ljava/util/TreeMap;

    return-void
.end method

.method public static synthetic a(Le3/a;Le3/a;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->lambda$getUnusedPartIndex$1(Le3/a;Le3/a;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/regex/Pattern;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->lambda$getUnusedPartIndex$0(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getUnusedPartIndex$0(Ljava/util/regex/Pattern;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static lambda$getUnusedPartIndex$1(Le3/a;Le3/a;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Le3/a;->x:I

    sget-object v1, Le3/a;->f1:Le3/a$e;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1, v1}, Le3/a;->f(IILe3/a;Le3/a$a;)V

    return-void
.end method


# virtual methods
.method public containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->packagePartLookup:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->packagePartLookup:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    :goto_0
    return-object p0
.end method

.method public getUnusedPartIndex(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "([0-9]+)"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/openxml4j/opc/b;

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/opc/b;-><init>(Ljava/util/regex/Pattern;)V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->packagePartLookup:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/openxml4j/opc/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/openxml4j/opc/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/apache/poi/openxml4j/opc/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/openxml4j/opc/e;-><init>(I)V

    invoke-interface {p0, p1, v0, v1}, Ljava/util/stream/IntStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le3/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Le3/a;->b(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string p1, "name template must not be null and contain an index char (#)"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?=[/])"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->registerPartNameStr:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p1, "You can\'t add a part with a part name derived from another part ! [M1.11]"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->registerPartNameStr:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->packagePartLookup:Ljava/util/TreeMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object p0
.end method

.method public remove(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->packagePartLookup:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->registerPartNameStr:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->packagePartLookup:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result p0

    return p0
.end method

.method public sortedValues()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->packagePartLookup:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
