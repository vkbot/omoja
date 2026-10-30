.class public final Lg9/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic b:Li9/a0;


# direct methods
.method public constructor <init>(Li9/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg9/h;->b:Li9/a0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lg9/g;

    .line 2
    .line 3
    iget-object v1, p0, Lg9/h;->b:Li9/a0;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lg9/g;-><init>(Li9/a0;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
