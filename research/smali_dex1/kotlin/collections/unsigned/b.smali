.class public final synthetic Lkotlin/collections/unsigned/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lkotlin/collections/unsigned/b;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/collections/unsigned/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/collections/unsigned/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/collections/unsigned/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [S

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->b([S)Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_e
    iget-object v0, p0, Lkotlin/collections/unsigned/b;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->c([B)Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :pswitch_17
    iget-object v0, p0, Lkotlin/collections/unsigned/b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, [J

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->d([J)Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_20
    iget-object v0, p0, Lkotlin/collections/unsigned/b;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, [I

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->a([I)Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method
