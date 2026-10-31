.class public final synthetic Lorg/apache/commons/io/function/u;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/LongSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/function/IOLongSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOLongSupplier;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/function/u;->a:Lorg/apache/commons/io/function/IOLongSupplier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/function/u;->a:Lorg/apache/commons/io/function/IOLongSupplier;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/io/function/IOLongSupplier;->a(Lorg/apache/commons/io/function/IOLongSupplier;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
