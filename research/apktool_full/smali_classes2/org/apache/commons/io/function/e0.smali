.class public final synthetic Lorg/apache/commons/io/function/e0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOSupplier;
.implements Lorg/apache/commons/io/function/IOBooleanSupplier;


# instance fields
.field public final synthetic b:Lorg/apache/commons/io/function/IOIterator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/function/e0;->b:Lorg/apache/commons/io/function/IOIterator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/e0;->b:Lorg/apache/commons/io/function/IOIterator;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOIterator;->next()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAsBoolean()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/e0;->b:Lorg/apache/commons/io/function/IOIterator;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/io/function/IOIterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
