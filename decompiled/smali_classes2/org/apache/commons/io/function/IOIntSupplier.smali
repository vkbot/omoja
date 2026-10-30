.class public interface abstract Lorg/apache/commons/io/function/IOIntSupplier;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Lorg/apache/commons/io/function/IOIntSupplier;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/function/IOIntSupplier;->lambda$asIntSupplier$0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private synthetic lambda$asIntSupplier$0()I
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->getAsInt(Lorg/apache/commons/io/function/IOIntSupplier;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method


# virtual methods
.method public asIntSupplier()Ljava/util/function/IntSupplier;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/t;-><init>(Lorg/apache/commons/io/function/IOIntSupplier;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract getAsInt()I
.end method
