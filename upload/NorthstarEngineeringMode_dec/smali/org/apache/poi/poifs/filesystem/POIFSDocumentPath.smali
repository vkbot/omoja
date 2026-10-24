.class public Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final components:[Ljava/lang/String;

.field private hashcode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;[Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array v1, v0, [Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    :goto_0
    if-nez p2, :cond_1

    new-array p2, v0, [Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Lh4/g;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lh4/g;-><init>(I)V

    goto :goto_1

    :cond_2
    new-instance p1, Lf/g;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lf/g;-><init>(I)V

    .line 6
    :goto_1
    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/poifs/filesystem/b;

    .line 8
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    return-void

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "components cannot contain null or empty strings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->lambda$new$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->lambda$new$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$new$1(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    check-cast p1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getComponent(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    :goto_0
    return-object p0
.end method

.method public getParent()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>([Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashcode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashcode:I

    :cond_0
    return v0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
