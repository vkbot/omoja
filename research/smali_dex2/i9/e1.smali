.class public final Li9/e1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Li9/f1;


# direct methods
.method public synthetic constructor <init>(Li9/f1;I)V
    .registers 3

    .line 1
    iput p2, p0, Li9/e1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Li9/e1;->c:Li9/f1;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Li9/e1;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Li9/e1;->c:Li9/f1;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_38

    .line 7
    .line 8
    .line 9
    iget-object v0, v2, Li9/f1;->b:Li9/i0;

    .line 10
    .line 11
    if-eqz v0, :cond_12

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    invoke-static {v0}, Li9/d1;->c(Ljava/util/List;)[Lg9/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :pswitch_18
    iget-object v0, v2, Li9/f1;->b:Li9/i0;

    .line 26
    .line 27
    if-eqz v0, :cond_24

    .line 28
    .line 29
    iget-object v0, v0, Li9/i0;->a:Le9/b;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    new-array v2, v2, [Le9/b;

    .line 33
    .line 34
    aput-object v0, v2, v1

    .line 35
    .line 36
    goto :goto_26

    .line 37
    :cond_24
    sget-object v2, Li9/d1;->b:[Le9/b;

    .line 38
    .line 39
    :goto_26
    return-object v2

    .line 40
    :pswitch_27
    iget-object v0, v2, Li9/f1;->j:Lkotlin/Lazy;

    .line 41
    .line 42
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, [Lg9/e;

    .line 47
    .line 48
    invoke-static {v2, v0}, Li9/d1;->e(Lg9/e;[Lg9/e;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_27
        :pswitch_18
    .end packed-switch
.end method
