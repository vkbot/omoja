.class public final Ly8/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ly8/t;
.implements Ly8/f;


# instance fields
.field public final synthetic b:Ly8/m;


# direct methods
.method public constructor <init>(Ly8/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly8/n;->b:Ly8/m;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final collect(Ly8/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ly8/n;->b:Ly8/m;

    .line 2
    .line 3
    check-cast v0, Ly8/v;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ly8/v;->collect(Ly8/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ly8/n;->b:Ly8/m;

    .line 2
    .line 3
    check-cast v0, Ly8/v;

    .line 4
    .line 5
    invoke-virtual {v0}, Ly8/v;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
