.class public Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/UncheckedBufferedReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/UncheckedBufferedReader;",
        "Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;)Lorg/apache/commons/io/input/UncheckedBufferedReader;
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;->lambda$get$0()Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$get$0()Lorg/apache/commons/io/input/UncheckedBufferedReader;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;Lorg/apache/commons/io/input/UncheckedBufferedReader$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;->get()Lorg/apache/commons/io/input/UncheckedBufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/UncheckedBufferedReader;
    .registers 3

    .line 1
    new-instance v0, Landroidx/fragment/app/h;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/apache/commons/io/input/UncheckedBufferedReader;

    .line 13
    .line 14
    return-object v0
.end method
