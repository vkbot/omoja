.class public final synthetic Lorg/apache/commons/io/function/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/function/IOBooleanSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOBooleanSupplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/function/j;->a:Lorg/apache/commons/io/function/IOBooleanSupplier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/j;->a:Lorg/apache/commons/io/function/IOBooleanSupplier;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/io/function/IOBooleanSupplier;->o(Lorg/apache/commons/io/function/IOBooleanSupplier;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
