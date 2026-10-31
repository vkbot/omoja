.class public final Ly8/a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Lz8/i;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ln/p;

.field public e:I


# direct methods
.method public constructor <init>(Ln/p;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly8/a;->d:Ln/p;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Ly8/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Ly8/a;->e:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Ly8/a;->e:I

    .line 9
    .line 10
    iget-object p1, p0, Ly8/a;->d:Ln/p;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Ln/p;->collect(Ly8/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
