.class public final synthetic Landroidx/navigation/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/navigation/d;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroidx/navigation/d;->c:I

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/navigation/d;->d:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lf1/e;I)V
    .registers 4

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Landroidx/navigation/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/d;->d:Ljava/lang/Object;

    iput p2, p0, Landroidx/navigation/d;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/navigation/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/navigation/d;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/navigation/d;->d:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_2e

    .line 8
    .line 9
    .line 10
    check-cast v2, Lf1/e;

    .line 11
    .line 12
    sget p1, Lf1/e;->q:I

    .line 13
    .line 14
    const/16 p1, 0x14

    .line 15
    .line 16
    new-array p1, p1, [B

    .line 17
    .line 18
    fill-array-data p1, :array_34

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_42

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0, p1}, Lf1/e;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_27
    check-cast v2, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-static {v1, v2, p1}, Landroidx/navigation/Navigation;->b(ILandroid/os/Bundle;Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_27
    .end packed-switch

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_34
    .array-data 1
        -0x17t
        -0x63t
        0x1ft
        0x0t
        -0x26t
        0x59t
        0x17t
        -0x2ft
        -0x7t
        -0x6ct
        0x2t
        0x32t
        -0x26t
        0x44t
        0x0t
        -0x2ft
        -0x19t
        -0x62t
        0x12t
        0x8t
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_42
    .array-data 1
        -0x76t
        -0xft
        0x76t
        0x6dt
        -0x45t
        0x2dt
        0x72t
        -0x72t
    .end array-data
.end method
