.class public final synthetic Lcom/android/car/ui/toolbar/-$$Lambda$MenuItem$L8uyPLsON8uHfaoUZrFMW0-X32Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/toolbar/MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItem$L8uyPLsON8uHfaoUZrFMW0-X32Y;->f$0:Lcom/android/car/ui/toolbar/MenuItem;

    return-void
.end method


# virtual methods
.method public final onRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItem$L8uyPLsON8uHfaoUZrFMW0-X32Y;->f$0:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/MenuItem;->lambda$new$0$MenuItem(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method
