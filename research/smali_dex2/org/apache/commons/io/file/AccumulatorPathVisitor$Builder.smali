.class public Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;
.super Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/AccumulatorPathVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder<",
        "Lorg/apache/commons/io/file/AccumulatorPathVisitor;",
        "Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;->get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/AccumulatorPathVisitor$Builder;Lorg/apache/commons/io/file/AccumulatorPathVisitor$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
