.class public Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;
.super Lorg/apache/commons/io/build/AbstractSupplier;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/filefilter/WildcardFileFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractSupplier<",
        "Lorg/apache/commons/io/filefilter/WildcardFileFilter;",
        "Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private ioCase:Lorg/apache/commons/io/IOCase;

.field private wildcards:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractSupplier;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;->ioCase:Lorg/apache/commons/io/IOCase;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$200(Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;)Lorg/apache/commons/io/IOCase;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;->ioCase:Lorg/apache/commons/io/IOCase;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;->wildcards:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;->get()Lorg/apache/commons/io/filefilter/WildcardFileFilter;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/filefilter/WildcardFileFilter;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;Lorg/apache/commons/io/filefilter/WildcardFileFilter$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setIoCase(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOCase;->value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;->ioCase:Lorg/apache/commons/io/IOCase;

    .line 8
    .line 9
    return-object p0
.end method

.method public setWildcards(Ljava/util/List;)Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->access$100(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    .line 7
    sget-object v0, Lorg/apache/commons/io/filefilter/IOFileFilter;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;->setWildcards([Ljava/lang/String;)Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public varargs setWildcards([Ljava/lang/String;)Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;
    .locals 0

    .line 19
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->access$100(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter$Builder;->wildcards:[Ljava/lang/String;

    return-object p0
.end method
