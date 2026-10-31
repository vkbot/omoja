.class public final synthetic Lkotlin/collections/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/internal/markers/KMappedMarker;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/markers/KMappedMarker;I)V
    .registers 3

    .line 1
    iput p2, p0, Lkotlin/collections/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/collections/a;->c:Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lkotlin/collections/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/collections/a;->c:Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 7
    .line 8
    check-cast v0, Lkotlin/collections/AbstractMap;

    .line 9
    .line 10
    check-cast p1, Ljava/util/Map$Entry;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lkotlin/collections/AbstractMap;->a(Lkotlin/collections/AbstractMap;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :pswitch_10
    iget-object v0, p0, Lkotlin/collections/a;->c:Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 18
    .line 19
    check-cast v0, Lkotlin/collections/AbstractCollection;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lkotlin/collections/AbstractCollection;->a(Lkotlin/collections/AbstractCollection;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
