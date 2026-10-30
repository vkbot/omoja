.class public interface abstract Lorg/apache/commons/io/function/IOLongSupplier;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Lorg/apache/commons/io/function/IOLongSupplier;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/function/IOLongSupplier;->lambda$asSupplier$0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private synthetic lambda$asSupplier$0()J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->getAsLong(Lorg/apache/commons/io/function/IOLongSupplier;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method


# virtual methods
.method public asSupplier()Ljava/util/function/LongSupplier;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/u;-><init>(Lorg/apache/commons/io/function/IOLongSupplier;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract getAsLong()J
.end method
