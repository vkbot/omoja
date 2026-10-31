.class public final Ly8/p;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Ly8/q;

.field public c:Ly8/g;

.field public d:Ly8/s;

.field public e:Lv8/z0;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ly8/q;

.field public h:I


# direct methods
.method public constructor <init>(Ly8/q;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly8/p;->g:Ly8/q;

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
    iput-object p1, p0, Ly8/p;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Ly8/p;->h:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Ly8/p;->h:I

    .line 9
    .line 10
    iget-object p1, p0, Ly8/p;->g:Ly8/q;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, p0}, Ly8/q;->h(Ly8/q;Ly8/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
