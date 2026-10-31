.class public interface abstract Lorg/apache/commons/io/function/IOBooleanSupplier;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method private synthetic lambda$asBooleanSupplier$0()Z
    .registers 2

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/function/Uncheck;->getAsBoolean(Lorg/apache/commons/io/function/IOBooleanSupplier;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic o(Lorg/apache/commons/io/function/IOBooleanSupplier;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/function/IOBooleanSupplier;->lambda$asBooleanSupplier$0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public asBooleanSupplier()Ljava/util/function/BooleanSupplier;
    .registers 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/j;-><init>(Lorg/apache/commons/io/function/IOBooleanSupplier;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract getAsBoolean()Z
.end method
