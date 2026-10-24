.class public final Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl$a;
.super Lt0/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl$a;->b:Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;

    invoke-direct {p0}, Lt0/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl$a;->b:Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/AccessPointListFragment;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->e:Landroid/content/Context;

    const v0, 0x7f1200cb

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lk2/d;->a(Landroid/content/Context;II)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestAvailableListImpl;->i:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/AccessPointPreference;->c()V

    :cond_0
    return-void
.end method
