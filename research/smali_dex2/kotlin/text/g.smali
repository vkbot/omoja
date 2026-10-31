.class public final synthetic Lkotlin/text/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .registers 4

    .line 1
    iput p3, p0, Lkotlin/text/g;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/text/g;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Lkotlin/text/g;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lkotlin/text/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/text/g;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/CharSequence;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iget-boolean v1, p0, Lkotlin/text/g;->c:Z

    .line 19
    .line 20
    invoke-static {v0, v1, p1, p2}, Lkotlin/text/StringsKt__StringsKt;->d(Ljava/util/List;ZLjava/lang/CharSequence;I)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :pswitch_18
    iget-object v0, p0, Lkotlin/text/g;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, [C

    .line 28
    .line 29
    check-cast p1, Ljava/lang/CharSequence;

    .line 30
    .line 31
    check-cast p2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-boolean v1, p0, Lkotlin/text/g;->c:Z

    .line 38
    .line 39
    invoke-static {v0, v1, p1, p2}, Lkotlin/text/StringsKt__StringsKt;->f([CZLjava/lang/CharSequence;I)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_18
    .end packed-switch
.end method
