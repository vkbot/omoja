.class public Lorg/apache/commons/io/input/BOMInputStream$Builder;
.super Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/BOMInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/BOMInputStream;",
        "Lorg/apache/commons/io/input/BOMInputStream$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;


# instance fields
.field private byteOrderMarks:[Lorg/apache/commons/io/ByteOrderMark;

.field private include:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    .line 2
    .line 3
    filled-new-array {v0}, [Lorg/apache/commons/io/ByteOrderMark;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->byteOrderMarks:[Lorg/apache/commons/io/ByteOrderMark;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/input/BOMInputStream$Builder;)[Lorg/apache/commons/io/ByteOrderMark;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->byteOrderMarks:[Lorg/apache/commons/io/ByteOrderMark;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/io/input/BOMInputStream$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->include:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300()[Lorg/apache/commons/io/ByteOrderMark;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultByteOrderMark()Lorg/apache/commons/io/ByteOrderMark;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BOMInputStream$Builder;->get()Lorg/apache/commons/io/input/BOMInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/BOMInputStream;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Lorg/apache/commons/io/input/BOMInputStream$Builder;Lorg/apache/commons/io/input/BOMInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public bridge synthetic getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->getAfterRead()Lorg/apache/commons/io/function/IOIntConsumer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream$AbstractBuilder;->setAfterRead(Lorg/apache/commons/io/function/IOIntConsumer;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs setByteOrderMarks([Lorg/apache/commons/io/ByteOrderMark;)Lorg/apache/commons/io/input/BOMInputStream$Builder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, [Lorg/apache/commons/io/ByteOrderMark;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, [Lorg/apache/commons/io/ByteOrderMark;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lorg/apache/commons/io/input/BOMInputStream$Builder;->DEFAULT:[Lorg/apache/commons/io/ByteOrderMark;

    .line 11
    .line 12
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->byteOrderMarks:[Lorg/apache/commons/io/ByteOrderMark;

    .line 13
    .line 14
    return-object p0
.end method

.method public setInclude(Z)Lorg/apache/commons/io/input/BOMInputStream$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/input/BOMInputStream$Builder;->include:Z

    .line 2
    .line 3
    return-object p0
.end method
