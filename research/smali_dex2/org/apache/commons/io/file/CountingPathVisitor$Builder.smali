.class public Lorg/apache/commons/io/file/CountingPathVisitor$Builder;
.super Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/CountingPathVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder<",
        "Lorg/apache/commons/io/file/CountingPathVisitor;",
        "Lorg/apache/commons/io/file/CountingPathVisitor$Builder;",
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

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor$Builder;->get()Lorg/apache/commons/io/file/CountingPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/file/CountingPathVisitor;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/CountingPathVisitor$AbstractBuilder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
