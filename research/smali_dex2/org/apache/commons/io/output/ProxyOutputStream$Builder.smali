.class public Lorg/apache/commons/io/output/ProxyOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/ProxyOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/ProxyOutputStream;",
        "Lorg/apache/commons/io/output/ProxyOutputStream$Builder;",
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


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/io/output/ProxyOutputStream$Builder;->get()Lorg/apache/commons/io/output/ProxyOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/ProxyOutputStream;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/ProxyOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Lorg/apache/commons/io/output/ProxyOutputStream$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
