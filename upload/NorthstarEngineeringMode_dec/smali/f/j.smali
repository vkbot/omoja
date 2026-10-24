.class public final synthetic Lf/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/android/settingslib/wifi/WifiTracker$e;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf/j;->c:I

    iput-object p1, p0, Lf/j;->r:Lcom/android/settingslib/wifi/WifiTracker$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lf/j;->c:I

    iget-object p0, p0, Lf/j;->r:Lcom/android/settingslib/wifi/WifiTracker$e;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$e;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WifiTracker$d;

    invoke-interface {v0}, Lcom/android/settingslib/wifi/WifiTracker$d;->e()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$e;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WifiTracker$d;

    invoke-interface {v0}, Lcom/android/settingslib/wifi/WifiTracker$d;->m()V

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
