.class public final synthetic Lw0/r0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lw0/v0;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lw0/v0;Ljava/lang/String;I)V
    .registers 4

    .line 1
    iput p3, p0, Lw0/r0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/r0;->c:Lw0/v0;

    .line 4
    .line 5
    iput-object p2, p0, Lw0/r0;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Lw0/r0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_28

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/r0;->d:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lw0/r0;->c:Lw0/v0;

    .line 9
    .line 10
    iget-object v2, v1, Lw0/v0;->i:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lw0/v0;->h:Landroid/widget/Button;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v1, Lw0/v0;->g:Landroid/widget/Spinner;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1a
    iget-object v0, p0, Lw0/r0;->d:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lw0/r0;->c:Lw0/v0;

    .line 30
    .line 31
    iget-object v2, v1, Lw0/v0;->l:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {v1, v0}, Lw0/v0;->t(Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1a
    .end packed-switch
.end method
