.class public final synthetic Lkotlin/comparisons/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Comparator;

.field public final synthetic d:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;I)V
    .locals 0

    .line 1
    iput p3, p0, Lkotlin/comparisons/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/comparisons/b;->c:Ljava/util/Comparator;

    .line 4
    .line 5
    iput-object p2, p0, Lkotlin/comparisons/b;->d:Ljava/util/Comparator;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/comparisons/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/comparisons/b;->c:Ljava/util/Comparator;

    .line 7
    .line 8
    iget-object v1, p0, Lkotlin/comparisons/b;->d:Ljava/util/Comparator;

    .line 9
    .line 10
    invoke-static {v0, v1, p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->d(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_0
    iget-object v0, p0, Lkotlin/comparisons/b;->c:Ljava/util/Comparator;

    .line 16
    .line 17
    iget-object v1, p0, Lkotlin/comparisons/b;->d:Ljava/util/Comparator;

    .line 18
    .line 19
    invoke-static {v0, v1, p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->b(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
