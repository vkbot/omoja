.class public final synthetic Lf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lf/d;


# direct methods
.method public synthetic constructor <init>(Lf/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf/b;->c:I

    iput-object p1, p0, Lf/b;->r:Lf/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lf/b;->c:I

    iget-object p0, p0, Lf/b;->r:Lf/d;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf/d;->n1:Lf/d$a;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/AccessPointPreference;->e()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lf/d;->n1:Lf/d$a;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointPreference;->c1:Lf/c;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
