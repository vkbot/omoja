.class public final synthetic Le0/f2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Le0/g2;


# direct methods
.method public synthetic constructor <init>(Le0/g2;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/f2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/f2;->c:Le0/g2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget v0, p0, Le0/f2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le0/f2;->c:Le0/g2;

    .line 7
    .line 8
    iget-object v0, v0, Le0/g2;->d:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_e
    iget-object v0, p0, Le0/f2;->c:Le0/g2;

    .line 16
    .line 17
    iget-object v0, v0, Le0/g2;->f:Landroid/widget/Button;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
