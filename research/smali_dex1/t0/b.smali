.class public final Lt0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lw0/o0;


# direct methods
.method public synthetic constructor <init>(Lw0/o0;I)V
    .registers 3

    .line 1
    iput p2, p0, Lt0/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lt0/b;->c:Lw0/o0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/widget/AdapterView;)V
    .registers 2

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/AdapterView;)V
    .registers 2

    .line 1
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    iget p2, p0, Lt0/b;->b:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lj0/e;

    .line 11
    .line 12
    iget-object p2, p0, Lt0/b;->c:Lw0/o0;

    .line 13
    .line 14
    iput-object p1, p2, Lw0/o0;->b:Lj0/e;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_10
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lj0/e;

    .line 22
    .line 23
    iget-object p2, p0, Lt0/b;->c:Lw0/o0;

    .line 24
    .line 25
    iput-object p1, p2, Lw0/o0;->b:Lj0/e;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    .line 1
    iget p1, p0, Lt0/b;->b:I

    .line 2
    .line 3
    return-void
.end method
