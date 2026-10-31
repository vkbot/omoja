.class public final Li9/c;
.super Li9/n0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lg9/e;I)V
    .registers 3

    .line 1
    iput p2, p0, Li9/c;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Li9/n0;-><init>(Lg9/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Li9/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    const-string v0, "kotlin.collections.LinkedHashSet"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_8
    const-string v0, "kotlin.collections.HashSet"

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_b
    const-string v0, "kotlin.collections.ArrayList"

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_e
    const-string v0, "kotlin.Array"

    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
