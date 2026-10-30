.class public final synthetic Lt0/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/o0;


# direct methods
.method public synthetic constructor <init>(Lw0/o0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt0/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lt0/a;->b:Lw0/o0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget p1, p0, Lt0/a;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lt0/a;->b:Lw0/o0;

    .line 7
    .line 8
    iput-boolean p2, p1, Lw0/o0;->c:Z

    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    iget-object p1, p0, Lt0/a;->b:Lw0/o0;

    .line 12
    .line 13
    iput-boolean p2, p1, Lw0/o0;->c:Z

    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
