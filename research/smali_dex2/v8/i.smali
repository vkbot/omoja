.class public final Lv8/i;
.super Lv8/b1;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv8/h;


# instance fields
.field public final f:Lv8/h1;


# direct methods
.method public constructor <init>(Lv8/h1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, La9/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv8/i;->f:Lv8/h1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lv8/d1;->i()Lv8/h1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lv8/h1;->o(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv8/i;->j(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method public final j(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lv8/i;->f:Lv8/h1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv8/d1;->i()Lv8/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lv8/h1;->k(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
