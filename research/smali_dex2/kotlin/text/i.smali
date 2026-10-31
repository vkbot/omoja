.class public final synthetic Lkotlin/text/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lkotlin/text/i;->b:I

    .line 5
    .line 6
    iput-object p1, p0, Lkotlin/text/i;->c:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlin/text/i;->d:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lkotlin/text/i;->b:I

    .line 8
    .line 9
    iget-object v1, p0, Lkotlin/text/i;->c:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget-object v2, p0, Lkotlin/text/i;->d:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    invoke-static {v0, v1, v2, p1}, Lkotlin/text/StringsKt___StringsKt;->l(ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
