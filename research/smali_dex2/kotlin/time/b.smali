.class public final synthetic Lkotlin/time/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lkotlin/time/b;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lkotlin/time/b;->b:I

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Character;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    packed-switch v0, :pswitch_data_2e

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/time/InstantKt;->d(C)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :pswitch_14
    invoke-static {p1}, Lkotlin/time/InstantKt;->f(C)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_f

    .line 26
    :pswitch_19
    invoke-static {p1}, Lkotlin/time/InstantKt;->a(C)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_f

    .line 31
    :pswitch_1e
    invoke-static {p1}, Lkotlin/time/InstantKt;->c(C)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_f

    .line 36
    :pswitch_23
    invoke-static {p1}, Lkotlin/time/InstantKt;->e(C)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    goto :goto_f

    .line 41
    :pswitch_28
    invoke-static {p1}, Lkotlin/time/InstantKt;->b(C)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_f

    .line 46
    nop

    .line 47
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method
