.class public final synthetic Li7/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/woha/atir/RadarActivity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/woha/atir/RadarActivity;Ljava/lang/String;I)V
    .registers 4

    .line 1
    iput p3, p0, Li7/p;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Li7/p;->c:Lcom/woha/atir/RadarActivity;

    .line 4
    .line 5
    iput-object p2, p0, Li7/p;->d:Ljava/lang/String;

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
    iget v0, p0, Li7/p;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_30

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li7/p;->c:Lcom/woha/atir/RadarActivity;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/woha/atir/RadarActivity;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v1, :cond_16

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/woha/atir/RadarActivity;->c:Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object v1, p0, Li7/p;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_16
    return-void

    .line 24
    :pswitch_17
    iget-object v0, p0, Li7/p;->c:Lcom/woha/atir/RadarActivity;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/woha/atir/RadarActivity;->d:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v0, :cond_22

    .line 29
    .line 30
    iget-object v1, p0, Li7/p;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_22
    return-void

    .line 36
    :pswitch_23
    iget-object v0, p0, Li7/p;->c:Lcom/woha/atir/RadarActivity;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/woha/atir/RadarActivity;->e:Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v0, :cond_2e

    .line 41
    .line 42
    iget-object v1, p0, Li7/p;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_23
        :pswitch_17
    .end packed-switch
.end method
